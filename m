Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 56903749EBC
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  6 Jul 2023 16:13:31 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 64ADA43CC0
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  6 Jul 2023 14:13:30 +0000 (UTC)
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	by lists.linaro.org (Postfix) with ESMTPS id 070CA3ED2A
	for <linaro-mm-sig@lists.linaro.org>; Thu,  6 Jul 2023 14:13:15 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=KIbzE3tB;
	spf=pass (lists.linaro.org: domain of sumit.semwal@linaro.org designates 209.85.167.48 as permitted sender) smtp.mailfrom=sumit.semwal@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-4fb41682472so954027e87.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 06 Jul 2023 07:13:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688652794; x=1691244794;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1yEX9Dwmq9IkMrVkFypkMcFrtVKqN7sxBEMnk/SfYko=;
        b=KIbzE3tBdsBciOOqSRH6/ZZfBehQKzbpLVe1oWyG9ekBBtoqnRWtHPaFa4zHIZkzkG
         TOFHrh+UvfoOV1vfnabddR9BxdOMEAtBmlcSzgEain4XZ7kx1hKTY7BXWIZjLBd47k5R
         nXLVu9RK9ofZQfWoICT9wmFOtHcQ0a9b8zgrGnd4RMEKfPahZD5ul67d/y/AwW26YKbP
         WLqaUtcrBoO+AFwc2zsxOiGq8hKPsYXgPnPO5LkBH4RjehlRPUSl2NXX4ERqCdg40JSt
         c9zmYv1wziwZPoolLx0EHe9SO0jUlyFYY6pAC9ANzRJzhHdJAWsLak6dYIfoanqP7MuE
         u0cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688652794; x=1691244794;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1yEX9Dwmq9IkMrVkFypkMcFrtVKqN7sxBEMnk/SfYko=;
        b=RbGfAZwHiP3B+eatblpJQDHDxQM3vNbQSpYpbE0901oGv2A1korRZUMliZLbJOOZHs
         gRVKOv1H31DRjak0ubxyhq7L4R7haxRFuDoibnNxPHJ4X/88l3Zy/hEfjTVVLvdbCnaW
         beUlbdvFnYClrtmMbZjio8IGsRlb4BGEVQBS4SDO8ME1OElzNr8uahlGWiO4xxmTFM3L
         48PeK7dreGHU+//5L49iq68Xj4ABKbdEkJVFuzQrSuC5l3mvy8coqQWtKYlq+379k+PP
         jvegkS9Akx0jTcWDZAn8VqkVlH9n5qhYftdDsTIdSf8eJFLQw09eSRAzJLsK2qp1691K
         j0AA==
X-Gm-Message-State: ABy/qLYdU2DT5PwaLeSnsYZJBy8pJt3gx3hZ/JBkkxAd8ll52awu2E6U
	P/8r2b2ZLHhJtQ+Np0GFqExjsnO4rOiWjivgS1LpR4GN
X-Google-Smtp-Source: APBJJlF2RWXaT3XjF4XIoYgd+D9lcGt7c9IIXSMJx5LdyPV6oT4nr9r3uapzOVUQJRnkj5wq6GFrBIH0wyFRrEbvlr0=
X-Received: by 2002:a05:6512:3c9f:b0:4fb:829b:196e with SMTP id
 h31-20020a0565123c9f00b004fb829b196emr2526477lfv.2.1688652793506; Thu, 06 Jul
 2023 07:13:13 -0700 (PDT)
MIME-Version: 1.0
References: <b09f1996-3838-4fa2-9193-832b68262e43@moroto.mountain> <ed3ef0ec-140d-59f1-b37e-4731d763a11b@amd.com>
In-Reply-To: <ed3ef0ec-140d-59f1-b37e-4731d763a11b@amd.com>
From: Sumit Semwal <sumit.semwal@linaro.org>
Date: Thu, 6 Jul 2023 19:43:01 +0530
Message-ID: <CAO_48GF61m4-RtiTEf9a5ntoX6jY66=hLTWe0A1XRUO8PsZkAw@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_ONE(0.00)[1];
	FREEMAIL_CC(0.00)[linaro.org,padovan.org,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.48:from]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 070CA3ED2A
X-Spamd-Bar: --------
Message-ID-Hash: KSN34LIACEMP6MCX2J6QGZSOOXPQJXFQ
X-Message-ID-Hash: KSN34LIACEMP6MCX2J6QGZSOOXPQJXFQ
X-MailFrom: sumit.semwal@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Dan Carpenter <dan.carpenter@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kernel-janitors@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] dma-buf: fix an error pointer vs NULL bug
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KSN34LIACEMP6MCX2J6QGZSOOXPQJXFQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCA2IEp1bCAyMDIzIGF0IDE4OjI0LCBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4u
a29lbmlnQGFtZC5jb20+IHdyb3RlOg0KPg0KPiBBbSAwNi4wNy4yMyB1bSAxNDozNyBzY2hyaWVi
IERhbiBDYXJwZW50ZXI6DQo+ID4gU21hdGNoIGRldGVjdGVkIHBvdGVudGlhbCBlcnJvciBwb2lu
dGVyIGRlcmVmZXJlbmNlLg0KPiA+DQo+ID4gICAgICBkcml2ZXJzL2dwdS9kcm0vZHJtX3N5bmNv
YmouYzo4ODggZHJtX3N5bmNvYmpfdHJhbnNmZXJfdG9fdGltZWxpbmUoKQ0KPiA+ICAgICAgZXJy
b3I6ICdmZW5jZScgZGVyZWZlcmVuY2luZyBwb3NzaWJsZSBFUlJfUFRSKCkNCj4gPg0KPiA+IFRo
ZSBlcnJvciBwb2ludGVyIGNvbWVzIGZyb20gZG1hX2ZlbmNlX2FsbG9jYXRlX3ByaXZhdGVfc3R1
YigpLiAgT25lDQo+ID4gY2FsbGVyIGV4cGVjdGVkIGVycm9yIHBvaW50ZXJzIGFuZCBvbmUgZXhw
ZWN0ZWQgTlVMTCBwb2ludGVycy4gIENoYW5nZQ0KPiA+IGl0IHRvIHJldHVybiBOVUxMIGFuZCB1
cGRhdGUgdGhlIGNhbGxlciB3aGljaCBleHBlY3RlZCBlcnJvciBwb2ludGVycywNCj4gPiBkcm1f
c3luY29ial9hc3NpZ25fbnVsbF9oYW5kbGUoKSwgdG8gY2hlY2sgZm9yIE5VTEwgaW5zdGVhZC4N
Cj4gPg0KPiA+IEZpeGVzOiBmNzgxZjY2MWU4YzkgKCJkbWEtYnVmOiBrZWVwIHRoZSBzaWduYWxp
bmcgdGltZSBvZiBtZXJnZWQgZmVuY2VzIHYzIikNCj4gPiBTaWduZWQtb2ZmLWJ5OiBEYW4gQ2Fy
cGVudGVyIDxkYW4uY2FycGVudGVyQGxpbmFyby5vcmc+DQo+DQpUaGFua3MgZm9yIGNhdGNoaW5n
IHRoaXMhDQo+IFJldmlld2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmln
QGFtZC5jb20+DQpSZXZpZXdlZC1ieTogU3VtaXQgU2Vtd2FsIDxzdW1pdC5zZW13YWxAbGluYXJv
Lm9yZz4NCj4NCj4gU2hvdWxkIEkgcHVzaCB0aGF0IG9uZSB0byBkcm0tbWlzYy1maXhlcz8NCklm
IHlvdSBoYXZlbid0IHB1c2hlZCBhbHJlYWR5LCBJIGNhbiBwdXNoIGl0IG5vdy4NCj4NCj4gUmVn
YXJkcywNCj4gQ2hyaXN0aWFuLg0KDQpCZXN0LA0KU3VtaXQuDQo+DQo+ID4gLS0tDQo+ID4gdjI6
IEZpeCBpdCBpbiBkbWFfZmVuY2VfYWxsb2NhdGVfcHJpdmF0ZV9zdHViKCkgaW5zdGVhZCBvZg0K
PiA+ICAgICBfX2RtYV9mZW5jZV91bndyYXBfbWVyZ2UoKS4NCj4gPg0KPiA+DQo+ID4gICBkcml2
ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMgICB8IDIgKy0NCj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9k
cm1fc3luY29iai5jIHwgNCArKy0tDQo+ID4gICAyIGZpbGVzIGNoYW5nZWQsIDMgaW5zZXJ0aW9u
cygrKSwgMyBkZWxldGlvbnMoLSkNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1i
dWYvZG1hLWZlbmNlLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMNCj4gPiBpbmRleCBh
ZDA3NmYyMDg3NjAuLjhhYThmOGNiNzA3MSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2RtYS1i
dWYvZG1hLWZlbmNlLmMNCj4gPiArKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMNCj4g
PiBAQCAtMTYwLDcgKzE2MCw3IEBAIHN0cnVjdCBkbWFfZmVuY2UgKmRtYV9mZW5jZV9hbGxvY2F0
ZV9wcml2YXRlX3N0dWIoa3RpbWVfdCB0aW1lc3RhbXApDQo+ID4NCj4gPiAgICAgICBmZW5jZSA9
IGt6YWxsb2Moc2l6ZW9mKCpmZW5jZSksIEdGUF9LRVJORUwpOw0KPiA+ICAgICAgIGlmIChmZW5j
ZSA9PSBOVUxMKQ0KPiA+IC0gICAgICAgICAgICAgcmV0dXJuIEVSUl9QVFIoLUVOT01FTSk7DQo+
ID4gKyAgICAgICAgICAgICByZXR1cm4gTlVMTDsNCj4gPg0KPiA+ICAgICAgIGRtYV9mZW5jZV9p
bml0KGZlbmNlLA0KPiA+ICAgICAgICAgICAgICAgICAgICAgICZkbWFfZmVuY2Vfc3R1Yl9vcHMs
DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fc3luY29iai5jIGIvZHJpdmVy
cy9ncHUvZHJtL2RybV9zeW5jb2JqLmMNCj4gPiBpbmRleCAwNDU4OWEzNWViMDkuLmU1OTJjNWRh
NzBjZSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX3N5bmNvYmouYw0KPiA+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fc3luY29iai5jDQo+ID4gQEAgLTM1NSw4ICszNTUs
OCBAQCBzdGF0aWMgaW50IGRybV9zeW5jb2JqX2Fzc2lnbl9udWxsX2hhbmRsZShzdHJ1Y3QgZHJt
X3N5bmNvYmogKnN5bmNvYmopDQo+ID4gICB7DQo+ID4gICAgICAgc3RydWN0IGRtYV9mZW5jZSAq
ZmVuY2UgPSBkbWFfZmVuY2VfYWxsb2NhdGVfcHJpdmF0ZV9zdHViKGt0aW1lX2dldCgpKTsNCj4g
Pg0KPiA+IC0gICAgIGlmIChJU19FUlIoZmVuY2UpKQ0KPiA+IC0gICAgICAgICAgICAgcmV0dXJu
IFBUUl9FUlIoZmVuY2UpOw0KPiA+ICsgICAgIGlmICghZmVuY2UpDQo+ID4gKyAgICAgICAgICAg
ICByZXR1cm4gLUVOT01FTTsNCj4gPg0KPiA+ICAgICAgIGRybV9zeW5jb2JqX3JlcGxhY2VfZmVu
Y2Uoc3luY29iaiwgZmVuY2UpOw0KPiA+ICAgICAgIGRtYV9mZW5jZV9wdXQoZmVuY2UpOw0KPg0K
DQoNCi0tIA0KVGhhbmtzIGFuZCByZWdhcmRzLA0KDQpTdW1pdCBTZW13YWwgKGhlIC8gaGltKQ0K
VGVjaCBMZWFkIC0gTENHLCBWZXJ0aWNhbCBUZWNobm9sb2dpZXMNCkxpbmFyby5vcmcg4pSCIE9w
ZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29Dcw0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwg
dG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
