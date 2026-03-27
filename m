Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8F4jLuvdxmkoPQUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 27 Mar 2026 20:43:39 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 445B534A522
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 27 Mar 2026 20:43:39 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D37C4401DA
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 27 Mar 2026 19:43:37 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	by lists.linaro.org (Postfix) with ESMTPS id 2A43E3F7D7
	for <linaro-mm-sig@lists.linaro.org>; Fri, 27 Mar 2026 19:43:34 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20251104 header.b=Ukg+skrW;
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.47 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	arc=pass ("google.com:s=arc-20240605:i=1")
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-48569636800so17355e9.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 27 Mar 2026 12:43:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774640613; cv=none;
        d=google.com; s=arc-20240605;
        b=Nga4cgX6JwJkUXfu9/+BE8qZ6Y0rRnXzjNTnN5OmIxlasaj1S1a50fZhHgBpYzL5kr
         Na/Ji42grvyZqSPPizMvw2wcyJVZKLiqHNkiKnIwrasdiLM0AVaEkGTiPVrM4U/cTI4j
         b+g8HlrwooYMV10gqxmrJgm/OeOxDHoadxoS23PtZVUMDMj+D+dKATDehuWNMmV27bh2
         5RtQd8g5j9tkc6HF8/UbN+WQHYLbTfBJvQ1OvR4yk8/sV2sZAvxZCKzvaemD3nxtWE+/
         DYEaw3EJQM3VaPT+GAyqqOftXAgHda3KhFVCHarARaJgqXFEAg4wOVoh0xUYyZkn3nst
         hOhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=7tjhOfzQT3ZRSG3eV9w6+z7kzXwwNkzHiubxpA2Yl+8=;
        fh=NiYIB1pbhRvGa8fIYjqdGq/9fIbpkfn456vM8oIWLQQ=;
        b=GYsa9s87VvdUFHBeJzDlqG4cxW3YSOy2KSZCf4OO9kZLLGCz6rDrU3GlTowEAe87At
         +uGanyaIHTXcziRM8lxcw0mDG0K5w09qnFjymBI27k1Nv14Cqx8OLstgHMrZbxSJzjuD
         XXIHfkri/TvOqYCm+krjryH6wkgPUx2Oe0c11HA6kFjmUOoW7pWICrM96ayMgPq7VwAK
         DsNhuuMZZFnSd6uwPiR01B7lFVXnnWvMYTJ4ATrdrZXY1MUW2uNUEnVvpGGDfuo2szXE
         ZfVfSHFFQq1A9pOeEAT8iHfmW6hbuYoPPgssvmybmIPtAtux6b7hpCSqG4PXpqKK9tRK
         5cQQ==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1774640613; x=1775245413; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7tjhOfzQT3ZRSG3eV9w6+z7kzXwwNkzHiubxpA2Yl+8=;
        b=Ukg+skrW/Cw3S5rs+D7TV5jjP2mGowzaeWTJpvp5xgf6SQv5YW13fmMy790etmGFUg
         WTsRStDxQqUDgnDnvPGLyWesp5NMaHu4rLglNysxzt9d6KL4BzuWpAgsTM09LnxOPB1g
         KDZBAZhTfQRflm0WTTQVyp5zEXtrNWb9NmfObvhgdDriiPZxg1XST6ZVbvBPtZqnRpdL
         KdEm7qOv50P+e6qomQ9WRlfKJPe1PecYR70F3KTQZftrIKy9axhUO+MLyTTYUvam8wAT
         vcLuOcIfq9UJBGj+ODZuQXreefcU6ir8OqjaJKHEP3iso1Var7juUggZvnc63iu7lsNr
         Gd8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774640613; x=1775245413;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=7tjhOfzQT3ZRSG3eV9w6+z7kzXwwNkzHiubxpA2Yl+8=;
        b=QUQj6oacKwTak4npAisUkGQZ14Zu95uSQ4SreBWIpexOsksFYXi/SE+YNNknI+zZgc
         kdZT/iq1jnlW/N3vM6nd6KdpP6u5nwFmkON/CfQImVV919BLLhh4k7HzGSFcyPiGE9VL
         xKpwcf2ubXbef9Oy38GxMm37Yq7Tp82KwclbsCtWJWNWPx3MFtvOtPrbUjI1YPl4SQUh
         rvJXE98MisSE+oSPq+6wrGE6eH1rV0PAx/RVsWh0Bq3kI2sTgb9Tyyn/RrNXrelq/KTr
         dNc1mntzIKV7CnQHHUIdhUoJcbbRdXYcz56JsSl+ZnZ5ntVXS+AI2gT9JZCji/rOUdww
         Y9cw==
X-Forwarded-Encrypted: i=1; AJvYcCUIfiFytCXwwhsUgrGRVnG5xBPj9sbtZM/fpnr38+bFLtTNwK8j6SNHPyMmrs1Y68EfWndxnIqX/1e8mrVD@lists.linaro.org
X-Gm-Message-State: AOJu0Yy7S5JShjWwurf0pPanH47o6FaOE/FKMj6Qd8zUTtUpGc8w233p
	2sNVAxgm2DxqmM2k+xXxYQG+BwyEuX89r9JRzN5YNrcFF+6+N0UWmcpo4u3YypUftZKFZXb4tZL
	61/QINliZRkoeVpLBmNvbf702xq0D6BLwoYl+p/3z
X-Gm-Gg: ATEYQzytINLY5sH0HNuzifuo6gTMQAzTKSDA9z4yzM8RCDoqIaOZyPzSljwgWlvroHF
	o223OQAweZH6ETzu3pQBZ2/GK8/1JnXpOnYWaC1EW6krb2VV3shHW+wLClTYQonc0nNXR2oa4re
	X5pt2cuYrCTM3yY72lx3ZCZfntyQ+52DvJ3QPvEkVROr0SJikA7uGhmFSEfY9kAjC0ySWl2pDEe
	rO3C1jEtyg4/mriVFWzUvTryPyDsbgPkA4sLVZf0/TOiThX8RNgmaZtec40isdqlSnDIaLHZgGy
	s/TKiMaflzrSIZ5rLridWHep5+MfkpDim28+ktFBkAJucw7hjgVQFLEJ6fI08dCejJ6L
X-Received: by 2002:a05:600c:898:b0:483:6a76:11a6 with SMTP id
 5b1f17b1804b1-4872fb4af58mr49025e9.5.1774640612616; Fri, 27 Mar 2026 12:43:32
 -0700 (PDT)
MIME-Version: 1.0
References: <20260325192352.437608-1-jiri@resnulli.us> <20260325192352.437608-3-jiri@resnulli.us>
In-Reply-To: <20260325192352.437608-3-jiri@resnulli.us>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Fri, 27 Mar 2026 12:43:20 -0700
X-Gm-Features: AQROBzBYesqFRGc3W9I0GrvLQe43hwnK276StdxFy-fmLYpUjceKHOTqIZ5lfxQ
Message-ID: <CABdmKX2G-RavjPxmeTH4iiawNqN8ronj5dytYxKTYRJvtDXoFg@mail.gmail.com>
To: Jiri Pirko <jiri@resnulli.us>
X-Spamd-Bar: ----
Message-ID-Hash: WBJXGW5N3MB6N3CSE4OZ54UYRRGBU2IY
X-Message-ID-Hash: WBJXGW5N3MB6N3CSE4OZ54UYRRGBU2IY
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, christian.koenig@amd.com, robin.murphy@arm.com, jgg@ziepe.ca, leon@kernel.org, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, aneesh.kumar@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 2/2] dma-buf: heaps: system: add system_cc_shared heap for explicitly shared memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WBJXGW5N3MB6N3CSE4OZ54UYRRGBU2IY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed),reject];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_REJECT(1.00)[google.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[24];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tjmercier@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[google.com:-];
	NEURAL_HAM(-0.00)[-0.989];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,mail.gmail.com:mid,nvidia.com:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 445B534A522
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gV2VkLCBNYXIgMjUsIDIwMjYgYXQgMTI6MjPigK9QTSBKaXJpIFBpcmtvIDxqaXJpQHJlc251
bGxpLnVzPiB3cm90ZToNCj4NCj4gRnJvbTogSmlyaSBQaXJrbyA8amlyaUBudmlkaWEuY29tPg0K
Pg0KPiBBZGQgYSBuZXcgInN5c3RlbV9jY19zaGFyZWQiIGRtYS1idWYgaGVhcCB0byBhbGxvdyB1
c2Vyc3BhY2UgdG8NCj4gYWxsb2NhdGUgc2hhcmVkIChkZWNyeXB0ZWQpIG1lbW9yeSBmb3IgY29u
ZmlkZW50aWFsIGNvbXB1dGluZyAoQ29DbykNCj4gVk1zLg0KPg0KPiBPbiBDb0NvIFZNcywgZ3Vl
c3QgbWVtb3J5IGlzIHByaXZhdGUgYnkgZGVmYXVsdC4gVGhlIGhhcmR3YXJlIHVzZXMgYW4NCj4g
ZW5jcnlwdGlvbiBiaXQgaW4gcGFnZSB0YWJsZSBlbnRyaWVzIChDLWJpdCBvbiBBTUQgU0VWLCAi
c2hhcmVkIiBiaXQgb24NCj4gSW50ZWwgVERYKSB0byBjb250cm9sIHdoZXRoZXIgYSBnaXZlbiBt
ZW1vcnkgYWNjZXNzIGlzIHByaXZhdGUgb3INCj4gc2hhcmVkLiBUaGUga2VybmVsJ3MgZGlyZWN0
IG1hcCBpcyBzZXQgdXAgYXMgcHJpdmF0ZSwNCj4gc28gcGFnZXMgcmV0dXJuZWQgYnkgYWxsb2Nf
cGFnZXMoKSBhcmUgcHJpdmF0ZSBpbiB0aGUgZGlyZWN0IG1hcA0KPiBieSBkZWZhdWx0LiBUbyBt
YWtlIHRoaXMgbWVtb3J5IHVzYWJsZSBmb3IgZGV2aWNlcyB0aGF0IGRvIG5vdCBzdXBwb3J0DQo+
IERNQSB0byBwcml2YXRlIG1lbW9yeSAobm8gVERJU1Agc3VwcG9ydCksIGl0IGhhcyB0byBiZSBl
eHBsaWNpdGx5DQo+IHNoYXJlZC4gQSBjb3VwbGUgb2YgdGhpbmdzIGFyZSBuZWVkZWQgdG8gcHJv
cGVybHkgaGFuZGxlDQo+IHNoYXJlZCBtZW1vcnkgZm9yIHRoZSBkbWEtYnVmIHVzZSBjYXNlOg0K
Pg0KPiAtIHNldF9tZW1vcnlfZGVjcnlwdGVkKCkgb24gdGhlIGRpcmVjdCBtYXAgYWZ0ZXIgYWxs
b2NhdGlvbjoNCj4gICBCZXNpZGVzIGNsZWFyaW5nIHRoZSBlbmNyeXB0aW9uIGJpdCBpbiB0aGUg
ZGlyZWN0IG1hcCBQVEVzLCB0aGlzDQo+ICAgYWxzbyBub3RpZmllcyB0aGUgaHlwZXJ2aXNvciBh
Ym91dCB0aGUgcGFnZSBzdGF0ZSBjaGFuZ2UuIE9uIGZyZWUsDQo+ICAgdGhlIGludmVyc2Ugc2V0
X21lbW9yeV9lbmNyeXB0ZWQoKSBtdXN0IGJlIGNhbGxlZCBiZWZvcmUgcmV0dXJuaW5nDQo+ICAg
cGFnZXMgdG8gdGhlIGFsbG9jYXRvci4gSWYgcmUtZW5jcnlwdGlvbiBmYWlscywgcGFnZXMNCj4g
ICBhcmUgaW50ZW50aW9uYWxseSBsZWFrZWQgdG8gcHJldmVudCBzaGFyZWQgbWVtb3J5IGZyb20g
YmVpbmcNCj4gICByZXVzZWQgYXMgcHJpdmF0ZS4NCj4NCj4gLSBwZ3Byb3RfZGVjcnlwdGVkKCkg
Zm9yIHVzZXJzcGFjZSBhbmQga2VybmVsIHZpcnR1YWwgbWFwcGluZ3M6DQo+ICAgQW55IG5ldyBt
YXBwaW5nIG9mIHRoZSBzaGFyZWQgcGFnZXMsIGJlIGl0IHRvIHVzZXJzcGFjZSB2aWENCj4gICBt
bWFwIG9yIHRvIGtlcm5lbCB2bWFsbG9jIHNwYWNlIHZpYSB2bWFwLCBjcmVhdGVzIFBURXMgaW5k
ZXBlbmRlbnQNCj4gICBvZiB0aGUgZGlyZWN0IG1hcC4gVGhlc2UgbXVzdCBhbHNvIGhhdmUgdGhl
IGVuY3J5cHRpb24gYml0IGNsZWFyZWQsDQo+ICAgb3RoZXJ3aXNlIGFjY2Vzc2VzIHRocm91Z2gg
dGhlbSB3b3VsZCBzZWUgZW5jcnlwdGVkIChnYXJiYWdlKSBkYXRhLg0KPg0KPiAtIERNQV9BVFRS
X0NDX1NIQVJFRCBmb3IgRE1BIG1hcHBpbmc6DQo+ICAgU2luY2UgdGhlIHBhZ2VzIGFyZSBhbHJl
YWR5IHNoYXJlZCwgdGhlIERNQSBBUEkgbmVlZHMgdG8gYmUNCj4gICBpbmZvcm1lZCB2aWEgRE1B
X0FUVFJfQ0NfU0hBUkVEIHNvIGl0IGNhbiBtYXAgdGhlbSBjb3JyZWN0bHkNCj4gICBhcyB1bmVu
Y3J5cHRlZCBmb3IgZGV2aWNlIGFjY2Vzcy4NCj4NCj4gT24gbm9uLUNvQ28gVk1zLCB0aGUgc3lz
dGVtX2NjX3NoYXJlZCBoZWFwIGlzIG5vdCByZWdpc3RlcmVkDQo+IHRvIHByZXZlbnQgbWlzdXNl
IGJ5IHVzZXJzcGFjZSB0aGF0IGRvZXMgbm90IHVuZGVyc3RhbmQNCj4gdGhlIHNlY3VyaXR5IGlt
cGxpY2F0aW9ucyBvZiBleHBsaWNpdGx5IHNoYXJlZCBtZW1vcnkuDQo+DQo+IFNpZ25lZC1vZmYt
Ynk6IEppcmkgUGlya28gPGppcmlAbnZpZGlhLmNvbT4NCg0KUmV2aWV3ZWQtYnk6IFQuSi4gTWVy
Y2llciA8dGptZXJjaWVyQGdvb2dsZS5jb20+DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBs
aW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
