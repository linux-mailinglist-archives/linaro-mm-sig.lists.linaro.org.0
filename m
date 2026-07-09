Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id IddnJfCtT2qZmgIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 09 Jul 2026 16:19:28 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 16A87732214
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 09 Jul 2026 16:19:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=linaro.org header.s=google header.b=I3igrjb2;
	dmarc=pass (policy=none) header.from=linaro.org;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org"
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2F88840D71
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2026 14:19:27 +0000 (UTC)
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	by lists.linaro.org (Postfix) with ESMTPS id 6055D400FA
	for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Jul 2026 14:19:16 +0000 (UTC)
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-c15d47266baso235197466b.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 09 Jul 2026 07:19:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1783606755; x=1784211555; darn=lists.linaro.org;
        h=mime-version:user-agent:content-transfer-encoding:content-type
         :references:in-reply-to:date:cc:to:from:subject:message-id:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=mbTByd7x2B0SVAGizj79lBbxC5X4KQlpFVsjQoIekHk=;
        b=I3igrjb2qpEO+wkFHnzGifHTf/dwoEKaOEKE0viz3egbQe07ufDVofgx60oiZod4tD
         z/6VeY+HHD+woHhiMoaZ3br+emxE07uGHkowF4v6/WXJxS8itZTydWZl43wCHOyjF63q
         TWGl8cCTpxyi78bfEHN1gzB0+x9BI6mdJdJpf3P2hWEAusTx5Vv8s3PnmPq/TGRQSVfX
         1J8TYg0FwKJcl94lfdepLXPPYxKZhSbyvcKGBTVO4A8MJpuj9eNakR7XmBXV3bO4O8ru
         o+Hmo6Bo08FSk6wGLnxmXvymNWeE09/9OUhmM24BbP8ncOEQqk5pq3QZ/lJWKbOcE8Sy
         +JlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783606755; x=1784211555;
        h=mime-version:user-agent:content-transfer-encoding:content-type
         :references:in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=mbTByd7x2B0SVAGizj79lBbxC5X4KQlpFVsjQoIekHk=;
        b=Tw7Oh4mYkVGBiiX/vbVUsNwxQ8kZGEYTdUE1MhEhaBojzHYEvzaGmI6fEMZ1fV5LbC
         hcG0xZLB1Tzk5Ov1tDqnFjOpB0BbXky+sfggX9M4wX/WZ9aiQgZKZkGGxWZb7JY+zS30
         iZjqGZDOzN/AeQ5bB+Hy8MLHLvXD19c3hPechm4Nz4fQWXkGuogPeehipWTj/tTsUmTL
         64ZiVoQbhz5Lr70Ow7kITHaa06DZ7KzVs1VluyUbH1aOREHPP0MrEFxwv0wZDdUB+YU4
         AyCAghaed/d3JXReQrbby4C+RLPOM+gc1rSuC0t3arE6lzQ5AF1ozYoP0Q+C9fAWYvT5
         /Ycg==
X-Forwarded-Encrypted: i=1; AHgh+Rqia5LGqCFmzR3a9otF7Tihp92Tu04azqxEMdv7HksfnxZ1FZwtZF4WutTIOROu7NsEat0oquT6KxRB6PCc@lists.linaro.org
X-Gm-Message-State: AOJu0Yxr+5XVGVwpyg4Kaw+OC7zWWKRHxMyjyZpMH9fgELPZY+n1P4f0
	k4mgWXmS+dBcGUYhYgQOCl3Um9bu+RAA/MxjbZSgw4/kutnbXJEu/tsfNIUF27gkGACmxQ==
X-Gm-Gg: AfdE7ckFftnImvJLVrKQWshvC9voHO7J98+vC4N5EmSNxO82y2rHgJQfbKwkB/vRuR9
	70bojuPU6shV26+Vat06HkNQX6NSgmlRZse+WAGbuyeiZhyZzhbKd5qlhHOFL0sXmX/uTmEIV9i
	2MDFm37YakVk5czO8OVwpa9htQnkjJOwV8zIRFMR5TcAfxBO+QvAR+eHhfIaKWqGDtMxWH8owAt
	29B43GcYlqKhJHDWwHZXgt+PcIkxQXF9jGOskfBK4Htq33Sq6wPAT4qJNZzKrPy3Tbz9HXlx5Ji
	pRY830Iq2wfMh62lct81FQsRy0wxVzM4txft2RTQMvQDnzo/V3V1MPJZYVu4xU6grq0rN/AVoht
	/hVe6a+lejc6A4Zyg9eTyOqhS/HJ0feXA5iSrJuuWrclWf82qi+/3E5KctXptUIL0Zlc8vs1xPk
	mXgpCE+o0XErOOq6f+8X7E
X-Received: by 2002:a17:907:e146:b0:c15:b55b:7826 with SMTP id a640c23a62f3a-c15ce0c03f0mr176642766b.39.1783606755075;
        Thu, 09 Jul 2026 07:19:15 -0700 (PDT)
Received: from [10.1.1.102] ([212.129.81.133])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c15ae0bb618sm497210466b.20.2026.07.09.07.19.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jul 2026 07:19:14 -0700 (PDT)
Message-ID: <899942cc84af7a82a35b4ca34b486c40327fd543.camel@linaro.org>
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: phasta@kernel.org, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>,  Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>,
 Christian =?ISO-8859-1?Q?K=F6nig?=	 <christian.koenig@amd.com>, Tvrtko
 Ursulin <tvrtko.ursulin@igalia.com>,  Boris Brezillon
 <boris.brezillon@collabora.com>, Danilo Krummrich <dakr@kernel.org>
Date: Thu, 09 Jul 2026 15:19:30 +0100
In-Reply-To: <1ccfc0b5d1696a8dec4756b675294e7fb41ab5ff.camel@mailbox.org>
References: <20260708-linux-drm_crtc_fix2-v2-0-cf72be75d75a@linaro.org>
		 <20260708-linux-drm_crtc_fix2-v2-1-cf72be75d75a@linaro.org>
	 <1ccfc0b5d1696a8dec4756b675294e7fb41ab5ff.camel@mailbox.org>
User-Agent: Evolution 3.56.2-8+build1 
MIME-Version: 1.0
X-Spamd-Bar: ---
Message-ID-Hash: 7VC6EEOLIKDEQYRJQC4KZJYPR2SN27MB
X-Message-ID-Hash: 7VC6EEOLIKDEQYRJQC4KZJYPR2SN27MB
X-MailFrom: andre.draszik@linaro.org
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Peter Griffin <peter.griffin@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, Juan Yescas <jyescas@google.com>, kernel-team@android.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 1/2] drm/drm_crtc: ensure dma_fence_ops remain valid during device unbind
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7VC6EEOLIKDEQYRJQC4KZJYPR2SN27MB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.91 / 15.00];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:phasta@kernel.org,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:tvrtko.ursulin@igalia.com,m:boris.brezillon@collabora.com,m:dakr@kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:peter.griffin@linaro.org,m:tudor.ambarus@linaro.org,m:jyescas@google.com,m:kernel-team@android.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[19];
	FREEMAIL_TO(0.00)[kernel.org,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,igalia.com,collabora.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[andre.draszik@linaro.org,linaro-mm-sig-bounces@lists.linaro.org];
	FORWARDED(0.00)[lists@lfdr.de];
	R_DKIM_REJECT(0.00)[linaro.org:s=google];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:-];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[linaro.org,none];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:from_mime,linaro.org:email,linaro.org:mid,sashiko.dev:url,lists.linaro.org:from_smtp,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 16A87732214

SGkgUGhpbGlwcCwNCg0KT24gVGh1LCAyMDI2LTA3LTA5IGF0IDE0OjMyICswMjAwLCBQaGlsaXBw
IFN0YW5uZXIgd3JvdGU6DQo+ICtDYyBEYW5pbG8gKHdobyBpcyBjdXJyZW50bHkgY29uY2VybmVk
IHdpdGggZHJtX2RldmljZSBsaWZlIHRpbWVzKQ0KPiANCj4gT24gV2VkLCAyMDI2LTA3LTA4IGF0
IDE2OjIyICswMTAwLCBBbmRyw6kgRHJhc3ppayB3cm90ZToNCj4gPiANCj4gDQo+IFvigKZdDQo+
IA0KPiA+IExpbms6IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDYxOC1saW51
eC1kcm1fY3J0Y19maXgyLXYxLTEtYzAzZTc3YjM2ZjM0QGxpbmFyby5vcmc/cGFydD0xDQo+ID4g
U2lnbmVkLW9mZi1ieTogQW5kcsOpIERyYXN6aWsgPGFuZHJlLmRyYXN6aWtAbGluYXJvLm9yZz4N
Cj4gDQo+IEkgYW0gdGVtcHRlZCB0byB0aGluayB0aGF0IHRoaXMgYWxzbyBuZWVkcyBhIEZpeGVz
IGFuZCBuZWVkcyB0byBiZQ0KPiBiYWNrcG9ydGVkIGludG8gc3RhYmxlIGtlcm5lbHMsIGRvZXNu
J3QgaXQ/IEVzcGVjaWFsbHkgaWYgdGhlIEJVR19PTg0KPiBkaXNhcHBlYXJzIGluIHN0YWJsZSBr
ZXJuZWxzLg0KDQpHb29kIHBvaW50LCB0aGFua3MuIEkgZm9yZ290IHRvIGFkZCB0aGlzIGluIGFu
ZCB3aWxsIHRyeSB0byBmaW5kIGEgcmVhc29uYWJsZQ0KY29tbWl0IHRvIHJlbGF0ZSB0by4NCg0K
PiANCj4gPiAtLS0NCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9kcm1fY3J0Yy5jIHwgNiArKysrKysN
Cj4gPiDCoDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKykNCj4gPiANCj4gPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9jcnRjLmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2Ny
dGMuYw0KPiA+IGluZGV4IDYzZWFkOGJhNjc1Ni4uZDU1ZjEzNzdlYzM2IDEwMDY0NA0KPiA+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fY3J0Yy5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2RybV9jcnRjLmMNCj4gPiBAQCAtNTAxLDYgKzUwMSwxMiBAQCB2b2lkIGRybV9jcnRjX2NsZWFu
dXAoc3RydWN0IGRybV9jcnRjICpjcnRjKQ0KPiA+IMKgew0KPiA+IMKgCXN0cnVjdCBkcm1fZGV2
aWNlICpkZXYgPSBjcnRjLT5kZXY7DQo+ID4gwqANCj4gPiArCS8qIEVuc3VyZSBvdXIgZG1hX2Zl
bmNlX29wcyByZW1haW4gdmFsaWQgZm9yIGFuIFJDVSBncmFjZSBwZXJpb2QgYWZ0ZXINCj4gPiAr
CSAqIHRoZSBmZW5jZSBpcyBzaWduYWxlZC4gVGhpcyBpcyBuZWNlc3NhcnkgYmVjYXVzZSBvdXIg
ZG1hX2ZlbmNlX29wcw0KPiA+ICsJICogZGVyZWZlcmVuY2UgY3J0Yy0+ZGV2Lg0KPiA+ICsJICov
DQo+ID4gKwlzeW5jaHJvbml6ZV9yY3UoKTsNCj4gDQo+IG5pdDoNCj4gSSBndWVzcyB0aGlzIGlz
IHRoZSBvbmx5IHBsYWNlIHdoZXJlIG9uZSBjYW4gcmVhc29uYWJseSBwdXQgdGhlDQo+IHN5bmNo
cm9uaXplX3JjdSgpLiBCdXQgSSB3b3VsZCBoaW50IGF0IHRoZSBSQ1UgZGVsYXkgaW4gdGhlIGZ1
bmN0aW9uJ3MNCj4gZG9jdS4NCg0KVW5mb3J0dW5hdGVseSwgdGhpcyBzdGlsbCBsb29rcyBsaWtl
IGFuIGluY29tcGxldGUgZml4IC0NCmh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2
MDYxOC1saW51eC1kcm1fY3J0Y19maXgyLXYxLTEtYzAzZTc3YjM2ZjM0QGxpbmFyby5vcmc/cGFy
dD0xDQoNCk15IG5leHQgdmVyc2lvbiB3aWxsIHNpbXBseSBjb3B5IHRoZSByZWxldmFudCBzdHJp
bmdzIGludG8gYSBjdXN0b20NCg0Kc3RydWN0IGRybV9jcnRjX2ZlbmNlIHsNCglzdHJ1Y3QgZG1h
X2ZlbmNlIGJhc2U7DQoJY2hhciBkcml2ZXJfbmFtZVszMl07DQoJY2hhciB0aW1lbGluZV9uYW1l
WzMyXTsNCn07DQoNCm9yIHNpbWlsYXIgYXMgcGFydCBvZiBkcm1fY3J0Y19jcmVhdGVfZmVuY2Uo
KSBhbmQganVzdCB1c2UgdGhvc2UgYXMgcGFydA0Kb2YgdGhlIGRtYV9mZW5jZV9vcHMuIFRoYXQg
YXBwcm9hY2ggc2hvdWxkIGF2b2lkIGFsbCByYWNlIGNvbmRpdGlvbnMgYW5kDQpjb3JuZXIgY2Fz
ZXMgd2l0aCBSQ1UuDQoNCkknbGwgYWxzbyBtYWtlIHN1cmUgdG8gdXBkYXRlIHJlbGV2YW50IGRv
Y3VtZW50YXRpb24uDQoNCg0KQ2hlZXJzLA0KQW5kcmUnDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBs
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
