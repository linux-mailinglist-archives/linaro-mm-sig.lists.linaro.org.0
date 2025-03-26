Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 89408A72026
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Mar 2025 21:47:07 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5B0864490F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Mar 2025 20:47:06 +0000 (UTC)
Received: from mail-il1-f177.google.com (mail-il1-f177.google.com [209.85.166.177])
	by lists.linaro.org (Postfix) with ESMTPS id 71809443A1
	for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Mar 2025 20:46:52 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b="cantGTR/";
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.166.177 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-il1-f177.google.com with SMTP id e9e14a558f8ab-3d439dc0548so629305ab.3
        for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Mar 2025 13:46:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743022012; x=1743626812; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5JhMoKQ5EpQ1pQUTEtH4nghhLWcwT/i5YVCywj3TCE4=;
        b=cantGTR/7yj8YqkIocFGYvAmtMQ4NH9NMygfrmt4xOVF7CH0WqfHuMABL/km7roN8E
         FMTYHSVd2aTAFwYMgEhtnOQpIjt2Nviuc1yqcuROVMBke0rpoA1CcrwZ3ZDPHJLeQkp8
         5LNgRmP/qnzAiwe/1l4bG+T6IjtYu3mK4fv8501rs9L+Eut4voHNcco+5cBZYIAI0de2
         6rC2t+BHHk044Zq99WBExERK9oDZtpNgfVT4m+fiqWpkzsjQWlVzJoNztbkBAr9Y63gV
         8N987CPAioS+aQ7TWXBqP+re37c3XgGWVoz1gTJI6Ht1uEBIqQxOju7+jtLM1UQn1zwS
         wFZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743022012; x=1743626812;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5JhMoKQ5EpQ1pQUTEtH4nghhLWcwT/i5YVCywj3TCE4=;
        b=gl54wiXdZtfh3x2goWjEv4164FkkUcIWXmK7l8HluxsjK3FOC9Wl4HO+WiNef+EaCp
         bZBWHNKH0gYOEkQVzeeYXo9pEfsYwy1UthFID/68O4EDa+37n/a/LT2cBKWVdyiCF5/4
         9NEJOuT38qlvvyHd2551JCiNK10LFIEE72e11LrawvobSdLjHLjNEfndmcwinfNCONiY
         RARrh8Pc4rwZhpagLGsYnKheH58is2xv8+6dWCx35DPYM/CjQCAUpWpwm7t8XDo77AQZ
         Ue3nm5Vgxid6+0Ob8/HDt3jh+9I5rHZ9UJScawxHVZEz9c74MvxLKboBzEk+CFY+Qg9u
         y8Jw==
X-Forwarded-Encrypted: i=1; AJvYcCUd/z2RknUfrD/qpJRdAPm1R3JlNlzCZkI740k+2WHXTtB6cILMl7w+85QQ7JZQ9AW9OAQEPsKaBhkKdhVz@lists.linaro.org
X-Gm-Message-State: AOJu0Yxxsv9AF/AmrGqO7+5zH2DnOVTZyjjHoOyIdFW9criz2QgXa4vI
	GcIXMVniFPbIkHNHVzjBenRnHG0yirc970b1dG88IuFaX4d7i01v/awJrmoKbltLglAZwPZ8ymp
	t4qUTXlblRHyJrwUKZV+JT658DYo=
X-Gm-Gg: ASbGncsez83e93OrvAOyZRFqFH8l+NgCrJlsxmBzLVirgmA6bwenLKDCqGZOJszqv4b
	5OWnhU4BCk+jPwtyi4KasTdVPX4MeGNcvAqImEezrpmIPJSHuclVsqY3b+LqIvbl/Haj0JtY6QQ
	hMCMfbyIacQeCGHGSZDF/PUxJT5oF9XITQfU1ij7TGmNwUgiJU1qWgpv3rIa/1CvWlwE0=
X-Google-Smtp-Source: AGHT+IGLmmU7KJxynJ3JmzAzaYdjW5MSKvJRuKUzfOy/PXKBCJHqw2vGsRgic8SeuLTGlXrTd5GgP9KRL2pxFlwrF9Y=
X-Received: by 2002:a05:6e02:1fe8:b0:3d0:bd5:b863 with SMTP id
 e9e14a558f8ab-3d5cce27d98mr12686545ab.20.1743022011691; Wed, 26 Mar 2025
 13:46:51 -0700 (PDT)
MIME-Version: 1.0
References: <20250326143903.24380-1-robdclark@gmail.com> <342ee079-ee0e-470d-afd2-c2870115b489@amd.com>
 <CAF6AEGu2Ax+u3QmD2VADwh4A4s5TAmP5Lq4DcYYadKP4csH-=g@mail.gmail.com>
In-Reply-To: <CAF6AEGu2Ax+u3QmD2VADwh4A4s5TAmP5Lq4DcYYadKP4csH-=g@mail.gmail.com>
From: Rob Clark <robdclark@gmail.com>
Date: Wed, 26 Mar 2025 13:46:39 -0700
X-Gm-Features: AQ5f1JrBlKDKgO0ATBxgVYhh5njSw5419j_VUVoZrjO0N4Ci8VzagRd6Vn0tpUY
Message-ID: <CAF6AEGv-Zad2GF-=gDdYQdZGkJ_u+eyBFvTNK49m5+1ycaZu9Q@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 71809443A1
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	URIBL_BLOCKED(0.00)[mail-il1-f177.google.com:helo,mail-il1-f177.google.com:rdns];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,collabora.com,chromium.org,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,vger.kernel.org,lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.166.177:from];
	NEURAL_HAM(-0.00)[-0.992];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RBL_SENDERSCORE_REPUT_BLOCKED(0.00)[209.85.166.177:from]
X-Rspamd-Action: no action
Message-ID-Hash: E347CQ36AZDGAB7LP7ABE55CKFG3EJCY
X-Message-ID-Hash: E347CQ36AZDGAB7LP7ABE55CKFG3EJCY
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Rob Clark <robdclark@chromium.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_(?:buf|fence|resv)b" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_(?:buf|fence|resv)b" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm/syncobj: Extend EXPORT_SYNC_FILE for timeline syncobjs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/E347CQ36AZDGAB7LP7ABE55CKFG3EJCY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBNYXIgMjYsIDIwMjUgYXQgNzo0NuKAr0FNIFJvYiBDbGFyayA8cm9iZGNsYXJrQGdt
YWlsLmNvbT4gd3JvdGU6DQo+DQo+IE9uIFdlZCwgTWFyIDI2LCAyMDI1IGF0IDc6NDHigK9BTSBD
aHJpc3RpYW4gS8O2bmlnDQo+IDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOg0KPiA+
DQo+ID4gQW0gMjYuMDMuMjUgdW0gMTU6Mzkgc2NocmllYiBSb2IgQ2xhcms6DQo+ID4gPiBGcm9t
OiBSb2IgQ2xhcmsgPHJvYmRjbGFya0BjaHJvbWl1bS5vcmc+DQo+ID4gPg0KPiA+ID4gQWRkIHN1
cHBvcnQgZm9yIGV4cG9ydGluZyBhIGRtYV9mZW5jZSBmZCBmb3IgYSBzcGVjaWZpYyBwb2ludCBv
biBhDQo+ID4gPiB0aW1lbGluZS4NCj4gPg0KPiA+IExvb2tzIGdvb2Qgb24gZmlyc3QgZ2xhbmNl
LiBXaGF0J3MgdGhlIHVzZXJzcGFjZSB1c2UgY2FzZT8NCj4NCj4gVGltZWxpbmUgc3luY29iaiBz
dXBwb3J0IGZvciB2dGVzdC92cGlwZVsxXVsyXS4uIHNpbmNlIGNvcmUNCj4gdmlyZ2xyZW5kZXIg
YW5kIGRybSBuYXRpdmUgY3R4IHdvcmtzIGluIHRlcm1zIG9mIGZlbmNlcyAoc2luY2UgaW4gdGhl
DQo+IFZNIGNhc2UsIGV2ZXJ5dGhpbmcgaXMgYSBmZW5jZSBiZWxvdyB0aGUgZ3Vlc3Qga2VybmVs
IHVhYmkpLCB3ZSBuZWVkDQo+IHRvIGJlIGFibGUgdG8gdHVybiBhIHBvaW50IG9uIGEgdGltZWxp
bmUgYmFjayBpbnRvIGEgZmVuY2UgZmQuICAoUGx1cw0KPiBpdCBzZWVtZWQgbGlrZSBhbiBvZGQg
b21pc3Npb24gZnJvbSB0aGUgZXhpc3RpbmcgdWFiaS4pDQo+DQo+IEJSLA0KPiAtUg0KPg0KPiBb
MV0gaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL21lc2EvbWVzYS8tL21lcmdlX3JlcXVl
c3RzLzMzNDMzDQo+IFsyXSBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvdmlyZ2wvdmly
Z2xyZW5kZXJlci8tL21lcmdlX3JlcXVlc3RzLzgwNQ0KPg0KPiA+DQo+ID4gUmVnYXJkcywNCj4g
PiBDaHJpc3RpYW4uDQo+ID4NCj4gPiA+DQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBSb2IgQ2xhcmsg
PHJvYmRjbGFya0BjaHJvbWl1bS5vcmc+DQo+ID4gPiAtLS0NCj4gPiA+ICBkcml2ZXJzL2dwdS9k
cm0vZHJtX3N5bmNvYmouYyB8IDggKysrKysrLS0NCj4gPiA+ICBpbmNsdWRlL3VhcGkvZHJtL2Ry
bS5oICAgICAgICB8IDIgKysNCj4gPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygr
KSwgMiBkZWxldGlvbnMoLSkNCj4gPiA+DQo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2RybV9zeW5jb2JqLmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX3N5bmNvYmouYw0KPiA+ID4g
aW5kZXggNGYyYWI4YTdiNTBmLi5lYjdhMmRkMmUyNjEgMTAwNjQ0DQo+ID4gPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vZHJtX3N5bmNvYmouYw0KPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2Ry
bV9zeW5jb2JqLmMNCj4gPiA+IEBAIC03NjIsNyArNzYyLDcgQEAgc3RhdGljIGludCBkcm1fc3lu
Y29ial9pbXBvcnRfc3luY19maWxlX2ZlbmNlKHN0cnVjdCBkcm1fZmlsZSAqZmlsZV9wcml2YXRl
LA0KPiA+ID4gIH0NCj4gPiA+DQo+ID4gPiAgc3RhdGljIGludCBkcm1fc3luY29ial9leHBvcnRf
c3luY19maWxlKHN0cnVjdCBkcm1fZmlsZSAqZmlsZV9wcml2YXRlLA0KPiA+ID4gLSAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBpbnQgaGFuZGxlLCBpbnQgKnBfZmQpDQo+ID4g
PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGludCBoYW5kbGUsIHU2NCBw
b2ludCwgaW50ICpwX2ZkKQ0KPiA+ID4gIHsNCj4gPiA+ICAgICAgIGludCByZXQ7DQo+ID4gPiAg
ICAgICBzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZTsNCj4gPiA+IEBAIC03NzIsNyArNzcyLDcgQEAg
c3RhdGljIGludCBkcm1fc3luY29ial9leHBvcnRfc3luY19maWxlKHN0cnVjdCBkcm1fZmlsZSAq
ZmlsZV9wcml2YXRlLA0KPiA+ID4gICAgICAgaWYgKGZkIDwgMCkNCj4gPiA+ICAgICAgICAgICAg
ICAgcmV0dXJuIGZkOw0KPiA+ID4NCj4gPiA+IC0gICAgIHJldCA9IGRybV9zeW5jb2JqX2ZpbmRf
ZmVuY2UoZmlsZV9wcml2YXRlLCBoYW5kbGUsIDAsIDAsICZmZW5jZSk7DQo+ID4gPiArICAgICBy
ZXQgPSBkcm1fc3luY29ial9maW5kX2ZlbmNlKGZpbGVfcHJpdmF0ZSwgaGFuZGxlLCBwb2ludCwg
MCwgJmZlbmNlKTsNCj4gPiA+ICAgICAgIGlmIChyZXQpDQo+ID4gPiAgICAgICAgICAgICAgIGdv
dG8gZXJyX3B1dF9mZDsNCj4gPiA+DQo+ID4gPiBAQCAtODgyLDggKzg4MiwxMiBAQCBkcm1fc3lu
Y29ial9oYW5kbGVfdG9fZmRfaW9jdGwoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0
YSwNCj4gPiA+DQo+ID4gPiAgICAgICBpZiAoYXJncy0+ZmxhZ3MgJiBEUk1fU1lOQ09CSl9IQU5E
TEVfVE9fRkRfRkxBR1NfRVhQT1JUX1NZTkNfRklMRSkNCj4gPiA+ICAgICAgICAgICAgICAgcmV0
dXJuIGRybV9zeW5jb2JqX2V4cG9ydF9zeW5jX2ZpbGUoZmlsZV9wcml2YXRlLCBhcmdzLT5oYW5k
bGUsDQo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIGFyZ3MtPnBvaW50LA0KPiA+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAmYXJncy0+ZmQpOw0KDQpIbW0sIG1heWJlIEkgc2hvdWxkIGFkZCBE
Uk1fU1lOQ09CSl9IQU5ETEVfVE9fRkRfRkxBR1NfVElNRUxJTkUgc28NCnRoYXQgdXNlcnNwYWNl
IGdldHMgYSBjbGVhbiBlcnJvciBvbiBvbGRlciBrZXJuZWxzLCByYXRoZXIgdGhhbiBoYXZpbmcN
CnRoZSBwb2ludCBwYXJhbSBiZSBzaWxlbnRseSBpZ25vcmVkLi4NCg0KQlIsDQotUg0KDQo+ID4g
Pg0KPiA+ID4gKyAgICAgaWYgKGFyZ3MtPnBvaW50KQ0KPiA+ID4gKyAgICAgICAgICAgICByZXR1
cm4gLUVJTlZBTDsNCj4gPiA+ICsNCj4gPiA+ICAgICAgIHJldHVybiBkcm1fc3luY29ial9oYW5k
bGVfdG9fZmQoZmlsZV9wcml2YXRlLCBhcmdzLT5oYW5kbGUsDQo+ID4gPiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICZhcmdzLT5mZCk7DQo+ID4gPiAgfQ0KPiA+ID4gZGlm
ZiAtLWdpdCBhL2luY2x1ZGUvdWFwaS9kcm0vZHJtLmggYi9pbmNsdWRlL3VhcGkvZHJtL2RybS5o
DQo+ID4gPiBpbmRleCA3ZmJhMzdiOTQ0MDEuLmM3MWE4ZjQ0MzlmMiAxMDA2NDQNCj4gPiA+IC0t
LSBhL2luY2x1ZGUvdWFwaS9kcm0vZHJtLmgNCj4gPiA+ICsrKyBiL2luY2x1ZGUvdWFwaS9kcm0v
ZHJtLmgNCj4gPiA+IEBAIC05MTIsNiArOTEyLDggQEAgc3RydWN0IGRybV9zeW5jb2JqX2hhbmRs
ZSB7DQo+ID4gPg0KPiA+ID4gICAgICAgX19zMzIgZmQ7DQo+ID4gPiAgICAgICBfX3UzMiBwYWQ7
DQo+ID4gPiArDQo+ID4gPiArICAgICBfX3U2NCBwb2ludDsNCj4gPiA+ICB9Ow0KPiA+ID4NCj4g
PiA+ICBzdHJ1Y3QgZHJtX3N5bmNvYmpfdHJhbnNmZXIgew0KPiA+DQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlz
dCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBh
biBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
