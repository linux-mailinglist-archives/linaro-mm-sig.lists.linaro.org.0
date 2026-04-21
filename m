Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yFIENh5I6mkhxgIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 Apr 2026 18:26:06 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 42F47454D9C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 Apr 2026 18:26:06 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DC9F8405DC
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 Apr 2026 16:26:04 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	by lists.linaro.org (Postfix) with ESMTPS id 93A1D404AE
	for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Apr 2026 11:53:36 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=resnulli-us.20251104.gappssmtp.com header.s=20251104 header.b=mRJt6ait;
	dmarc=none;
	spf=none (lists.linaro.org: domain of jiri@resnulli.us has no SPF policy when checking 209.85.128.41) smtp.mailfrom=jiri@resnulli.us
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4891e5b9c1fso20310625e9.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Apr 2026 04:53:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=resnulli-us.20251104.gappssmtp.com; s=20251104; t=1776772415; x=1777377215; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=qNffUEYXS7MvbYQg9u+kJhedqyXiIXCWwUXLFzfDV6w=;
        b=mRJt6aitt0eoUFJSQyEHzfJqrD7qDLr82ftvYUOTxw7DoQFPj6ivSKv2nBRVrBdMjd
         OtPkbxXgcEtnltBu4yJnbasfkwW43ACHWNtQZSmIwqACK4S0vlhUfde8YaeYH6cauaEs
         qooXKqTrcSMO737vJqDQN5DbL4Di0+Tf5JFaQS9XAjf5oW142nIDypeR7oL9jWIRvaNx
         LvvWBhpUBgwUFKKG05xsIsH3VESPqWCqF3vL/Q7JgQz2HPk1B7zJR7tCUATX+WxbJGJF
         g3GiPejjpozI5ICo7/cR9s2BwK+8JT76sa0EOWGp3vgh0YsXeepW4b3iC9ADZMu3MaK2
         EWJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776772415; x=1777377215;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qNffUEYXS7MvbYQg9u+kJhedqyXiIXCWwUXLFzfDV6w=;
        b=e5F8Q3TKSKy7iEZGH084XSr6FmOxNgQkvPjALgxkvDayj2r3T3LkddF8miG8iDge5B
         l78Z3LMX3wCpLft4jJ/WHLYDo61x78OjG6p2qDrbNSbqA5hvTzBzwndvI9UxO1ryl9Iw
         C7PpWypRYpgcuPRSoy1JkjyCvwMUo2Hy7YZf7E64bllUH0MmTNjLZERu4fdIKVnoTpbq
         TwNvRWCNsb0yg3z+qbVCZ3ieCnhtcKkSe4r2vLdnuEAq94UqEl8PwEuW8jBCBKaKxvNQ
         4+D8PLc3rzpA63Lv3H7qTusqDVNulPwH87UKv6d83DugCpm23GWbxMgqRpBGPw7W5YpU
         xnbQ==
X-Forwarded-Encrypted: i=1; AFNElJ/WA1YgYFlza0s3kcuxn+kgudfZzVG7wayzp59Ph9qdKrfyrJKW43HLvndbnD3jVzvCTuCbgPwU0bafY372@lists.linaro.org
X-Gm-Message-State: AOJu0Ywl1QzbxhXwbStowokqAQ7kJ9FJvDlMvMfwlTeLvatEwH3rhSsb
	/FJH5kEDYpxsfzm/XNSCs9dPp/PyYb1V0P3aX/W9ubjphkgsSDko1SRZLf/vvzZcnoE=
X-Gm-Gg: AeBDievZNeajnfYHXEM5GI9tGmwOgbj+zd+JQIaUzfvjTPRjcBAKguKxqFl6A1ralRz
	RZs0asN/wKWp7X7MK4yQQpLaZmIPFj9Wl+5X8ZUeAuI/qTNnH2dQvjyWtbS/XzDMuWu0RCPF6Wf
	6SOgAC7UABRAkrTlRnrCHUXucXE8C5/BRG3EH0T2EefuhppC5zRdGSd9bwLUGmbKaHr9T79EH7f
	Ie5+at3sJ4QJepc9y0V+TiS/mG5AETL1RKxTOcqtFju6p1xhUZ26UoK215QsN91FVCrtxkhcqbr
	Quoyhxz+7nfSVUzwQmdRTSrlXjOuA4aRXPJBzUdfFhFXV/+aKOcfeO9oDeR+0q4SEN2Lw6M3lAD
	2HJ+KUAoZ48fL4qtcmKlQ/V3BsyuHloZGdLKGdBZUNd745xIumFbQji68/2ibLGpjm6/8jjiuvR
	C0sg/5kDv63ya7BfcbGzq9YdI5ovHSRMw8L5r2Wpk317DunyiKTXQvBHXe
X-Received: by 2002:a05:600c:c0c8:b0:488:a824:fe04 with SMTP id 5b1f17b1804b1-488fb787bfdmr196331065e9.26.1776772415404;
        Tue, 21 Apr 2026 04:53:35 -0700 (PDT)
Received: from FV6GYCPJ69 ([140.209.217.211])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-489e124f6c7sm34968855e9.29.2026.04.21.04.53.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Apr 2026 04:53:34 -0700 (PDT)
Date: Tue, 21 Apr 2026 13:53:31 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: "Aneesh Kumar K.V" <aneesh.kumar@kernel.org>
Message-ID: <tteiecxfqy4k24wnzvp6ocxnuopyhmqtne2xwh5htwldlbzjnp@o6cbzdlurxld>
References: <20260325192352.437608-1-jiri@resnulli.us>
 <20260325192352.437608-2-jiri@resnulli.us>
 <yq5atst6ywbl.fsf@kernel.org>
 <4qdizkkoeke3cvkcf35upa7p7ick6s654eqlrizmi7ozkw5eze@tnpk2e34xgwl>
 <yq5awly0d504.fsf@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <yq5awly0d504.fsf@kernel.org>
X-Spamd-Bar: --
X-MailFrom: jiri@resnulli.us
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: BGYBZ6D5RMTSPBIVU5EXWRCNIXO2MEMN
X-Message-ID-Hash: BGYBZ6D5RMTSPBIVU5EXWRCNIXO2MEMN
X-Mailman-Approved-At: Thu, 23 Apr 2026 16:26:03 +0000
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, jgg@ziepe.ca, leon@kernel.org, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 1/2] dma-mapping: introduce DMA_ATTR_CC_SHARED for shared memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BGYBZ6D5RMTSPBIVU5EXWRCNIXO2MEMN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [2.09 / 15.00];
	R_DKIM_REJECT(1.00)[resnulli-us.20251104.gappssmtp.com:s=20251104];
	DATE_IN_PAST(1.00)[52];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[24];
	DMARC_NA(0.00)[resnulli.us];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[resnulli-us.20251104.gappssmtp.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jiri@resnulli.us,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,nvidia.com:email,resnulli.us:email]
X-Rspamd-Queue-Id: 42F47454D9C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

VHVlLCBBcHIgMjEsIDIwMjYgYXQgMTE6NDI6MDNBTSArMDIwMCwgYW5lZXNoLmt1bWFyQGtlcm5l
bC5vcmcgd3JvdGU6DQo+SmlyaSBQaXJrbyA8amlyaUByZXNudWxsaS51cz4gd3JpdGVzOg0KPg0K
Pj4gTW9uLCBBcHIgMjAsIDIwMjYgYXQgMDg6MzQ6MDZBTSArMDIwMCwgYW5lZXNoLmt1bWFyQGtl
cm5lbC5vcmcgd3JvdGU6DQo+Pj5KaXJpIFBpcmtvIDxqaXJpQHJlc251bGxpLnVzPiB3cml0ZXM6
DQo+Pj4NCj4+Pj4gRnJvbTogSmlyaSBQaXJrbyA8amlyaUBudmlkaWEuY29tPg0KPj4+Pg0KPj4+
PiBDdXJyZW50IENDIGRlc2lnbnMgZG9uJ3QgcGxhY2UgYSB2SU9NTVUgaW4gZnJvbnQgb2YgdW50
cnVzdGVkIGRldmljZXMuDQo+Pj4+IEluc3RlYWQsIHRoZSBETUEgQVBJIGZvcmNlcyBhbGwgdW50
cnVzdGVkIGRldmljZSBETUEgdGhyb3VnaCBzd2lvdGxiDQo+Pj4+IGJvdW5jZSBidWZmZXJzIChp
c19zd2lvdGxiX2ZvcmNlX2JvdW5jZSgpKSB3aGljaCBjb3BpZXMgZGF0YSBpbnRvDQo+Pj4+IHNo
YXJlZCBtZW1vcnkgb24gYmVoYWxmIG9mIHRoZSBkZXZpY2UuDQo+Pj4+DQo+Pj4+IFdoZW4gYSBj
YWxsZXIgaGFzIGFscmVhZHkgYXJyYW5nZWQgZm9yIHRoZSBtZW1vcnkgdG8gYmUgc2hhcmVkDQo+
Pj4+IHZpYSBzZXRfbWVtb3J5X2RlY3J5cHRlZCgpLCB0aGUgRE1BIEFQSSBuZWVkcyB0byBrbm93
IHNvIGl0IGNhbiBtYXANCj4+Pj4gZGlyZWN0bHkgdXNpbmcgdGhlIHVuZW5jcnlwdGVkIHBoeXNp
Y2FsIGFkZHJlc3MgcmF0aGVyIHRoYW4gYm91bmNlDQo+Pj4+IGJ1ZmZlcmluZy4gRm9sbG93aW5n
IHRoZSBwYXR0ZXJuIG9mIERNQV9BVFRSX01NSU8sIGFkZA0KPj4+PiBETUFfQVRUUl9DQ19TSEFS
RUQgZm9yIHRoaXMgcHVycG9zZS4gTGlrZSB0aGUgTU1JTyBjYXNlLCBvbmx5IHRoZQ0KPj4+PiBj
YWxsZXIga25vd3Mgd2hhdCBraW5kIG9mIG1lbW9yeSBpdCBoYXMgYW5kIG11c3QgaW5mb3JtIHRo
ZSBETUEgQVBJDQo+Pj4+IGZvciBpdCB0byB3b3JrIGNvcnJlY3RseS4NCj4+Pj4NCj4+Pj4gU2ln
bmVkLW9mZi1ieTogSmlyaSBQaXJrbyA8amlyaUBudmlkaWEuY29tPg0KPj4+PiAtLS0NCj4+Pj4g
djQtPnY1Og0KPj4+PiAtIHJlYmFzZWQgb24gdG9wIG9kIGRtYS1tYXBwaW5nLWZvci1uZXh0DQo+
Pj4+IC0gcy9kZWNyeXB0ZWQvc2hhcmVkLw0KPj4+PiB2My0+djQ6DQo+Pj4+IC0gYWRkZWQgc29t
ZSBzYW5pdHkgY2hlY2tzIHRvIGRtYV9tYXBfcGh5cyBhbmQgZG1hX3VubWFwX3BoeXMNCj4+Pj4g
LSBlbmhhbmNlZCBkb2N1bWVudGF0aW9uIG9mIERNQV9BVFRSX0NDX0RFQ1JZUFRFRCBhdHRyDQo+
Pj4+IHYxLT52MjoNCj4+Pj4gLSByZWJhc2VkIG9uIHRvcCBvZiByZWNlbnQgZG1hLW1hcHBpbmct
Zml4ZXMNCj4+Pj4gLS0tDQo+Pj4+ICBpbmNsdWRlL2xpbnV4L2RtYS1tYXBwaW5nLmggfCAxMCAr
KysrKysrKysrDQo+Pj4+ICBpbmNsdWRlL3RyYWNlL2V2ZW50cy9kbWEuaCAgfCAgMyArKy0NCj4+
Pj4gIGtlcm5lbC9kbWEvZGlyZWN0LmggICAgICAgICB8IDE0ICsrKysrKysrKysrLS0tDQo+Pj4+
ICBrZXJuZWwvZG1hL21hcHBpbmcuYyAgICAgICAgfCAxMyArKysrKysrKysrKy0tDQo+Pj4+ICA0
IGZpbGVzIGNoYW5nZWQsIDM0IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pDQo+Pj4+DQo+
Pj4+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2RtYS1tYXBwaW5nLmggYi9pbmNsdWRlL2xp
bnV4L2RtYS1tYXBwaW5nLmgNCj4+Pj4gaW5kZXggNjc3YzUxYWI3NTEwLi5kYjhhYjI0YTU0ZjQg
MTAwNjQ0DQo+Pj4+IC0tLSBhL2luY2x1ZGUvbGludXgvZG1hLW1hcHBpbmcuaA0KPj4+PiArKysg
Yi9pbmNsdWRlL2xpbnV4L2RtYS1tYXBwaW5nLmgNCj4+Pj4gQEAgLTkyLDYgKzkyLDE2IEBADQo+
Pj4+ICAgKiBmbHVzaGluZy4NCj4+Pj4gICAqLw0KPj4+PiAgI2RlZmluZSBETUFfQVRUUl9SRVFV
SVJFX0NPSEVSRU5UCSgxVUwgPDwgMTIpDQo+Pj4+ICsvKg0KPj4+PiArICogRE1BX0FUVFJfQ0Nf
U0hBUkVEOiBJbmRpY2F0ZXMgdGhlIERNQSBtYXBwaW5nIGlzIHNoYXJlZCAoZGVjcnlwdGVkKSBm
b3INCj4+Pj4gKyAqIGNvbmZpZGVudGlhbCBjb21wdXRpbmcgZ3Vlc3RzLiBGb3Igbm9ybWFsIHN5
c3RlbSBtZW1vcnkgdGhlIGNhbGxlciBtdXN0IGhhdmUNCj4+Pj4gKyAqIGNhbGxlZCBzZXRfbWVt
b3J5X2RlY3J5cHRlZCgpLCBhbmQgcGdwcm90X2RlY3J5cHRlZCBtdXN0IGJlIHVzZWQgd2hlbg0K
Pj4+PiArICogY3JlYXRpbmcgQ1BVIFBURXMgZm9yIHRoZSBtYXBwaW5nLiBUaGUgc2FtZSBzaGFy
ZWQgc2VtYW50aWMgbWF5IGJlIHBhc3NlZA0KPj4+PiArICogdG8gdGhlIHZJT01NVSB3aGVuIGl0
IHNldHMgdXAgdGhlIElPUFRFLiBGb3IgTU1JTyB1c2UgdG9nZXRoZXIgd2l0aA0KPj4+PiArICog
RE1BX0FUVFJfTU1JTyB0byBpbmRpY2F0ZSBzaGFyZWQgTU1JTy4gVW5sZXNzIERNQV9BVFRSX01N
SU8gaXMgcHJvdmlkZWQNCj4+Pj4gKyAqIGEgc3RydWN0IHBhZ2UgaXMgcmVxdWlyZWQuDQo+Pj4+
ICsgKi8NCj4+Pj4gKyNkZWZpbmUgRE1BX0FUVFJfQ0NfU0hBUkVECSgxVUwgPDwgMTMpDQo+Pj4+
ICANCj4+Pj4gIC8qDQo+Pj4+ICAgKiBBIGRtYV9hZGRyX3QgY2FuIGhvbGQgYW55IHZhbGlkIERN
QSBvciBidXMgYWRkcmVzcyBmb3IgdGhlIHBsYXRmb3JtLiAgSXQgY2FuDQo+Pj4+IGRpZmYgLS1n
aXQgYS9pbmNsdWRlL3RyYWNlL2V2ZW50cy9kbWEuaCBiL2luY2x1ZGUvdHJhY2UvZXZlbnRzL2Rt
YS5oDQo+Pj4+IGluZGV4IDYzNTk3YjAwNDQyNC4uMzFjOWRkZjcyYzlkIDEwMDY0NA0KPj4+PiAt
LS0gYS9pbmNsdWRlL3RyYWNlL2V2ZW50cy9kbWEuaA0KPj4+PiArKysgYi9pbmNsdWRlL3RyYWNl
L2V2ZW50cy9kbWEuaA0KPj4+PiBAQCAtMzQsNyArMzQsOCBAQCBUUkFDRV9ERUZJTkVfRU5VTShE
TUFfTk9ORSk7DQo+Pj4+ICAJCXsgRE1BX0FUVFJfUFJJVklMRUdFRCwgIlBSSVZJTEVHRUQiIH0s
IFwNCj4+Pj4gIAkJeyBETUFfQVRUUl9NTUlPLCAiTU1JTyIgfSwgXA0KPj4+PiAgCQl7IERNQV9B
VFRSX0RFQlVHR0lOR19JR05PUkVfQ0FDSEVMSU5FUywgIkNBQ0hFTElORVNfT1ZFUkxBUCIgfSwg
XA0KPj4+PiAtCQl7IERNQV9BVFRSX1JFUVVJUkVfQ09IRVJFTlQsICJSRVFVSVJFX0NPSEVSRU5U
IiB9KQ0KPj4+PiArCQl7IERNQV9BVFRSX1JFUVVJUkVfQ09IRVJFTlQsICJSRVFVSVJFX0NPSEVS
RU5UIiB9LCBcDQo+Pj4+ICsJCXsgRE1BX0FUVFJfQ0NfU0hBUkVELCAiQ0NfU0hBUkVEIiB9KQ0K
Pj4+PiAgDQo+Pj4+ICBERUNMQVJFX0VWRU5UX0NMQVNTKGRtYV9tYXAsDQo+Pj4+ICAJVFBfUFJP
VE8oc3RydWN0IGRldmljZSAqZGV2LCBwaHlzX2FkZHJfdCBwaHlzX2FkZHIsIGRtYV9hZGRyX3Qg
ZG1hX2FkZHIsDQo+Pj4+IGRpZmYgLS1naXQgYS9rZXJuZWwvZG1hL2RpcmVjdC5oIGIva2VybmVs
L2RtYS9kaXJlY3QuaA0KPj4+PiBpbmRleCBiODZmZjY1NDk2ZmMuLjcxNDBjMjA4YzEyMyAxMDA2
NDQNCj4+Pj4gLS0tIGEva2VybmVsL2RtYS9kaXJlY3QuaA0KPj4+PiArKysgYi9rZXJuZWwvZG1h
L2RpcmVjdC5oDQo+Pj4+IEBAIC04OSwxNiArODksMjQgQEAgc3RhdGljIGlubGluZSBkbWFfYWRk
cl90IGRtYV9kaXJlY3RfbWFwX3BoeXMoc3RydWN0IGRldmljZSAqZGV2LA0KPj4+PiAgCWRtYV9h
ZGRyX3QgZG1hX2FkZHI7DQo+Pj4+ICANCj4+Pj4gIAlpZiAoaXNfc3dpb3RsYl9mb3JjZV9ib3Vu
Y2UoZGV2KSkgew0KPj4+PiAtCQlpZiAoYXR0cnMgJiAoRE1BX0FUVFJfTU1JTyB8IERNQV9BVFRS
X1JFUVVJUkVfQ09IRVJFTlQpKQ0KPj4+PiAtCQkJcmV0dXJuIERNQV9NQVBQSU5HX0VSUk9SOw0K
Pj4+PiArCQlpZiAoIShhdHRycyAmIERNQV9BVFRSX0NDX1NIQVJFRCkpIHsNCj4+Pj4gKwkJCWlm
IChhdHRycyAmIChETUFfQVRUUl9NTUlPIHwgRE1BX0FUVFJfUkVRVUlSRV9DT0hFUkVOVCkpDQo+
Pj4+ICsJCQkJcmV0dXJuIERNQV9NQVBQSU5HX0VSUk9SOw0KPj4+PiAgDQo+Pj4+IC0JCXJldHVy
biBzd2lvdGxiX21hcChkZXYsIHBoeXMsIHNpemUsIGRpciwgYXR0cnMpOw0KPj4+PiArCQkJcmV0
dXJuIHN3aW90bGJfbWFwKGRldiwgcGh5cywgc2l6ZSwgZGlyLCBhdHRycyk7DQo+Pj4+ICsJCX0N
Cj4+Pj4gKwl9IGVsc2UgaWYgKGF0dHJzICYgRE1BX0FUVFJfQ0NfU0hBUkVEKSB7DQo+Pj4+ICsJ
CXJldHVybiBETUFfTUFQUElOR19FUlJPUjsNCj4+Pj4gIAl9DQo+Pj4+DQo+Pj4NCj4+PldoYXQg
aXMgdGhpcyBjaGVjayBmb3I/IElmIHdlIGFyZSByZXF1ZXN0aW5nIGEgRE1BIG1hcHBpbmcgd2l0
aA0KPj4+RE1BX0FUVFJfQ0NfU0hBUkVELCBzaG91bGRu4oCZdCBpdCBiZSBhbGxvd2VkPyBJZiBu
b3QsIGhvdyB3b3VsZCB3ZSByZWFjaA0KPj4NCj4+IFRoaXMgaXMgZGVmZW5zaXZlLiBPbmx5IGFs
bG93cyB0byBtYXAgd2l0aCBETUFfQVRUUl9DQ19TSEFSRUQgc2V0IHRvDQo+PiBkZXYgZGV2IHRo
YXQgZG9lcyBub3Qgc3VwcG9ydCBDQyBuYXRpdmVseS4gVGhpcyBjYW4gYmUgb2YgY291cnNlIGxp
ZnRlZCwNCj4+IGlmIHlvdSBoYXZlIGEgY2FzZS4NCj4+DQo+Pg0KPj4+dGhlIGNvbmRpdGlvbmFs
IGJlbG93IHdoZXJlIHdlIGNvbnZlcnQgdGhlIHBoeXNpY2FsIGFkZHJlc3MgdG8gYSBETUENCj4+
PmFkZHJlc3MgdXNpbmcgcGh5c190b19kbWFfdW5lbmNyeXB0ZWQoKT8uIEFsc28sIGhvdyBpcyB0
aGlzIHN1cHBvc2VkIHRvDQo+Pj5pbnRlcmFjdCB3aXRoIGlzX3N3aW90bGJfZm9yY2VfYm91bmNl
KCk/4oCdDQo+Pg0KPj4gWW91IHJlYWNoIHRoZXJlIHdoZW4gaXNfc3dpb3RsYl9mb3JjZV9ib3Vu
Y2UoZGV2KSBpcyB0cnVlIGFuZA0KPj4gRE1BX0FUVFJfQ0NfU0hBUkVEIGlzIHNldC4gV2hhdCBh
bSBJIG1pc3Npbmc/DQo+Pg0KPg0KPlNvIGEgc3dpb3RsYl9mb3JjZV9ib3VuY2Ugd2lsbCBub3Qg
dXNlIHN3aW90bGIgYm91bmNpbmcgaWYNCj5ETUFfQVRUUl9DQ19TSEFSRUQgaXMgc2V0ID8gDQoN
CkNvcnJlY3QuIEJvdW5jaW5nIGRvZXMgbm90IG1ha2Ugc2Vuc2UgaW4gdGhpcyBjYXNlLCBhcyBz
aGFyZWQgbWVtb3J5IGlzDQphbHJlYWR5IGJlaW5nIG1hcHBlZC4NCg0KDQo+DQo+Pg0KPj4NCj4+
Pg0KPj4+PiAgDQo+Pj4+ICAJaWYgKGF0dHJzICYgRE1BX0FUVFJfTU1JTykgew0KPj4+PiAgCQlk
bWFfYWRkciA9IHBoeXM7DQo+Pj4+ICAJCWlmICh1bmxpa2VseSghZG1hX2NhcGFibGUoZGV2LCBk
bWFfYWRkciwgc2l6ZSwgZmFsc2UpKSkNCj4+Pj4gIAkJCWdvdG8gZXJyX292ZXJmbG93Ow0KPj4+
PiArCX0gZWxzZSBpZiAoYXR0cnMgJiBETUFfQVRUUl9DQ19TSEFSRUQpIHsNCj4+Pj4gKwkJZG1h
X2FkZHIgPSBwaHlzX3RvX2RtYV91bmVuY3J5cHRlZChkZXYsIHBoeXMpOw0KPj4+PiArCQlpZiAo
dW5saWtlbHkoIWRtYV9jYXBhYmxlKGRldiwgZG1hX2FkZHIsIHNpemUsIGZhbHNlKSkpDQo+Pj4+
ICsJCQlnb3RvIGVycl9vdmVyZmxvdzsNCj4+Pj4gIAl9IGVsc2Ugew0KPj4+PiAgCQlkbWFfYWRk
ciA9IHBoeXNfdG9fZG1hKGRldiwgcGh5cyk7DQo+Pj4+ICAJCWlmICh1bmxpa2VseSghZG1hX2Nh
cGFibGUoZGV2LCBkbWFfYWRkciwgc2l6ZSwgdHJ1ZSkpIHx8DQo+Pj4NCj4NCj4tYW5lZXNoDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5z
dWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFy
by5vcmcK
