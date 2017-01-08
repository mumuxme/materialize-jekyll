# Fork from https://github.com/dafi/jekyll-toc-generator
#
# modify by mumu <github.com/mumuxme>


require 'nokogiri'

module Jekyll

  module TOCGenerator

    TOC_CONTAINER_HTML = '''
            <div id="toc-container" class="hide-on-med-and-down">
              <a href="#!" class="dropdown-button btn post-toc white teal-text" data-activates="dropdown-toc">
                <i class="mdi mdi-menu-up right"></i><span class="">Content</span>
              </a>
              <ul id="dropdown-toc" class="dropdown-content">%1</ul>
            </div>
    '''

    def toc_generate(html)
      # No Toc can be specified on every single page
      # For example the index page has no table of contents
      no_toc = @context.environments.first["page"]["noToc"] || false;

      return html if no_toc

      config = @context.registers[:site].config

      # Minimum number of items needed to show TOC, default 0 (0 means no minimum)
      min_items_to_show_toc = config["minItemsToShowToc"] || 0

      anchor_prefix = config["anchorPrefix"] || 'tocAnchor-'

      # default top_tag set to h2
      toc_top_tag = config["tocTopTag"] || 'h2'
      toc_top_tag = toc_top_tag.gsub(/h/, '').to_i

      toc_top_tag = 5 if toc_top_tag > 5

      toc_sec_tag = toc_top_tag + 0         # simply change original `1` to `0`
      toc_top_tag = "h#{toc_top_tag}"
      toc_sec_tag = "h#{toc_sec_tag}"


      # Text labels
      hide_label         = config["hideLabel"] || 'hide'
      # show_label       = config["showLabel"] || 'show' # unused
      show_toggle_button = config["showToggleButton"]

      toc_html = ''
      toc_level = 1
      toc_section = 1
      item_number = 1
      level_html = ''

      doc = Nokogiri::HTML(html)

      # Find H2 tag
      doc.css(toc_top_tag).each do |tag|
        # TODO This XPATH expression can greatly improved
        ct    = tag.xpath("count(following-sibling::#{toc_top_tag})")
        sects = tag.xpath("following-sibling::#{toc_sec_tag}[count(following-sibling::#{toc_top_tag})=#{ct}]")

        level_html    = '';
        inner_section = 0;

        sects.map.each do |sect|
          inner_section += 1;
          anchor_id = [
                        anchor_prefix, toc_level, '-', toc_section, '-',
                        inner_section
                      ].map(&:to_s).join ''

          sect['id'] = "#{anchor_id}"

          level_html += create_level_html(anchor_id,
                                          toc_level + 1,
                                          toc_section + inner_section,
                                          item_number.to_s + '.' + inner_section.to_s,
                                          sect.text,
                                          '')
        end

        level_html = '<ul>' + level_html + '</ul>' if level_html.length > 0

        anchor_id = anchor_prefix + toc_level.to_s + '-' + toc_section.to_s;
        tag['id'] = "#{anchor_id}"
        tag['class'] = 'section scrollspy'      # For materialize scrollspy
        toc_html += create_level_html(anchor_id,
                                      toc_level,
                                      toc_section,
                                      item_number,
                                      tag.text,
                                      level_html);

        toc_section += 1 + inner_section;
        item_number += 1;
      end

      # for convenience item_number starts from 1
      # so we decrement it to obtain the index count
      toc_index_count = item_number - 1

      return html unless toc_html.length > 0

      if min_items_to_show_toc <= toc_index_count
        toc_table = TOC_CONTAINER_HTML
        .gsub('%1', toc_html);

        doc.css('body').children.before(toc_table)
      end

      #doc.css('body').children.to_xhtml(indent:3, indent_text:" ")
      doc.css('body').children.to_html()
    end

    private

    def create_level_html(anchor_id, toc_level, toc_section, tocNumber, tocText, tocInner)
      link = '<a href="#%1" class="link-toc"><span class="toctext">%2</span></a>%3'
      .gsub('%1', anchor_id.to_s)
      .gsub('%2', tocText)
      .gsub('%3', tocInner ? tocInner : '');
      '<li class="toc_level-%1 toc_section-%2">%3</li>'
      .gsub('%1', toc_level.to_s)
      .gsub('%2', toc_section.to_s)
      .gsub('%3', link)
    end

  end

end

Liquid::Template.register_filter(Jekyll::TOCGenerator)
