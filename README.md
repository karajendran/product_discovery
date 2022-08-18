### What does this Block do for me?

(1) Understand quickly and simply the overall state of the business, and its trend.

(2) Track and assess the performance of GCP Retail Search, and its impact on business performance.

(3) Assess customer behavior with respect to products, Track product performance, and identify trending products to double down on

(4) Understand conversion and consumer behaviors vis-a-vis products.


### Block Structure

**Dashboards** - Due to the nature in which this data is displayed, this Block only exposes Dashboards as starting points for exploration, rather than using individual "Explore" pages. Start from a dashboard, then drill into any tile to start free-form exploration.


### Implementation Instructions / Customizations ##

* **Connection and Permission**

    - Prerequisites:

      1) Set up a connection in Looker to Google BigQuery Standard SQL according to our [Google BigQuery Configuration instruction] (https://docs.looker.com/setup-and-management/database-config/google-bigquery).

      2) RDM tables that are required as part of BQ connection:
        - retail.tbl_products
        - retail.tbl_events

      3) Create materialized views from above tables using [Queries]:
        - retail.mv_add_to_cart
        - retail.mv_detail_page_view
        - retail.mv_events_flat
        - retail.mv_sales
        - retail.mv_search
        - retail.session_stats

* **Installation**
    - **Marketplace** Installation via the Looker Marketplace will prompt configuration of the Looker BigQuery connection desired for use with this block.

* **Customization**
    - **Refinements** This block uses refinements for customization. For more information on using refinements to customize marketplace blocks, please see [this documentation] (https://docs.looker.com/data-modeling/marketplace/customize-blocks).

 * **[Optional] Change daily PDT trigger** - The default PDT trigger (00:00 UTC) is not selected for any particular timezone, so you may want to offset it so that it does not trigger during your peak hours.

 * **[Optional] Unhide Explores** - Explores are hidden by default.


### How do I optimize the performance of my database?

Check our [Looker Discourse article](https://discourse.looker.com/t/optimizing-redshift-performance-with-lookers-redshift-block/4110) for an overview of common performance issues, and suggestions to resolve them.


### Known Issues
