Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A9B8E606368
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Oct 2022 16:43:32 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BB5DE3F5A4
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Oct 2022 14:43:31 +0000 (UTC)
Received: from mail-oa1-f49.google.com (mail-oa1-f49.google.com [209.85.160.49])
	by lists.linaro.org (Postfix) with ESMTPS id 5285D3EBF7
	for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Oct 2022 14:43:14 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=B7stGq06;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.160.49 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-oa1-f49.google.com with SMTP id 586e51a60fabf-1364357a691so24826436fac.7
        for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Oct 2022 07:43:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=smqvS8edERBdXoNssJj7nOz3hos2ngGklMmChz3LiDA=;
        b=B7stGq06cVUMTjU4yS0CNoEtIk8uPB7kTBvFcZHHvDcghDopbkfbGHpCTCbaqJeB5x
         eh0hroOlstIDQd3CdbmD9YWrEzs/dbh2ivwdseW9pzAkDHyCFnrYZbgxhT7gy9dm2YRY
         WF6g/dhYEdgr1vyG9g/eSnCh7XDn+Sw0mh1Xn9FJS1Nk6vR6rWg3N8mspvJOIr2CohsE
         SLYak9NI9Cu7l/L1mMKbp+RCgDgeTFXavok54aiA8kPCXx8DzGb1FcD+NqGBDsrUSqOs
         CkiwCq+WTcAYwtDuuYd12OrhTSIvq3iHaTe0qNf87Y0D5W40vyhLTm+7fcGqh8WPh0Qn
         ti0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=smqvS8edERBdXoNssJj7nOz3hos2ngGklMmChz3LiDA=;
        b=S6V0/JqKg2pxSNcitmWzAU61QvBXc6FFTOfd5LebkbnPB7QCjkHQph/WqaI5JyeByJ
         8IPTc14lFuhCnqqZg4Dv4zR9GLZkMuJzOUJb/lxw9s9e36l70SP8Iq+vMogWLLuq1zcL
         CICwgm9HspSVXEPdHBUV9cPrZDtNoo7pnB67wg8Uh+02RjcnOw0BK4pTif9iBlOljDrc
         wcVGzLU45oPHc5SW/MMUGBqK4PdWBBEzxFnEr5Vprd9krvAjQ+01q7pEkOs/o6awvFnA
         SPgwKZeGLiuuwf56XVrD3MuQf2zY2iaiv6ESU+3SUG6LxpUSWs1KcK+iJK4Vu/w/UguM
         VpPQ==
X-Gm-Message-State: ACrzQf0dI3/3WtxuezrgOxtvB2Vt1ZXwjcSz8hrR0w18pj9uUlAQXZrE
	Wqgg/89hRhiJWpWDk9QpcJp5Pd984cC/LhgmuH8=
X-Google-Smtp-Source: AMsMyM6M4RUwVGE08KoWFaWKLprXNDwsz60pGxBYFegIiptEY3Pp0sWMLbxfn71oqEs2HdISiys9npc7rI5zT9+nmbU=
X-Received: by 2002:a05:6870:4286:b0:132:756f:6b97 with SMTP id
 y6-20020a056870428600b00132756f6b97mr8438996oah.38.1666276993672; Thu, 20 Oct
 2022 07:43:13 -0700 (PDT)
MIME-Version: 1.0
References: <20221020121316.3946-1-christian.koenig@amd.com> <20221020121316.3946-3-christian.koenig@amd.com>
In-Reply-To: <20221020121316.3946-3-christian.koenig@amd.com>
From: Rob Clark <robdclark@gmail.com>
Date: Thu, 20 Oct 2022 07:43:02 -0700
Message-ID: <CAF6AEGsw=J6Y5jd0A5_hVg1A5BF87hz00Ggmbi8OtTjPJKMDGA@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: -------
X-Rspamd-Queue-Id: 5285D3EBF7
X-Spamd-Result: default: False [-7.60 / 15.00];
	DWL_DNSWL_HI(-3.50)[gmail.com:dkim];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-0.50)[209.85.160.49:from];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.160.49:from];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_CC(0.00)[pengutronix.de,ndufresne.ca,gmail.com,linaro.org,ffwll.ch,lists.freedesktop.org,lists.linaro.org,vger.kernel.org,amd.com];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-0.875];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_TWO(0.00)[2]
Message-ID-Hash: ZLN36G5W227TY7WCK5KTA566AMJISPYZ
X-Message-ID-Hash: ZLN36G5W227TY7WCK5KTA566AMJISPYZ
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: nicolas@ndufresne.ca, ppaalanen@gmail.com, sumit.semwal@linaro.org, daniel@ffwll.ch, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/3] drm/prime: set the dma_coherent flag for export
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZLN36G5W227TY7WCK5KTA566AMJISPYZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCBPY3QgMjAsIDIwMjIgYXQgNToxMyBBTSBDaHJpc3RpYW4gS8O2bmlnDQo8Y2tvZW5p
Zy5sZWljaHR6dW1lcmtlbkBnbWFpbC5jb20+IHdyb3RlOg0KPg0KPiBXaGVuIGEgZGV2aWNlIGRy
aXZlciBpcyBzbm9vcGluZyB0aGUgQ1BVIGNhY2hlIGR1cmluZyBhY2Nlc3Mgd2UgYXNzdW1lDQo+
IHRoYXQgYWxsIGltcG9ydGVycyBuZWVkIHRvIGJlIGFibGUgdG8gc25vb3AgdGhlIENQVSBjYWNo
ZSBhcyB3ZWxsLg0KPg0KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3Rp
YW4ua29lbmlnQGFtZC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2RybV9wcmltZS5j
IHwgMiArKw0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQ0KPg0KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9wcmltZS5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9w
cmltZS5jDQo+IGluZGV4IDIwZTEwOWE4MDJhZS4uZDVjNzBiNmZlOGE0IDEwMDY0NA0KPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vZHJtX3ByaW1lLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2Ry
bV9wcmltZS5jDQo+IEBAIC0yOCw2ICsyOCw3IEBADQo+DQo+ICAjaW5jbHVkZSA8bGludXgvZXhw
b3J0Lmg+DQo+ICAjaW5jbHVkZSA8bGludXgvZG1hLWJ1Zi5oPg0KPiArI2luY2x1ZGUgPGxpbnV4
L2RtYS1tYXAtb3BzLmg+DQo+ICAjaW5jbHVkZSA8bGludXgvcmJ0cmVlLmg+DQo+ICAjaW5jbHVk
ZSA8bGludXgvbW9kdWxlLmg+DQo+DQo+IEBAIC04ODksNiArODkwLDcgQEAgc3RydWN0IGRtYV9i
dWYgKmRybV9nZW1fcHJpbWVfZXhwb3J0KHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqLA0KPiAg
ICAgICAgICAgICAgICAgLnNpemUgPSBvYmotPnNpemUsDQo+ICAgICAgICAgICAgICAgICAuZmxh
Z3MgPSBmbGFncywNCj4gICAgICAgICAgICAgICAgIC5wcml2ID0gb2JqLA0KPiArICAgICAgICAg
ICAgICAgLmNvaGVyZW50ID0gZGV2X2lzX2RtYV9jb2hlcmVudChkZXYtPmRldiksDQoNClRvIHNl
dCB0aGUgY29oZXJlbnQgZmxhZyBjb3JyZWN0bHksIEkgdGhpbmsgSSdkIG5lZWQgYSB3YXkgdG8g
b3ZlcnJpZGUNCm9uIGEgcGVyIGJ1ZmZlciBiYXNpcywgc2luY2UgY29oZXJlbmN5IGlzIGEgcHJv
cGVydHkgb2YgdGhlIGdwdQ0KcGd0YWJsZXMgKHdoaWNoIGluIHRoZSBtc20gY2FzZSBpcyBhbiBp
bW11dGFibGUgcHJvcGVydHkgb2YgdGhlIGdlbQ0Kb2JqZWN0KS4gIFdlIGFsc28gaGF2ZSBzb21l
IGF3a3dhcmRuZXNzIHRoYXQgZHJtLT5kZXYgaXNuJ3QgYWN0dWFsbHkNCnRoZSBHUFUsIHRoYW5r
cyB0byB0aGUga2VybmVscyBkZXZpY2UgbW9kZWwgc2VlaW5nIGEgY29sbGVjdGlvbiBvZg0Kb3Ro
ZXIgc21hbGwgZGV2aWNlcyBzaG9laG9ybmVkIGludG8gYSBzaW5nbGUgZHJtIGRldmljZSB0byBm
aXQNCnVzZXJzcGFjZSdzIHZpZXcgb2YgdGhlIHdvcmxkLiAgU28gcmVseWluZyBvbiBkcm0tPmRl
diBpc24ndCByZWFsbHkNCmdvaW5nIHRvIGdpdmUgc2Vuc2libGUgcmVzdWx0cy4NCg0KSSBndWVz
cyBtc20gY291bGQganVzdCBidXJ5IG91ciBoZWFkcyBpbiB0aGUgc2FuZCBhbmQgY29udGludWUg
dG8gZG8NCnRoaW5ncyB0aGUgd2F5IHdlIGhhdmUgYmVlbiAoYnVmZmVycyB0aGF0IGFyZSBtYXBw
ZWQgY2FjaGVkLWNvaGVyZW50DQphcmUgb25seSBzZWxmLXNoYXJlZCkgYnV0IHdvdWxkIGJlIG5p
Y2UgdG8gY2F0Y2ggaWYgdXNlcnNwYWNlIHRyaWVkIHRvDQppbXBvcnQgb25lIGludG8gKGZvciBl
eCkgdjRsMi4uDQoNCkJSLA0KLVINCg0KPiAgICAgICAgICAgICAgICAgLnJlc3YgPSBvYmotPnJl
c3YsDQo+ICAgICAgICAgfTsNCj4NCj4gLS0NCj4gMi4yNS4xDQo+DQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlz
dCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBh
biBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
