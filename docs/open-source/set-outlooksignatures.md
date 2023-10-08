---
layout: page
title: Set-OutlookSignatures Benefactor Circle
subtitle: Centrally manage and deploy Outlook text signatures and Out of Office auto reply messages
description: Set-OutlookSignatures Benefactor Circle. Centrally manage and deploy Outlook text signatures and Out of Office auto reply messages.
image:
  path: "/assets/images/set-outlooksignatures benefactor circle opengraph1200x630.png"
  height: 1200
  width: 630
  alt: "Set-OutlookSignatures Benefactor Circle"
redirect_from:
  - /opensource/set-outlooksignatures
  - /opensource/set-outlooksignatures/
  - /opensource/setoutlooksignatures
  - /opensource/setoutlooksignatures/
  - /opensource/benefactorcircle
  - /opensource/benefactorcircle/
  - /opensource/benefactor-circle
  - /opensource/benefactor-circle/
  - /open-source/setoutlooksignatures
  - /open-source/setoutlooksignatures/
  - /open-source/benefactorcircle
  - /open-source/benefactorcircle/
  - /open-source/benefactor-circle
  - /open-source/benefactor-circle/
  - /support-for-open-source/set-outlooksignatures-benefactor-circle
---
<!-- omit in toc -->
## <img src="/assets/images/set-outlooksignatures benefactor circle.png" style="height: 3em; object-fit:contain;" alt="Set-OutlookSignatures Benefactor Circle">
Set-OutlookSignatures is the gold standard in open-source software for central management and deployment of Outlook text signatures and Out of Office auto reply messages.

Download the free and open-source core version from <a href="https://github.com/GruberMarkus/set-outlooksignatures" target="_blank">GitHub</a> for free. **ExplicIT's Benefactor Circle add-on enhances the core version with a great set of additional features and commercial support.**

<a href="#trial-version"><button class="button is-link is-normal is-responsive is-hover">Request a trial version</button></a>
<a href="/contact"><button class="button is-link is-normal is-responsive is-hover">Contact the Set-OutlookSignatures Benefactor Circle team</button></a>

<!-- omit in toc -->
## Topics
- [Overview and features](#overview-and-features)
- [Why choose Set-OutlookSignatures?](#why-choose-set-outlooksignatures)
- [Demo video](#demo-video)
- [Benefactor Circle exclusive features](#benefactor-circle-exclusive-features)
- [Buying, extending and changing licences](#buying-extending-and-changing-licences)
  - [Price and general information](#price-and-general-information)
  - [Trial version](#trial-version)
  - [Order process for non-trial versions](#order-process-for-non-trial-versions)
  - [Extending or reducing a licence period](#extending-or-reducing-a-licence-period)
  - [Reducing the number of licenced mailboxes](#reducing-the-number-of-licenced-mailboxes)
  - [Moving licenced mailboxes between licence groups](#moving-licenced-mailboxes-between-licence-groups)
  - [Increasing the number of licenced mailboxes](#increasing-the-number-of-licenced-mailboxes)
- [How licence groups work](#how-licence-groups-work)
- [Licence and script version](#licence-and-script-version)
- [Data protection notice](#data-protection-notice)

## Overview and features
E-mail signatures and out of office auto reply messages are an integral part of corporate identity and corporate design, of successful concepts for media and internet presence, and of marketing campaigns.

Central administration and distribution ensures that CI/CD guidelines are met, guarantees the use of correct and up-to-date data, helps to comply with legal requirements, relieves staff and also opens up an additional marketing channel.

Many companies are not aware that business e-mails, similar to a web presence, are usually subject to an imprint obligation. The legal basis differs from country to country, and non-compliance can result in severe penalties.

**With Set-OutlookSignatures, signatures and Out of Office auto reply messages can be:**
- Generated from **templates in DOCX or HTML** file format  
- Customized with a **broad range of variables**, including **photos**, from Active Directory and other sources
  - Variables are available for the **currently logged-on user, this user's manager, each mailbox and each mailbox's manager**
  - Images in signatures can be **bound to the existence of certain variables** (useful for optional social network icons, for example)
- Applied to all **mailboxes (including shared mailboxes)**, specific **mailbox groups**, specific **e-mail addresses** or specific **user or mailbox properties**, for **every mailbox across all Outlook profiles (Outlook, New Outlook, Outlook Web)** (**automapped and additional mailboxes** are optional)  
- Created with different names from the same template (e.g., **one template can be used for multiple shared mailboxes**)
- Assigned **time ranges** within which they are valid  
- Set as **default signature** for new e-mails, or for replies and forwards (signatures only)  
- Set as **default OOF message** for internal or external recipients (OOF messages only)  
- Set in **Outlook Web** for the currently logged-in user, including mirroring signatures the the cloud as **roaming signatures**  
- Centrally managed only or **exist along user created signatures** (signatures only)  
- Copied to an **alternate path** for easy access on mobile devices not directly supported by this script (signatures only)
- **Write protected** (Outlook signatures only)

Set-OutlookSignatures can be **executed by users on clients and terminal servers, or on a central server without end user interaction**.  
On clients, it can run as part of the logon script, as scheduled task, or on user demand via a desktop icon, start menu entry, link or any other way of starting a program.  
Signatures and OOF messages can also be created and deployed centrally, without end user or client involvement.

**Sample templates** for signatures and OOF messages demonstrate all available features and are provided as .docx and .htm files.

**Simulation mode** allows content creators and admins to simulate the behavior of the script and to inspect the resulting signature files before going live.
  
The script is **designed to work in big and complex environments** (Exchange resource forest scenarios, across AD trusts, multi-level AD subdomains, many objects). It works **on premises, in hybrid and cloud-only environments**.

It is **multi-client capable** by using different template paths, configuration files and script parameters.

Set-OutlookSignatures requires **no installation on servers or clients**. You only need a standard SMB file share on a central system, and Office on your clients. 

A **documented implementation approach**, based on real life experiences implementing the script in multi-client environments with a five-digit number of mailboxes, contains proven procedures and recommendations for product managers, architects, operations managers, account managers and e-mail and client administrators.  
The implementation approach is **suited for service providers as well as for clients**, and covers several general overview topics, administration, support, training across the whole lifecycle from counselling to tests, pilot operation and rollout up to daily business.

## Why choose Set-OutlookSignatures?
- Runs only on your clients, no server side installation
- Mails are not routed through a cloud service, no SPF record change
- Software does not call home
- Works with on-prem, hybrid and cloud-only configurations
- Supports Exchange Online roaming signatures, New Outlook and Outlook Web
- Multi-customer capable
- Works with linked mailboxes in resource forest scenarios
- Users see signature when writing e-mails
- More cost-effective than other cloud based products, more features than other on-prem products

The features reserved for Benefactor Circle members are available at a very, very competitive price compared to other commercial solutions that work with on-prem, hybrid and cloud-only configurations.

There are also topics you need to be aware of:
- As there is no server component, signatures can not be automatically added to mails sent from mobile devices. This will change as soon as Microsoft's roaming signature feature will be accessible by an API, and mobile applications start using this feature.  
Set-OutlookSignatures Benefactor Circle already supports the roaming signature feature.
- There is no graphical user interface. This is on purpose:
  - End users typically never see the tool, only results.
  - Admins typically need around two hours for the basic setup, as the default parameters are very well chosen and documented.
  - Template maintainers need nothing but Word to create, modify and configure templates.

## Demo video
<div class="columns">
  <div class="column is-half">
    <figure class="image is-16by9">
      <iframe class="has-ratio" width="560" height="315" src="https://www.youtube-nocookie.com/embed/K9TrCjTdRUI" title="Set-OutlookSignatures Benefactor Circle demo video" frameborder="0" allow="accelerometer; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
    </figure>
  </div>
</div>

## Benefactor Circle exclusive features
<div class="tile is-ancestor">
  <div class="tile is-6 is-vertical is-parent">
    <div class="tile is-child box" style="border-style: solid; border-width:thin; border-color:transparent lightgrey lightgrey transparent;">
      <div class="content">
        <h3>Script features</h3>
        <ul>
          <li>Time-based campaigns by assigning time range constraints to templates</li>
          <li>Signatures for automapped and additional mailboxes</li>
          <li>Set current user Outlook Web signature (classic Outlook Web signature and roaming signature)</li>
          <li>Download and upload roaming signatures</li>
          <li>Set current user Out of Office messages</li>
          <li>Delete signatures created by the script, where the template no longer exists or is no longer assigned</li>
          <li>Delete user created signatures</li>
          <li>Additional signature path (when used outside of simulation mode)</li>
          <li>High resolution images from DOCX templates</li>
        </ul>
      </div>
    </div>
    <div class="tile is-child box" style="border-style: solid; border-width:thin; border-color:transparent lightgrey lightgrey transparent;">
      <div class="content">
        <h3>Sample code</h3>
        <ul>
          <li>SimulateAndDeploy.ps1: Deploy signatures without end user interaction, running Set-OutlookSignatures on a server</li>
          <li>Test-ADTrust.ps1: Detect why a client cannot query Active Directory information</li>
        </ul>
      </div>
    </div>
  </div>
  <div class="tile is-6 is-vertical is-parent">
    <div class="tile is-child box" style="border-style: solid; border-width:thin; border-color:transparent lightgrey lightgrey transparent;">
      <div class="content">
        <h3>Prioritized support and feature requests</h3>
        <ul>
          <li>Support and feature requests are handled by ExplicIT Consulting based on the licence contract.</li>
          <li>Issues are handled with priority via a Benefactor Circle exclusive email address and a callback option.</li>
          <li>Requests for new features are checked for feasability with priority.</li>
          <li>All release upgrades during the licence period are for free, no matter if it is a patch, feature or major release.</li>
        </ul>
      </div>
    </div>
    <div class="tile is-child box" style="border-style: solid; border-width:thin; border-color:transparent lightgrey lightgrey transparent;">
      <div class="content">
        <h3>Additional documentation: Implementation approach</h3>
        <ul>
          <li>The content is based on real-life experiences implementing the script in several multi-client environments, with a five-digit number of mailboxes.</li>
          <li>Proven procedures and recommendations for product managers, architects, operations managers, account managers, mail and client administrators. Suited for service providers as well as for clients.</li>
          <li>It covers several general overview topics, administration, support, training across the whole lifecycle from counselling to tests, pilot operation and rollout up to daily business.</li>
          <li>Available in English and German.</li>
        </ul>
      </div>
    </div>
  </div>
</div>

## Buying, extending and changing licences
### Price and general information
Licences are to be paid in advance and are valid for one year from the day the full payment is received. There is no automatic renewal.

The cost of the licence depends on the number of mailboxes:
- Each mailbox in your environment, for which an exclusive feature shall be used, needs a licence. This includes shared mailboxes (one licence per shared mailbox, no matter how may users access it).  
- The mailboxes do not need to be named, you just have to define at least one Active Directory or Graph group containing the mailboxes, and the maximum number of recursive members for each group.

The net price in EUR currently is **1.50 € per mailbox and year**, with a minimum total sum of 100 € net per licence period.  

**Yes, that's right: Per year, not per month.**

As long as a licence is valid, it includes prioritized ticket support and unlimited free version upgrades.

We work hard to keep our prices as low and stable as possible, with the aim of only having to adjust them for inflation. So, prices are subject to change. As you pay in advance, you can and will never be charged retrospectively - and if you want to add more mailboxes during an active licencing period, you will only be charged the initial price of your current licence period for these additional mailboxes (and this only for the remaining months of your current licence period), even if the price was raised in the meantime.

Support may be chargeable. This includes workshops, implementation support, all forms of remote or on-site outsourcing, support for topics already well-explained in the documentation and support for problems with the root cause outside of Set-OutlookSignatures or Set-OutlookSignatures Benefactor Circle.

### Trial version
You may want to start with a 30-day trial licence.

The Benefactor Circle add-on extends the feature set of the free and open-source core version of Set-OutlookSignatures, so make sure that the core version is working correctly before requesting a trial version.  
If you look for help implementing the free and open-source core version of Set-OutlookSignatures, we are happy to walk you through the process step-by-step in your own environment as part of our fee-based support.

<strong>> Just fill in and submit the <a href="https://forms.office.com/r/sgKrkkd0Eb" target="_blank">trial request form</a> to request a trial version of Set-OutlookSignatures Benefactor Circle.</strong>

The form collects the following information:
- Company name and full address
- The VAT number of your company
- Contact e-mail addresses for receiving the download link for the licence file, updates and other non invoice related information
- List of licence groups and maximum members in the following format (see '[How licence groups work](#how-licence-groups-work)' for details):
  - DNS domain name of the Active Directory domain (not the e-mail domain) the licence group is in.
    - Use 'AzureAD' if the group only exists in Azure Active Directory and is not synced to on-prem. Only one pure Azure AD group is supported, it must be the group with the highest priority (first list entry).
  - Security identifier (SID) of the group, as string in the "S-[...]" format
  - If multiple licence groups are defined, designate one of these groups as default or fallback group. For details, see '[How licence groups work](#how-licence-groups-work)'.

The licence file contains the following information:
- Invoice address of the Benefactor Circle member
- Date until the licence is valid
- DNS domain name, SID and maximum number of members for one or multiple licence groups

To use the licence file, just add two parameters to your call of Set-OutlookSignatures.ps1:
- `BenefactorCircleLicenceFile` with the path to your indivualized licence file
- `BenefactorCircleId` with your Benefactor Circle id

Trial licences can not be extended or re-issued. They are limited to 30 days runtime and a maximum of 20 mailboxes.

### Order process for non-trial versions
<strong>> Just fill in and submit the <a href="https://forms.office.com/r/sgKrkkd0Eb" target="_blank">licence offer request form</a> to request an individualized offer for Set-OutlookSignatures Benefactor Circle licences.</strong>

The form collects the following information:
- Company name and full address
- The VAT number of your company
- Contact e-mail addresses
  - At least one for receiving invoices
  - At least one for receiving the download link for the licence file, updates and other non invoice related information
- List of licence groups and maximum members in the following format (see '[How licence groups work](#how-do-licence-groups-work)' for details):
  - DNS domain name of the Active Directory Domain the group is in.
    - Use 'AzureAD' if the group only exists in Azure Active Directory and is not synced to on-prem. Only one pure Azure AD group is supported, it must be the group with the highest priority (first list entry).
  - SID (security identifier) of the group, as string in the "S-[...]" format
  - Maximum number of recursive members in the group (add a buffer for future growth)
  - If multiple licence groups are defined, designate one of these groups as default or fallback group. For details, see 'How do licence groups work?' later in this document.

The total number of mailboxes to licence is the sum of the maximum members defined for each licence group.

You will receive an offer within a few days. As soon as all the technical details are ironed out, you will receive an invoice and can start the payment process.

As soon as the full invoice amount is received, you will be sent an e-mail with instructions on how to securely download your individualized licence file.

The licence file contains the following information:
- Invoice address of the Benefactor Circle member
- Date until the licence is valid
- DNS domain name, SID and maximum number of members for one or multiple licence groups

To use the licence file, just add two parameters to your call of Set-OutlookSignatures.ps1:
- `BenefactorCircleLicenceFile` with the path to your individualized licence file
- `BenefactorCircleId` with your Benefactor Circle id

### Extending or reducing a licence period
A licence period cannot be extended. Licences are valid for one year, starting with the date the full payment is received, and do not auto-renew.

To continue using Set-OutlookSignatures with Benefactor Circle benefits, just place a new order to receive a new licence file.

You will be informed in advance that your licence is about to expire.

### Reducing the number of licenced mailboxes
The total number of licenced mailboxes can not be reduced during a licence period (one year starting from the date of payment reception), as the licence fees are paid in advance.

### Moving licenced mailboxes between licence groups
Moving licences means that the total number of licenced mailboxes does not change, but their distribution across licence groups. This can, for example, be necessary due to Active Directory consolidations.

Shifting licences between licence groups is possible once per licence period.

If more licence shifts are required, additional licences have to be acquired temporarily, the total number of licences can then be reduced when the new licence period begins.

### Increasing the number of licenced mailboxes
When adding licences during a licence period, you only pay for the new mailboxes and only for the remaining months in the running licence period.

The new payment does not extend the existing licence period, but it increases the number of licenced mailboxes in it.

An example:
- After a trial with 20 mailboxes, you start a pilot with 110 mailboxes in mid of April 2023. The licence is valid until mid of April 2024, with the following cost:
    max(100; 110 * 1.50) = 165.00 € net
- As the pilot is a success, the number of licenced mailboxes is raised to 7,500 in July 2023.
  - The licence period does not change, the licence is still valid from mid of April 2023 to mid of April 2024, of course with the higher number of mailboxes.
- The added licences result in the following costs:
  - Year 1 total cost of 9,402.50 €, consisting of
    - Year 1 cost for 110 mailboxes for 12 months: max(100; 110 * 1.50) = 165.00 € net
    - Year 1 additional maiboxes for 10 months (July 2023 to mid of April 2024): max(100; (7,500 - 110) * 1.50)/12*10 = 9,237.50 € net
    - As long as the price is not changing, the consecutive years will cost: max(100; 7,500 * 1,50) = 11,250.00 € net

## How licence groups work
Each Benefactor Circle licence is bound to one or more Active Directory or Azure AD groups.

Each mailbox of your company needs to be a direct or indirect (a.k.a. nested, recursive or transitive) member of a licence group, so that it can use exclusive features.

Each group may only contain as many mailboxes as direct or indirect members as defined in the licence.

The user running Set-OutlookSignatures must be able to resolve all direct and indirect members of the licence group, even across trusts.
Primary group membership is not considered due to Active Directory and Azure AD query restrictions.

Licence groups are defined by the DNS domain name of the on-premises domain (or "AzureAD" for cloud-only groups), their SID (security identifier) and the number of members licenced.
- Use 'AzureAD' if the group only exists in Azure Active Directory and is not synced to on-prem. Only one pure Azure AD group is supported, it must be the group with the highest priority (first list entry).
- If you have multiple domains in a forest or multiple forests, you can have one licence group per AD domain, each licence group with a separate maximum member count.
- There must be a default group, which is used for mailboxes which are not covered by separate licence groups.  
When a licence group for the AD domain of a mailbox is defined, this licence group is used. If not, the licence group defined as default will be used.

There are three situations where Set-OutlookSignatures uses Azure AD via Graph API insteed of on-prem AD:
- Parameter GraphOnly is set to true,
- no connection to the on-prem AD is possible,
- or the current user has a mailbox in Exchange Online and either OOF messages or Outlook Web signatures should be set

In these cases, licence groups are handled as follows:
- If the current mailbox has the Graph "onPremisesDomainName" attribute set:
  - If there is a licence group associated with this DNS domain name, it is queried via Graph
  - If there is no licence group associated with this DNS domain name, the licence group defined as default is queried via Graph
- If the current mailbox does not have the Graph "onPremisesDomainName" attribute set, the licence group defined as default is queried via Graph

## Licence and script version
Licence and script versions go hand in hand, so every new release of Set-OutlookSignatures also means a new licence release, and vice-versa.

Using different versions of script and licence file is not supported, as this may lead to unexpected results.

A warning message is logged when a version mismatch is detected.

## Data protection notice
Set-OutlookSignatures and the Benefactor Circle licence add-on do not store any telemetry data, do not "phone home", and do not transfer any data, only the absolute minimum necessary data between:
- the end user's Windows client,
- the end user's Active Directory or Azure Active Directory,
- the end user's Exchange or Exchange Online system,
- and the file server or SharePoint Server storing the script, it's sub-components and template files.

The data transfer always happens in the security context of the user executing the program.

For licence purposes, only the absolutely required information is stored and processed: Invoice address, e-mail addresses for technical and commercial communication, licence group information (domain, SID, maximum members) and payment information.
