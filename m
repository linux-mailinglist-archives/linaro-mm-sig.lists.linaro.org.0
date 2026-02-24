Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0JQhAUMU4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:54:27 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 959C241219F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:54:26 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B504444D30
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:54:25 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	by lists.linaro.org (Postfix) with ESMTPS id B4B33401B0
	for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Feb 2026 08:32:06 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=resnulli-us.20230601.gappssmtp.com header.s=20230601 header.b=vyaxfnpH;
	spf=none (lists.linaro.org: domain of jiri@resnulli.us has no SPF policy when checking 209.85.128.48) smtp.mailfrom=jiri@resnulli.us;
	dmarc=none
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-4833115090dso49956495e9.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Feb 2026 00:32:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1771921926; x=1772526726; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/EquV0ZhBp1KMAQWMVyF7t2k8W3NQOG5g8XyiQs2v3s=;
        b=vyaxfnpHEuDyWzQdL8fhCwfyde4KWf9SmIcMhNyh9tbhXL0x29aYxmTkQqlpfHSFig
         JeCMm5QpgqEaCFz2qG1PXZhXZGkLIVw5NPi1gwiGy3hna9zTduAcc3kTsoi6g+ik6Z/T
         14381Cnnihsunhsr8zWJVhukuELAjD+X5IMqKSaMWgo/f8AGFr8WNsiake/4MwxcOOfH
         RNPSN43OGIMUnHlaNk5WSRLLvyK/y4/+79EkNdHRVRyCCrLtcnGVxpR6zOhNwRgL9x0W
         y7mdymPIMhuApTKCQAt740NRunb4MK3yOo0dsnx8pp0ZBMPjxrFmn5my8M7PRGB/Sd1l
         kbww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771921926; x=1772526726;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/EquV0ZhBp1KMAQWMVyF7t2k8W3NQOG5g8XyiQs2v3s=;
        b=Zn0w3AJboaT09FVmenikIhI4L45hOcMvpbSaKl4Zwdx23aG+TKSmBSbmIgMLVabFKJ
         X7z2BAVAADF0RYoCMSr/OHKoY98XKEWiR2SXCG0bnNUWS7QzkIo9okw+LT8X5zooOFRc
         uWGSMc1ZRz1JstLkl6lm38d9QngYTYGo52iL8qkN8Nv3K2j2Hi8hJ7V39Rmfsau5So4a
         jHOqNvYvD6Urp9u7DJSN8ZccD4wuWnk6nDAQy618v7MAliMND2dowgIk7lzWRQ/rd/vY
         /XIELHrVf/bAGGgr6yi6zvDNwWfbhxrZEQw1w5Ffcp1QIVpx8lWMg4TsBOm4BqMZJeq9
         bjEQ==
X-Forwarded-Encrypted: i=1; AJvYcCX5toEec2Vpt4g1r1kXx0EaiTFTuQas2psLv+Jt0mugnCVKEbHMqSsH4NQtOHMsaJiQ9sx9mfcgnueSL6sD@lists.linaro.org
X-Gm-Message-State: AOJu0YzweLevVcA4pIpcjZ7CffuBu/Pyw1MOphCEGKZFYVoJme8PD81O
	p5gTvw3KMhadHOiPZnWF2DHRWIw7RcCSWeWtRYS2mU7hIHrCRpiKP7h7+7fJOZvbLUs=
X-Gm-Gg: AZuq6aKNRenkCj+G+3O7+kQDv/hhWCrDcEXQa4clGFqtS5Dk5mz6cmh3ngjUJD6tntp
	974d0szc/VDK8ubSwW2Nj18qnKreBjRvTtelwhDofXkj6osR8451tWSrq+emIIUvsFG+XZA6Mdp
	MI05xLkP9oBXfYVu4XnM6+pAsQCnBn3J5anPIhmqEjT4vCT6gSh75O6mCMcEPo7hNq9IKF4FWpj
	zqacVv4ZeEBwSV0pEsAjXwTMsDK4jrEwEOfzxYHhWuf9VzLIbo/zrlFNlkEvW7tBKzXCLBVrOjT
	vCfk4Fj2RmvpMa5HrjKOig9Osc+OtSgwATniMuwEGUBZ2kg68XQIgJ6OZs1Psa6sFxte01J8r5f
	uit00FrJTwmPWeD2qSNMtDTEt2os1WSJd39kzq3MvqIH9Wpx9JScUA0H5ijotRSNSxmDIUuc++x
	EWurhxG1+xuI4InamYlAkkIYJChgO+xqk=
X-Received: by 2002:a05:600c:1386:b0:483:887:59b0 with SMTP id 5b1f17b1804b1-483a960c879mr236583495e9.35.1771921925134;
        Tue, 24 Feb 2026 00:32:05 -0800 (PST)
Received: from FV6GYCPJ69 ([85.163.81.98])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483b820f718sm14689075e9.5.2026.02.24.00.32.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 00:32:04 -0800 (PST)
Date: Tue, 24 Feb 2026 09:32:01 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: John Stultz <jstultz@google.com>
Message-ID: <5z6d2etfr24oscoxhk3samf2bbhtcz6hymf65cow76omagsplf@6gdaev2perkk>
References: <20260223095136.225277-1-jiri@resnulli.us>
 <20260223095136.225277-3-jiri@resnulli.us>
 <CANDhNCp94KG06P_7ivMTNA27qEM9g8ox-h3b_tZ=v6e-25xJ3g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANDhNCp94KG06P_7ivMTNA27qEM9g8ox-h3b_tZ=v6e-25xJ3g@mail.gmail.com>
X-Spamd-Bar: --
X-MailFrom: jiri@resnulli.us
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: NNLWSM2J5MYGIIIV2W5NQLCGMZMYNT4L
X-Message-ID-Hash: NNLWSM2J5MYGIIIV2W5NQLCGMZMYNT4L
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:41:00 +0000
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, jgg@ziepe.ca, leon@kernel.org, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, aneesh.kumar@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 2/2] dma-buf: heaps: system: add system_cc_decrypted heap for explicitly decrypted memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NNLWSM2J5MYGIIIV2W5NQLCGMZMYNT4L/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [1.09 / 15.00];
	DATE_IN_PAST(1.00)[1232];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[resnulli.us];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jiri@resnulli.us,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.994];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[resnulli.us:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,nvidia.com:email]
X-Rspamd-Queue-Id: 959C241219F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

TW9uLCBGZWIgMjMsIDIwMjYgYXQgMDc6MzM6MDdQTSArMDEwMCwganN0dWx0ekBnb29nbGUuY29t
IHdyb3RlOg0KPk9uIE1vbiwgRmViIDIzLCAyMDI2IGF0IDE6NTHigK9BTSBKaXJpIFBpcmtvIDxq
aXJpQHJlc251bGxpLnVzPiB3cm90ZToNCj4+DQo+PiBGcm9tOiBKaXJpIFBpcmtvIDxqaXJpQG52
aWRpYS5jb20+DQo+Pg0KPj4gQWRkIGEgbmV3ICJzeXN0ZW1fY2NfZGVjcnlwdGVkIiBkbWEtYnVm
IGhlYXAgdG8gYWxsb3cgdXNlcnNwYWNlIHRvDQo+PiBhbGxvY2F0ZSBkZWNyeXB0ZWQgKHNoYXJl
ZCkgbWVtb3J5IGZvciBjb25maWRlbnRpYWwgY29tcHV0aW5nIChDb0NvKQ0KPj4gVk1zLg0KPj4N
Cj4+IE9uIENvQ28gVk1zLCBndWVzdCBtZW1vcnkgaXMgZW5jcnlwdGVkIGJ5IGRlZmF1bHQuIFRo
ZSBoYXJkd2FyZSB1c2VzIGFuDQo+PiBlbmNyeXB0aW9uIGJpdCBpbiBwYWdlIHRhYmxlIGVudHJp
ZXMgKEMtYml0IG9uIEFNRCBTRVYsICJzaGFyZWQiIGJpdCBvbg0KPj4gSW50ZWwgVERYKSB0byBj
b250cm9sIHdoZXRoZXIgYSBnaXZlbiBtZW1vcnkgYWNjZXNzIGlzIGVuY3J5cHRlZCBvcg0KPj4g
ZGVjcnlwdGVkLiBUaGUga2VybmVsJ3MgZGlyZWN0IG1hcCBpcyBzZXQgdXAgd2l0aCBlbmNyeXB0
aW9uIGVuYWJsZWQsDQo+PiBzbyBwYWdlcyByZXR1cm5lZCBieSBhbGxvY19wYWdlcygpIGFyZSBl
bmNyeXB0ZWQgaW4gdGhlIGRpcmVjdCBtYXANCj4+IGJ5IGRlZmF1bHQuIFRvIG1ha2UgdGhpcyBt
ZW1vcnkgdXNhYmxlIGZvciBkZXZpY2VzIHRoYXQgZG8gbm90IHN1cHBvcnQNCj4+IERNQSB0byBl
bmNyeXB0ZWQgbWVtb3J5IChubyBURElTUCBzdXBwb3J0KSwgaXQgaGFzIHRvIGJlIGV4cGxpY2l0
bHkNCj4+IGRlY3J5cHRlZC4gQSBjb3VwbGUgb2YgdGhpbmdzIGFyZSBuZWVkZWQgdG8gcHJvcGVy
bHkgaGFuZGxlDQo+PiBkZWNyeXB0ZWQgbWVtb3J5IGZvciB0aGUgZG1hLWJ1ZiB1c2UgY2FzZToN
Cj4+DQo+PiAtIHNldF9tZW1vcnlfZGVjcnlwdGVkKCkgb24gdGhlIGRpcmVjdCBtYXAgYWZ0ZXIg
YWxsb2NhdGlvbjoNCj4+ICAgQmVzaWRlcyBjbGVhcmluZyB0aGUgZW5jcnlwdGlvbiBiaXQgaW4g
dGhlIGRpcmVjdCBtYXAgUFRFcywgdGhpcw0KPj4gICBhbHNvIG5vdGlmaWVzIHRoZSBoeXBlcnZp
c29yIGFib3V0IHRoZSBwYWdlIHN0YXRlIGNoYW5nZS4gT24gZnJlZSwNCj4+ICAgdGhlIGludmVy
c2Ugc2V0X21lbW9yeV9lbmNyeXB0ZWQoKSBtdXN0IGJlIGNhbGxlZCBiZWZvcmUgcmV0dXJuaW5n
DQo+PiAgIHBhZ2VzIHRvIHRoZSBhbGxvY2F0b3IuIElmIHJlLWVuY3J5cHRpb24gZmFpbHMsIHBh
Z2VzDQo+PiAgIGFyZSBpbnRlbnRpb25hbGx5IGxlYWtlZCB0byBwcmV2ZW50IGRlY3J5cHRlZCBt
ZW1vcnkgZnJvbSBiZWluZw0KPj4gICByZXVzZWQgYXMgcHJpdmF0ZS4NCj4+DQo+PiAtIHBncHJv
dF9kZWNyeXB0ZWQoKSBmb3IgdXNlcnNwYWNlIGFuZCBrZXJuZWwgdmlydHVhbCBtYXBwaW5nczoN
Cj4+ICAgQW55IG5ldyBtYXBwaW5nIG9mIHRoZSBkZWNyeXB0ZWQgcGFnZXMsIGJlIGl0IHRvIHVz
ZXJzcGFjZSB2aWENCj4+ICAgbW1hcCBvciB0byBrZXJuZWwgdm1hbGxvYyBzcGFjZSB2aWEgdm1h
cCwgY3JlYXRlcyBQVEVzIGluZGVwZW5kZW50DQo+PiAgIG9mIHRoZSBkaXJlY3QgbWFwLiBUaGVz
ZSBtdXN0IGFsc28gaGF2ZSB0aGUgZW5jcnlwdGlvbiBiaXQgY2xlYXJlZCwNCj4+ICAgb3RoZXJ3
aXNlIGFjY2Vzc2VzIHRocm91Z2ggdGhlbSB3b3VsZCBzZWUgZW5jcnlwdGVkIChnYXJiYWdlKSBk
YXRhLg0KPj4NCj4+IC0gRE1BX0FUVFJfQ0NfREVDUllQVEVEIGZvciBETUEgbWFwcGluZzoNCj4+
ICAgU2luY2UgdGhlIHBhZ2VzIGFyZSBhbHJlYWR5IGRlY3J5cHRlZCwgdGhlIERNQSBBUEkgbmVl
ZHMgdG8gYmUNCj4+ICAgaW5mb3JtZWQgdmlhIERNQV9BVFRSX0NDX0RFQ1JZUFRFRCBzbyBpdCBj
YW4gbWFwIHRoZW0gY29ycmVjdGx5DQo+PiAgIGFzIHVuZW5jcnlwdGVkIGZvciBkZXZpY2UgYWNj
ZXNzLg0KPj4NCj4+IE9uIG5vbi1Db0NvIFZNcywgdGhlIHN5c3RlbV9jY19kZWNyeXB0ZWQgaGVh
cCBpcyBub3QgcmVnaXN0ZXJlZA0KPj4gdG8gcHJldmVudCBtaXN1c2UgYnkgdXNlcnNwYWNlIHRo
YXQgZG9lcyBub3QgdW5kZXJzdGFuZA0KPj4gdGhlIHNlY3VyaXR5IGltcGxpY2F0aW9ucyBvZiBl
eHBsaWNpdGx5IGRlY3J5cHRlZCBtZW1vcnkuDQo+Pg0KPj4gU2lnbmVkLW9mZi1ieTogSmlyaSBQ
aXJrbyA8amlyaUBudmlkaWEuY29tPg0KPg0KPlRoYW5rcyBmb3IgcmV3b3JraW5nIHRoaXMhIEkn
dmUgbm90IHJldmlld2VkIGl0IHN1cGVyIGNsb3NlbHksIGJ1dCBJDQo+YmVsaWV2ZSBpdCByZXNv
bHZlcyBteSBvYmplY3Rpb24gb24geW91ciBmaXJzdCB2ZXJzaW9uLg0KPg0KPkZldyBuaXRzL3F1
ZXN0aW9ucyBiZWxvdy4NCj4NCj4+IEBAIC0yOTYsNiArMzQ1LDE0IEBAIHN0YXRpYyB2b2lkIHN5
c3RlbV9oZWFwX2RtYV9idWZfcmVsZWFzZShzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmKQ0KPj4gICAg
ICAgICBmb3JfZWFjaF9zZ3RhYmxlX3NnKHRhYmxlLCBzZywgaSkgew0KPj4gICAgICAgICAgICAg
ICAgIHN0cnVjdCBwYWdlICpwYWdlID0gc2dfcGFnZShzZyk7DQo+Pg0KPj4gKyAgICAgICAgICAg
ICAgIC8qDQo+PiArICAgICAgICAgICAgICAgICogSW50ZW50aW9uYWxseSBsZWFrIHBhZ2VzIHRo
YXQgY2Fubm90IGJlIHJlLWVuY3J5cHRlZA0KPj4gKyAgICAgICAgICAgICAgICAqIHRvIHByZXZl
bnQgZGVjcnlwdGVkIG1lbW9yeSBmcm9tIGJlaW5nIHJldXNlZC4NCj4+ICsgICAgICAgICAgICAg
ICAgKi8NCj4+ICsgICAgICAgICAgICAgICBpZiAoYnVmZmVyLT5kZWNyeXB0ZWQgJiYNCj4+ICsg
ICAgICAgICAgICAgICAgICAgc3lzdGVtX2hlYXBfc2V0X3BhZ2VfZW5jcnlwdGVkKHBhZ2UpKQ0K
Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgY29udGludWU7DQo+PiArDQo+DQo+V2hhdCBhcmUg
dGhlIGNvbmRpdGlvbnMgd2hlcmUgdGhpcyB3b3VsZCBmYWlsPyBIb3cgbXVjaCBvZiBhbiBlZGdl
DQo+Y2FzZSBpcyB0aGlzPyBJIGZyZXQgdGhpcyBvcGVucyBhIERvUyB2ZWN0b3IgaWYgb25lIGlz
IGFibGUgdG8NCj5hbGxvY2F0ZSBmcm9tIHRoaXMgaGVhcCBhbmQgdGhlbiBzdHJlc3MgdGhlIHN5
c3RlbSB3aGVuIGRvaW5nIHRoZQ0KPmZyZWUuDQoNCj5Gcm9tIHdoYXQgSSBjYW4gc2VlLCB0aGUg
ZmFpbHVyZSBvZiBzZXRfbWVtb3J5X2VuY3J5cHRlZCgpIGlzIHF1aXRlDQpyYXJlLiBEb24ndCBz
ZWUgYW55IHJlYWwgRG9TIHNjZW5hcmlvIGZvciB0aGlzLiBBbGwgdGhlIGZhaWx1cmVzIHNlZW1z
DQp0byBiZSBlaXRoZXIgdGhlb3JldGljYWwgKHNhbml0eSBjaGVja3MsIG1hbGljaW91cyBWTU0p
IG9yIGNvbmN1cnJlbnQNCmtleGVjIGV4ZWN1dGlvbiBpbiBjYXNlIG9mIHg4Ni9wYXQuDQoNCg0K
Pg0KPlNob3VsZCB0aGVyZSBiZSBzb21lIGdsb2JhbCBsaXN0IG9mIGxlYWtlZCBkZWNyeXB0ZWQg
cGFnZXMgc3VjaCB0aGF0DQo+dGhlIG1tIHN1YnN5c3RlbSBjb3VsZCB0cnkgYWdhaW4gbGF0ZXIg
dG8gcmVjb3ZlciB0aGVzZT8NCg0Kc3dpb3RsYiBkb2VzIHRoZSBzYW1lIG5vbi1yZWNvdmVyeSBs
ZWFrYWdlLiBJIGJlbGl2ZSBpcyBpdCBub3Qgd29ydGgNCmltcGxlbWVudGluZyB0aGlzIGF0IHRo
aXMgdGltZSwNCg0KDQo+DQo+PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9kbWEtaGVhcC5o
IGIvaW5jbHVkZS9saW51eC9kbWEtaGVhcC5oDQo+PiBpbmRleCA2NDgzMjhhNjRiMjcuLmQ5N2I2
Njg0MTNjMSAxMDA2NDQNCj4+IC0tLSBhL2luY2x1ZGUvbGludXgvZG1hLWhlYXAuaA0KPj4gKysr
IGIvaW5jbHVkZS9saW51eC9kbWEtaGVhcC5oDQo+PiBAQCAtMTAsNiArMTAsNyBAQA0KPj4gICNk
ZWZpbmUgX0RNQV9IRUFQU19IDQo+Pg0KPj4gICNpbmNsdWRlIDxsaW51eC90eXBlcy5oPg0KPj4g
KyNpbmNsdWRlIDx1YXBpL2xpbnV4L2RtYS1oZWFwLmg+DQo+Pg0KPj4gIHN0cnVjdCBkbWFfaGVh
cDsNCj4+DQo+PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS91YXBpL2xpbnV4L2RtYS1oZWFwLmggYi9p
bmNsdWRlL3VhcGkvbGludXgvZG1hLWhlYXAuaA0KPj4gaW5kZXggYTRjZjcxNmE0OWZhLi5hYjk1
YmIzNTVlZDUgMTAwNjQ0DQo+PiAtLS0gYS9pbmNsdWRlL3VhcGkvbGludXgvZG1hLWhlYXAuaA0K
Pj4gKysrIGIvaW5jbHVkZS91YXBpL2xpbnV4L2RtYS1oZWFwLmgNCj4+IEBAIC0xOCw4ICsxOCw3
IEBADQo+PiAgLyogVmFsaWQgRkRfRkxBR1MgYXJlIE9fQ0xPRVhFQywgT19SRE9OTFksIE9fV1JP
TkxZLCBPX1JEV1IgKi8NCj4+ICAjZGVmaW5lIERNQV9IRUFQX1ZBTElEX0ZEX0ZMQUdTIChPX0NM
T0VYRUMgfCBPX0FDQ01PREUpDQo+Pg0KPj4gLS8qIEN1cnJlbnRseSBubyBoZWFwIGZsYWdzICov
DQo+PiAtI2RlZmluZSBETUFfSEVBUF9WQUxJRF9IRUFQX0ZMQUdTICgwVUxMKQ0KPj4gKyNkZWZp
bmUgRE1BX0hFQVBfVkFMSURfSEVBUF9GTEFHUyAoMCkNCj4+DQo+PiAgLyoqDQo+PiAgICogc3Ry
dWN0IGRtYV9oZWFwX2FsbG9jYXRpb25fZGF0YSAtIG1ldGFkYXRhIHBhc3NlZCBmcm9tIHVzZXJz
cGFjZSBmb3INCj4NCj5BcmUgdGhlc2UgaGVhZGVyIGNoYW5nZXMgc3RpbGwgbmVjZXNzYXJ5Pw0K
DQpPb3BzLCBsZWZ0b3ZlcnMuIFdpbGwgcmVtb3ZlLg0KDQpUaGFua3MhDQoNCj4NCj50aGFua3MN
Cj4tam9obg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8u
b3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBs
aXN0cy5saW5hcm8ub3JnCg==
