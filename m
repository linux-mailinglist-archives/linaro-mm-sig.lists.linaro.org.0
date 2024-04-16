Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 108238A7219
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 16 Apr 2024 19:19:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 43CE23F0B5
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 16 Apr 2024 17:19:22 +0000 (UTC)
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	by lists.linaro.org (Postfix) with ESMTPS id 79A163F0B5
	for <linaro-mm-sig@lists.linaro.org>; Tue, 16 Apr 2024 17:19:19 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=kmVf5JbZ;
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of jkardatzke@google.com designates 209.85.214.173 as permitted sender) smtp.mailfrom=jkardatzke@google.com
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-1e44f82ff9cso6335ad.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 16 Apr 2024 10:19:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1713287958; x=1713892758; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pMzpM+93sB8KN+aihvsI4sj2s8RINAbT1I+ikFGc/QQ=;
        b=kmVf5JbZkCZqSlwFHB1rO14kWrHIMa0MCBLlrpY0tRyrVb1sNLibPCx1vH1sQDpWy4
         /3Q2Q8c4LzxPZNNVTP8uU1oiLyW8NiLfsnWK4ZmQLURgcXDCV9Tjv6CFt14mGbpEAEiW
         UqTszvmeq7lhaAqMHiHqusP0YHrdotv9NMAIL+pSbfnvjo2jtk0xQfI7FFAxptptbsDA
         bpHNmL5DSoqNSfE6sdSpcSLUIGEgryNxqtQYpuX6yMP8DfTMA3rhezTIedZDgIYAYY8T
         goxydWaIVNkh9htuO8cgC8CPjzhZNigVUU75MoLF8M/8SXeWJ2UZsU74wPH8uqZqemMj
         CoPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713287958; x=1713892758;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pMzpM+93sB8KN+aihvsI4sj2s8RINAbT1I+ikFGc/QQ=;
        b=v8TD229rGCebc56E20C35HB5SsGCyp4JY/sgMmwTsQybvULQlmYRDACiVBRaw9t/pk
         8sBkH1rUjbw4c2yWgYnvqCPE4DiI6Tmu11tFdNZ5j5bj/y0iS2qEjplgSlT51iBlZnSq
         hgHlze08nyk9CiAt4c+I0bSjD0Ntq/KdqgKqim2TB34XFOpjATqe6QDHGKGyxdgPIwls
         neRSykCdKW2qrLfMoUvvtV8mk6JU8MidpEcD8Y5yNePiOzYdfea8PJW25JVW7P86VFQc
         oNTk/knmH6sNw+h+e/X5906FZJ66ESQZw5n+cjIQmwB66hChiiBtACIlHbCbZuqh3+E9
         e05Q==
X-Forwarded-Encrypted: i=1; AJvYcCW8r/sfw6c4sHbemuxrTEfAfM49FVhwHk6Gka2wg1BsD53F7G1ghQ2kr5ZYHkCgFtAfWBCFLYV+Q3FejO3ueIDvD6p2l/y31vqk6xge6NA=
X-Gm-Message-State: AOJu0Yx8maDmR2EvkeCuMVOG57IGdQs4H7NWJp/VAFVRNp1N7DqIVMTg
	ZqiHJOCDK5U+S50ljGSbFgn5vcBavdWa7XmlRuRySFFaU+PAnCMzB0i6j13qj1rWnrMchhw5/vM
	DQRs3G1MjHrXfUckhut4g6sKtpw488lIMseI=
X-Google-Smtp-Source: AGHT+IE+6v3wDbegK+Ux9rAhzTqqKq8TNFIZbmfaam/cohc7jxMrIVpQZc4dbB+03Ft2nzo9gRjOdyXae1RXd7Onh9g=
X-Received: by 2002:a17:902:fc8b:b0:1e4:33a6:b0d4 with SMTP id
 mf11-20020a170902fc8b00b001e433a6b0d4mr258654plb.9.1713287958225; Tue, 16 Apr
 2024 10:19:18 -0700 (PDT)
MIME-Version: 1.0
References: <20240403102701.369-1-shawn.sung@mediatek.com> <20240403102701.369-2-shawn.sung@mediatek.com>
 <70733fe5c919527796bd3d9735ced522bcdd7a25.camel@ndufresne.ca>
In-Reply-To: <70733fe5c919527796bd3d9735ced522bcdd7a25.camel@ndufresne.ca>
From: Jeffrey Kardatzke <jkardatzke@google.com>
Date: Tue, 16 Apr 2024 10:19:02 -0700
Message-ID: <CA+ddPcMWein69X6U46pZbDy51gFHHxXV5d+6BvFq7ma6n0E22w@mail.gmail.com>
To: Nicolas Dufresne <nicolas@ndufresne.ca>
X-Rspamd-Queue-Id: 79A163F0B5
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.60 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.214.173:from];
	TAGGED_RCPT(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[20];
	RCVD_COUNT_ONE(0.00)[1];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	URIBL_BLOCKED(0.00)[ndufresne.ca:email];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[mediatek.com,kernel.org,pengutronix.de,gmail.com,ffwll.ch,collabora.com,linux.intel.com,suse.de,linaro.org,amd.com,lists.freedesktop.org,lists.infradead.org,vger.kernel.org,lists.linaro.org];
	MISSING_XM_UA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: FYVMC5NIS2HIJD7NAIMVA5JTUFAY6TS4
X-Message-ID-Hash: FYVMC5NIS2HIJD7NAIMVA5JTUFAY6TS4
X-MailFrom: jkardatzke@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Shawn Sung <shawn.sung@mediatek.com>, Chun-Kuang Hu <chunkuang.hu@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, "Jason-JH.Lin" <jason-jh.lin@mediatek.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 1/9] drm/mediatek/uapi: Add DRM_MTK_GEM_CREATE_ENCRYPTED flag
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FYVMC5NIS2HIJD7NAIMVA5JTUFAY6TS4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSB3b3VsZCBhcmd1ZSAncmVzdHJpY3RlZCcgaXMgdGhlIHByb3BlciBuYW1lIHNpbmNlIHRoYXQg
d2FzIHdoYXQgd2FzDQpzZXR0bGVkIG9uIGZvciB0aGUgZG1hLWJ1ZiBjb2RlLiAgOikgIEJ1dCB5
b3UgYXJlIGRlZmluaXRlbHkgcmlnaHQNCnRoYXQgdGhpcyBtZW1vcnkgaXMgbm90IGVuY3J5cHRl
ZC4NCg0KDQpPbiBUdWUsIEFwciAxNiwgMjAyNCBhdCA3OjA54oCvQU0gTmljb2xhcyBEdWZyZXNu
ZSA8bmljb2xhc0BuZHVmcmVzbmUuY2E+IHdyb3RlOg0KPg0KPiBIaSwNCj4NCj4gTGUgbWVyY3Jl
ZGkgMDMgYXZyaWwgMjAyNCDDoCAxODoyNiArMDgwMCwgU2hhd24gU3VuZyBhIMOpY3JpdCA6DQo+
ID4gRnJvbTogIkphc29uLUpILkxpbiIgPGphc29uLWpoLmxpbkBtZWRpYXRlay5jb20+DQo+ID4N
Cj4gPiBBZGQgRFJNX01US19HRU1fQ1JFQVRFX0VOQ1JZUFRFRCBmbGFnIHRvIGFsbG93IHVzZXIg
dG8gYWxsb2NhdGUNCj4NCj4gSXMgIkVOQ1JZUFRFRCIgYSBwcm9wZXIgbmFtaW5nID8gTXkgZXhw
ZWN0YXRpb24gaXMgdGhhdCB0aGlzIHdvdWxkIGhvbGQgZGF0YSBpbg0KPiBhIFBST1RFQ1RFRCBt
ZW1vcnkgcmVnaW9uIGJ1dCB0aGF0IG5vIGNyeXB0b2dyYXBoaWMgYWxnb3JpdGhtIHdpbGwgYmUg
aW52b2x2ZWQuDQo+DQo+IE5pY29sYXMNCj4NCj4gPiBhIHNlY3VyZSBidWZmZXIgdG8gc3VwcG9y
dCBzZWN1cmUgdmlkZW8gcGF0aCBmZWF0dXJlLg0KPiA+DQo+ID4gU2lnbmVkLW9mZi1ieTogSmFz
b24tSkguTGluIDxqYXNvbi1qaC5saW5AbWVkaWF0ZWsuY29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6
IEhzaWFvIENoaWVuIFN1bmcgPHNoYXduLnN1bmdAbWVkaWF0ZWsuY29tPg0KPiA+IC0tLQ0KPiA+
ICBpbmNsdWRlL3VhcGkvZHJtL21lZGlhdGVrX2RybS5oIHwgMSArDQo+ID4gIDEgZmlsZSBjaGFu
Z2VkLCAxIGluc2VydGlvbigrKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvdWFwaS9k
cm0vbWVkaWF0ZWtfZHJtLmggYi9pbmNsdWRlL3VhcGkvZHJtL21lZGlhdGVrX2RybS5oDQo+ID4g
aW5kZXggYjBkZWEwMGJhY2JjNC4uZTkxMjVkZTNhMjRhZCAxMDA2NDQNCj4gPiAtLS0gYS9pbmNs
dWRlL3VhcGkvZHJtL21lZGlhdGVrX2RybS5oDQo+ID4gKysrIGIvaW5jbHVkZS91YXBpL2RybS9t
ZWRpYXRla19kcm0uaA0KPiA+IEBAIC01NCw2ICs1NCw3IEBAIHN0cnVjdCBkcm1fbXRrX2dlbV9t
YXBfb2ZmIHsNCj4gPg0KPiA+ICAjZGVmaW5lIERSTV9NVEtfR0VNX0NSRUFURSAgICAgICAgICAg
MHgwMA0KPiA+ICAjZGVmaW5lIERSTV9NVEtfR0VNX01BUF9PRkZTRVQgICAgICAgICAgICAgICAw
eDAxDQo+ID4gKyNkZWZpbmUgRFJNX01US19HRU1fQ1JFQVRFX0VOQ1JZUFRFRCAweDAyDQo+ID4N
Cj4gPiAgI2RlZmluZSBEUk1fSU9DVExfTVRLX0dFTV9DUkVBVEUgICAgIERSTV9JT1dSKERSTV9D
T01NQU5EX0JBU0UgKyBcDQo+ID4gICAgICAgICAgICAgICBEUk1fTVRLX0dFTV9DUkVBVEUsIHN0
cnVjdCBkcm1fbXRrX2dlbV9jcmVhdGUpDQo+DQo+DQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5h
cm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0
byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
