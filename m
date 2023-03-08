Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CC5606BBABA
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Mar 2023 18:22:16 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C3D553F48A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Mar 2023 17:22:15 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id 26E0A3EECA
	for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Mar 2023 14:43:48 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=AzxPB+9S;
	spf=pass (lists.linaro.org: domain of kherbst@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=kherbst@redhat.com;
	dmarc=pass (policy=none) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1678286627;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=+Ec/IVFu8tTZxwDkNDSwZTiUvqGpL4DGDHvqQihyB9U=;
	b=AzxPB+9SLyv/0VkDSis7dzYu+IRX3LE7JqC2oxOhiG06jKilavTf3P1lUo7hag4Y0DL6EL
	T/XxcP+cLVd6j7GOqRZ4u34koaR93avMsb6l085DyYQQ+RXH84YJAjbecufyBwyYrbKj7U
	s+5yBex5VotZ5q2K6OdwUYq1wJSxFKU=
Received: from mail-lj1-f198.google.com (mail-lj1-f198.google.com
 [209.85.208.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-386-ity_O6FQMA6eo_dRD3KLhQ-1; Wed, 08 Mar 2023 09:43:46 -0500
X-MC-Unique: ity_O6FQMA6eo_dRD3KLhQ-1
Received: by mail-lj1-f198.google.com with SMTP id b30-20020a05651c0b1e00b002959c2fb94fso5574160ljr.20
        for <linaro-mm-sig@lists.linaro.org>; Wed, 08 Mar 2023 06:43:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678286623;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+Ec/IVFu8tTZxwDkNDSwZTiUvqGpL4DGDHvqQihyB9U=;
        b=LIIOTKda+SP/kBtBIbsUtI7ldr44z7or7UkqNGIWFh7brF16Ig+7ttBJ4WZfIJlI5c
         G7Co7S6dA3oBV7SDpLXlJ8r4XE3q3a9FMbVCIgXGSZg1aCcW1RNo/WT9Ai8Bx46SrN/9
         itC6LxbiBmBijBvdXMzpLMHVR6RUdJ/2LjMT2LrF0wKZJwtx61T+NwTqAiMGI5nqQ36l
         LctJp4iMyH19Z5VcqUOFixfnHw9HsMtuuvs4wwu0qRFjTB+osbsJYBJvUNkC7CrOkKcj
         CepKYtD3VVhxl3gB6VWU1wT65beQzMUZCtWgg8ByC1AGuQc7v/TLDOKTXqvC24nNCET9
         t2/Q==
X-Gm-Message-State: AO0yUKXQFiOGxsxjt6DEd/AqLzT11OM9sLK5iTzPceucqvNuofkl7AAn
	PgJr/aJM/WElqPRXERiqa/KbUl7Q4k/gAhj7XO53rXN46yq60gWKxpGEeIiMzpy79gN5ruswDB3
	8/eibL7hJZJbI68x1+60U8N4LJjzb9H5grv6ul0c77B8=
X-Received: by 2002:a2e:a612:0:b0:295:d632:ba22 with SMTP id v18-20020a2ea612000000b00295d632ba22mr5704911ljp.8.1678286623710;
        Wed, 08 Mar 2023 06:43:43 -0800 (PST)
X-Google-Smtp-Source: AK7set+VM8PtihslLzNuKh4B+G0qjJyiIzHXOidXvO7lyX27rIZtUnecI3bQqz6Vc4IEJCL68KDme3kfrv4Y+s3Zdhc=
X-Received: by 2002:a2e:a612:0:b0:295:d632:ba22 with SMTP id
 v18-20020a2ea612000000b00295d632ba22mr5704906ljp.8.1678286623395; Wed, 08 Mar
 2023 06:43:43 -0800 (PST)
MIME-Version: 1.0
References: <20230307-rust-drm-v1-0-917ff5bc80a8@asahilina.net>
 <20230307-rust-drm-v1-10-917ff5bc80a8@asahilina.net> <cd788ccf-0cf1-85d5-1bf8-efc259bd7e11@amd.com>
 <CACO55tsnCMQt8UW5_UCY139kpZOdNXbMkBkFfUiB12jW5UgVmA@mail.gmail.com> <0d6cd23b-8c9e-067d-97ff-aa35dbbcf9bf@amd.com>
In-Reply-To: <0d6cd23b-8c9e-067d-97ff-aa35dbbcf9bf@amd.com>
From: Karol Herbst <kherbst@redhat.com>
Date: Wed, 8 Mar 2023 15:43:31 +0100
Message-ID: <CACO55tumNMYrcJ0LhnLfTK4DmGLHD-bt3xpXyoPe98V2wmgXQg@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 26E0A3EECA
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-1.00)[209.85.208.198:received,170.10.133.124:from];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:170.10.133.0/24];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	FREEMAIL_CC(0.00)[asahilina.net,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,garyguo.net,protonmail.com,linaro.org,amd.com,rosenzweig.io,iglunix.org,collabora.com,mary.zone,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:30031, ipnet:170.10.132.0/23, country:US];
	RCPT_COUNT_TWELVE(0.00)[28];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[170.10.133.124:from];
	DKIM_TRACE(0.00)[redhat.com:+];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	ARC_NA(0.00)[]
X-MailFrom: kherbst@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: EDWPY54XCQEBV7SCGUQUT4K2HDWR5YNF
X-Message-ID-Hash: EDWPY54XCQEBV7SCGUQUT4K2HDWR5YNF
X-Mailman-Approved-At: Wed, 15 Mar 2023 17:21:57 +0000
CC: Asahi Lina <lina@asahilina.net>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>, Miguel Ojeda <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>, Wedson Almeida Filho <wedsonaf@gmail.com>, Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, =?UTF-8?Q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Luben Tuikov <luben.tuikov@amd.com>, Jarkko Sakkinen <jarkko@kernel.org>, Dave Hansen <dave.hansen@linux.intel.com>, Alyssa Rosenzweig <alyssa@rosenzweig.io>, Ella Stanforth <ella@iglunix.org>, Faith Ekstrand <faith.ekstrand@collabora.com>, Mary <mary@mary.zone>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-sgx@vger.kernel.org, asahi@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 10/18] drm/scheduler: Add can_run_job callback
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EDWPY54XCQEBV7SCGUQUT4K2HDWR5YNF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBNYXIgOCwgMjAyMyBhdCAyOjQ34oCvUE0gQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0
aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToNCj4NCj4gQW0gMDguMDMuMjMgdW0gMTM6Mzkgc2No
cmllYiBLYXJvbCBIZXJic3Q6DQo+ID4gT24gV2VkLCBNYXIgOCwgMjAyMyBhdCA5OjQ24oCvQU0g
Q2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToNCj4gPj4g
QW0gMDcuMDMuMjMgdW0gMTU6MjUgc2NocmllYiBBc2FoaSBMaW5hOg0KPiA+Pj4gU29tZSBoYXJk
d2FyZSBtYXkgcmVxdWlyZSBtb3JlIGNvbXBsZXggcmVzb3VyY2UgdXRpbGl6YXRpb24gYWNjb3Vu
dGluZw0KPiA+Pj4gdGhhbiB0aGUgc2ltcGxlIGpvYiBjb3VudCBzdXBwb3J0ZWQgYnkgZHJtX3Nj
aGVkIGludGVybmFsbHkuIEFkZCBhDQo+ID4+PiBjYW5fcnVuX2pvYiBjYWxsYmFjayB0byBhbGxv
dyBkcml2ZXJzIHRvIGltcGxlbWVudCBtb3JlIGxvZ2ljIGJlZm9yZQ0KPiA+Pj4gZGVjaWRpbmcg
d2hldGhlciB0byBydW4gYSBHUFUgam9iLg0KPiA+PiBXZWxsIGNvbXBsZXRlIE5BSy4NCj4gPj4N
Cj4gPiBUaGVyZSBoYXNuJ3QgZXZlbiBiZWVuIGFueSBraW5kIG9mIGRpc2N1c3Npb24geWV0IHlv
dSBhbHJlYWR5IGNvbWUNCj4gPiBhcm91bmQgd2l0aCBhICJXZWxsIGNvbXBsZXRlIE5BSyINCj4g
Pg0KPiA+IEZpcnN0LCB0aGlzIGNhbiBiZSBzZWVuIGFzIHJ1ZGUgYmVoYXZpb3IgYW5kIG1lIGJl
aW5nIHBhcnQgb2YgdGhlIGRybQ0KPiA+IGNvbW11bml0eSBJIGRvbid0IHdhbnQgdG8gaGF2ZSB0
byBzZWUgdGhpcyBraW5kIG9mIHRoaW5nLg0KPiA+DQo+ID4gT2J2aW91c2x5LCBhbnkga2luZCBv
ZiBzdHJvbmcgInRlY2huaWNhbCIgcmV2aWV3IHBvaW50IGlzIGEgbmFrIHVudGlsDQo+ID4gcGVv
cGxlIHNldHRsZSB3aXRoIGFuIGFncmVlbWVudCBvbiB3aGF0IHRvIGxhbmQsIHRoZXJlIGlzIG5v
IHBvaW50IGluDQo+ID4gcG9pbnRpbmcgb3V0IGEgIk5BSyIsIGVzcGVjaWFsbHkgaWYgdGhhdCdz
IHRoZSBmaXJzdCB0aGluZyB5b3Ugc2F5LiBJZg0KPiA+IHlvdSB3YW50IHRvIGV4cHJlc3MgeW91
ciBzdHJvbmcgZGlzYWdyZWVtZW50IHdpdGggdGhlIHByb3Bvc2VkDQo+ID4gc29sdXRpb24sIHRo
ZW4gc3RhdGUgd2hhdCB5b3VyIHBhaW4gcG9pbnRzIGFyZSBkaXJlY3RseS4NCj4gPg0KPiA+IElm
IHRoZXJlIGlzIGEgbG9uZyBkaXNjdXNzaW9uIGFuZCBhIG1haW50YWluZXIgZmVlbHMgaXQncyBn
b2luZw0KPiA+IG5vd2hlcmUgYW5kIG5vIGNvbmNsdXNpb24gd2lsbCBiZSByZWFjaGVkIGl0IG1p
Z2h0IGJlIHRoaXMga2luZCBvZg0KPiA+ICJzcGVha2luZyB3aXRoIGF1dGhvcml0eSIgcG9pbnQg
aGFzIHRvIGJlIG1hZGUuIEJ1dCBub3QgYXMgdGhlIHN0YXJ0ZXINCj4gPiBpbnRvIGEgZGlzY3Vz
c2lvbi4gVGhpcyBpcyB1bm5lY2Vzc2FyaWx5IGhvc3RpbGUgdG93YXJkcyB0aGUNCj4gPiBjb250
cmlidXRvci4gQW5kIEkgd2lzaGVkIHdlIHdvdWxkbid0IGhhdmUgdG8gc2VlIHRoaXMga2luZCBv
Zg0KPiA+IGJlaGF2aW9yIGhlcmUuDQo+ID4NCj4gPiBZZXMsIHNvbWUga2VybmVsIG1haW50YWlu
ZXJzIGRvIHRoaXMgYSBsb3QsIGJ1dCBrZXJuZWwgbWFpbnRhaW5lcnMNCj4gPiBhbHNvIGhhdmUg
dGhpcyBraW5kIG9mIHJlcHV0YXRpb24gYW5kIHBlb3BsZSBkb24ndCB3YW50IHRvIGhhdmUgdG8N
Cj4gPiBkZWFsIHdpdGggdGhpcyBub25zZW5zZSBhbmQgZGVjaWRlIHRvIG5vdCBjb250cmlidXRl
IGF0IGFsbC4gU28gcGxlYXNlDQo+ID4ganVzdCBkcm9wIHRoaXMgYXR0aXR1ZGUuDQo+DQo+IFll
cywgeW91IGFyZSBjb21wbGV0ZWx5IHJpZ2h0IHdpdGggdGhhdCwgYnV0IGdldHRpbmcgdGhpcyBt
ZXNzYWdlIHRvIHRoZQ0KPiByZWNpcGllbnQgaXMgaW50ZW50aW9uYWwgb24gbXkgc2lkZS4NCj4N
Cj4gSSBnaXZlIGNvbXBsZXRlbHkgTkFLcyB3aGVuIHRoZSBhdXRob3Igb2YgYSBwYXRjaCBoYXMg
bWlzc2VkIHN1Y2ggYQ0KPiBmdW5kYW1lbnRhbCB0ZWNobmljYWwgY29ubmVjdGlvbiB0aGF0IGZ1
cnRoZXIgZGlzY3Vzc2lvbiBkb2Vzbid0IG1ha2Ugc2Vuc2UuDQo+DQo+IEl0J3Mgbm90IG1lYW50
IHRvIGJlIGluIGFueSB3YXkgcnVkZSBvciBvZmZlbmRpbmcuIEkgY2FuIHB1dCBhIHNtaWxleQ0K
PiBiZWhpbmQgaXQgaWYgaXQgc29tZWhvdyBoZWxwcywgYnV0IHdlIHN0aWxsIG5lZWQgYSB3YXkg
dG8gcmFpc2UgdGhpcyBiaWcNCj4gcmVkIHN0b3Agc2lnbi4NCj4NCg0KImZ1cnRoZXIiPyBUaGVy
ZSB3YXMgbm8gZGlzY3Vzc2lvbiBhdCBhbGwsIHlvdSBqdXN0IHN0YXJ0ZWQgb2ZmIGxpa2UNCnRo
YXQuIElmIHlvdSB0aGluayBzb21lYm9keSBtaXNzZXMgdGhhdCBjb25uZWN0aW9uLCB5b3UgY2Fu
IHBvaW50IG91dA0KdG8gZG9jdW1lbnRhdGlvbi92aWRlb3Mgd2hhdGV2ZXIgc28gdGhlIGNvbnRy
aWJ1dG9yIGNhbiB1bmRlcnN0YW5kDQp3aGF0J3Mgd3Jvbmcgd2l0aCBhbiBhcHByb2FjaC4gWW91
IGRpZCB0aGF0LCBzbyB0aGF0J3MgZmluZS4gSXQncyBqdXN0DQpzdGFydGluZyBvZmYgX2FueV8g
ZGlzY3Vzc2lvbiB3aXRoIGEgIldlbGwgY29tcGxldGUgTkFLIiBpcyB0ZXJyaWJsZQ0Kc3R5bGUu
IEknZCBmZWVsIHVuY29tZm9ydGFibGUgaWYgdGhhdCBoYXBwZW5lZCB0byBtZSBhbmQgSSdtIHN1
cmUNCnRoZXJlIGFyZSBlbm91Z2ggcGVvcGxlIGxpa2UgdGhhdCB0aGF0IHdlIHNob3VsZCBiZSBt
b3JlIHJlYXNvbmFibGUNCndpdGggb3VyIHJlcGxpZXMuIEp1c3QuLiBkb24ndC4NCg0KV2UgYXJl
IGFsbCBodW1hbnMgaGVyZSBhbmQgcGVvcGxlIHJlYWN0IG5lZ2F0aXZlbHkgdG8gc3VjaCB0aGlu
Z3MuIEFuZA0KaWYgcGVvcGxlIGRvIGl0IG9uIHB1cnBvc2UgaXQganVzdCBtYWtlcyBpdCB3b3Jz
ZS4NCg0KPiA+PiBUaGlzIGlzIGNsZWFybHkgZ29pbmcgYWdhaW5zdCB0aGUgaWRlYSBvZiBoYXZp
bmcgam9icyBvbmx5IGRlcGVuZCBvbg0KPiA+PiBmZW5jZXMgYW5kIG5vdGhpbmcgZWxzZSB3aGlj
aCBpcyBtYW5kYXRvcnkgZm9yIGNvcnJlY3QgbWVtb3J5IG1hbmFnZW1lbnQuDQo+ID4+DQo+ID4g
SSdtIHN1cmUgaXQncyBhbGwgZG9jdW1lbnRlZCBhbmQgdGhlcmUgaXMgYSBkZXNpZ24gZG9jdW1l
bnQgb24gaG93DQo+ID4gdGhpbmdzIGhhdmUgdG8gbG9vayBsaWtlIHlvdSBjYW4gcG9pbnQgb3V0
PyBNaWdodCBoZWxwIHRvIGdldCBhIGJldHRlcg0KPiA+IHVuZGVyc3RhbmRpbmcgb24gaG93IHRo
aW5ncyBzaG91bGQgYmUuDQo+DQo+IFllYWgsIHRoYXQncyB0aGUgcHJvYmxlbWF0aWMgcGFydC4g
V2UgaGF2ZSBkb2N1bWVudGVkIHRoaXMgdmVyeQ0KPiBleHRlbnNpdmVseToNCj4gaHR0cHM6Ly93
d3cua2VybmVsLm9yZy9kb2MvaHRtbC92NS45L2RyaXZlci1hcGkvZG1hLWJ1Zi5odG1sI2luZGVm
aW5pdGUtZG1hLWZlbmNlcw0KPg0KPiBBbmQgYm90aCBKYXNvbiBhbmQgRGFuaWVsIGdhdmUgdGFs
a3MgYWJvdXQgdGhlIHVuZGVybHlpbmcgcHJvYmxlbSBhbmQNCg0KZnlpOg0Kcy9KYXNvbi9GYWl0
aC9nDQoNCj4gdHJ5IHRvIGNvbWUgdXAgd2l0aCBwYXRjaGVzIHRvIHJhaXNlIHdhcm5pbmdzIHdo
ZW4gdGhhdCBoYXBwZW5zLCBidXQNCj4gcGVvcGxlIHN0aWxsIGtlZXAgY29taW5nIHVwIHdpdGgg
dGhlIHNhbWUgaWRlYSBvdmVyIGFuZCBvdmVyIGFnYWluLg0KPg0KDQpZZXMsIGFuZCB3ZSdsbCBo
YXZlIHRvIHRlbGwgdGhlbSBvdmVyIGFuZCBvdmVyIGFnYWluLiBOb3RoaW5nIHdyb25nDQp3aXRo
IHRoYXQuIFRoYXQncyBqdXN0IHBhcnQgb2YgbWFpbnRhaW5pbmcgc3VjaCBhIGJpZyBzdWJzeXN0
ZW0uIEFuZA0KdGhhdCdzIGRlZmluaXRlbHkgbm90IGEgdmFsaWQgcmVhc29uIHRvIHBocmFzZSB0
aGluZ3MgbGlrZSBhYm92ZS4NCg0KPiBJdCdzIGp1c3QgdGhhdCB0aGUgdGVjaG5pY2FsIHJlbGF0
aW9uc2hpcCBiZXR3ZWVuIHByZXZlbnRpbmcgam9icyBmcm9tDQo+IHJ1bm5pbmcgYW5kIHdpdGgg
dGhhdCBwcmV2ZW50aW5nIGRtYV9mZW5jZXMgZnJvbSBzaWduYWxpbmcgYW5kIHRoZSBjb3JlDQo+
IG1lbW9yeSBtYW5hZ2VtZW50IHdpdGggcGFnZSBmYXVsdHMgYW5kIHNocmlua2VycyB3YWl0aW5n
IGZvciB0aG9zZQ0KPiBmZW5jZXMgaXMgYWJzb2x1dGVseSBub3Qgb2J2aW91cy4NCj4NCj4gV2Ug
aGFkIGF0IGxlYXN0IDEwIGRpZmZlcmVudCB0ZWFtcyBmcm9tIGRpZmZlcmVudCBjb21wYW5pZXMg
ZmFsbGluZyBpbnRvDQo+IHRoZSBzYW1lIHRyYXAgYWxyZWFkeSBhbmQgZWl0aGVyIHRoZSBwYXRj
aGVzIHdlcmUgcmVqZWN0ZWQgb2YgaGFuZCBvcg0KPiBoYWQgdG8gcGFpbmZ1bGx5IHJldmVydGVk
IG9yIG1pdGlnYXRlZCBsYXRlciBvbi4NCj4NCg0KU3VyZSwgYnV0IHRoYXQncyBqdXN0IHBhcnQg
b2YgdGhlIGpvYi4gQW5kIHBvaW50aW5nIG91dCBmdW5kYW1lbnRhbA0KbWlzdGFrZXMgZWFybHkg
b24gaXMgaW1wb3J0YW50LCBidXQgdGhlIHNpdHVhdGlvbiB3b24ndCBnZXQgYW55IGJldHRlcg0K
YnkgYmVpbmcgbGlrZSB0aGF0LiBZZXMsIHdlJ2xsIGhhdmUgdG8gcmVwZWF0IHRoZSBzYW1lIHdv
cmRzIG92ZXIgYW5kDQpvdmVyIGFnYWluLCBhbmQgeWVzIHRoYXQgbWlnaHQgYmUgYW5ub3lpbmcs
IGJ1dCB0aGF0J3MganVzdCBob3cgaXQgaXMuDQoNCj4gUmVnYXJkcywNCj4gQ2hyaXN0aWFuLg0K
Pg0KPiA+DQo+ID4+IElmIHRoZSBodyBpcyBidXN5IHdpdGggc29tZXRoaW5nIHlvdSBuZWVkIHRv
IHJldHVybiB0aGUgZmVuY2UgZm9yIHRoaXMNCj4gPj4gZnJvbSB0aGUgcHJlcGFyZV9qb2IgY2Fs
bGJhY2sgc28gdGhhdCB0aGUgc2NoZWR1bGVyIGNhbiBiZSBub3RpZmllZCB3aGVuDQo+ID4+IHRo
ZSBodyBpcyBhdmFpbGFibGUgYWdhaW4uDQo+ID4+DQo+ID4+IFJlZ2FyZHMsDQo+ID4+IENocmlz
dGlhbi4NCj4gPj4NCj4gPj4+IFNpZ25lZC1vZmYtYnk6IEFzYWhpIExpbmEgPGxpbmFAYXNhaGls
aW5hLm5ldD4NCj4gPj4+IC0tLQ0KPiA+Pj4gICAgZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9z
Y2hlZF9tYWluLmMgfCAxMCArKysrKysrKysrDQo+ID4+PiAgICBpbmNsdWRlL2RybS9ncHVfc2No
ZWR1bGVyLmggICAgICAgICAgICB8ICA4ICsrKysrKysrDQo+ID4+PiAgICAyIGZpbGVzIGNoYW5n
ZWQsIDE4IGluc2VydGlvbnMoKykNCj4gPj4+DQo+ID4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL3NjaGVkdWxlci9zY2hlZF9tYWluLmMgYi9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVy
L3NjaGVkX21haW4uYw0KPiA+Pj4gaW5kZXggNGU2YWQ2ZTEyMmJjLi41YzBhZGQyYzc1NDYgMTAw
NjQ0DQo+ID4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX21haW4uYw0K
PiA+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9tYWluLmMNCj4gPj4+
IEBAIC0xMDAxLDYgKzEwMDEsMTYgQEAgc3RhdGljIGludCBkcm1fc2NoZWRfbWFpbih2b2lkICpw
YXJhbSkNCj4gPj4+ICAgICAgICAgICAgICAgIGlmICghZW50aXR5KQ0KPiA+Pj4gICAgICAgICAg
ICAgICAgICAgICAgICBjb250aW51ZTsNCj4gPj4+DQo+ID4+PiArICAgICAgICAgICAgIGlmIChz
Y2hlZC0+b3BzLT5jYW5fcnVuX2pvYikgew0KPiA+Pj4gKyAgICAgICAgICAgICAgICAgICAgIHNj
aGVkX2pvYiA9IHRvX2RybV9zY2hlZF9qb2Ioc3BzY19xdWV1ZV9wZWVrKCZlbnRpdHktPmpvYl9x
dWV1ZSkpOw0KPiA+Pj4gKyAgICAgICAgICAgICAgICAgICAgIGlmICghc2NoZWRfam9iKSB7DQo+
ID4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjb21wbGV0ZV9hbGwoJmVudGl0eS0+
ZW50aXR5X2lkbGUpOw0KPiA+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY29udGlu
dWU7DQo+ID4+PiArICAgICAgICAgICAgICAgICAgICAgfQ0KPiA+Pj4gKyAgICAgICAgICAgICAg
ICAgICAgIGlmICghc2NoZWQtPm9wcy0+Y2FuX3J1bl9qb2Ioc2NoZWRfam9iKSkNCj4gPj4+ICsg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNvbnRpbnVlOw0KPiA+Pj4gKyAgICAgICAgICAg
ICB9DQo+ID4+PiArDQo+ID4+PiAgICAgICAgICAgICAgICBzY2hlZF9qb2IgPSBkcm1fc2NoZWRf
ZW50aXR5X3BvcF9qb2IoZW50aXR5KTsNCj4gPj4+DQo+ID4+PiAgICAgICAgICAgICAgICBpZiAo
IXNjaGVkX2pvYikgew0KPiA+Pj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2dwdV9zY2hlZHVs
ZXIuaCBiL2luY2x1ZGUvZHJtL2dwdV9zY2hlZHVsZXIuaA0KPiA+Pj4gaW5kZXggOWRiOWU1ZTUw
NGVlLi5iZDg5ZWE5NTA3YjkgMTAwNjQ0DQo+ID4+PiAtLS0gYS9pbmNsdWRlL2RybS9ncHVfc2No
ZWR1bGVyLmgNCj4gPj4+ICsrKyBiL2luY2x1ZGUvZHJtL2dwdV9zY2hlZHVsZXIuaA0KPiA+Pj4g
QEAgLTM5Niw2ICszOTYsMTQgQEAgc3RydWN0IGRybV9zY2hlZF9iYWNrZW5kX29wcyB7DQo+ID4+
PiAgICAgICAgc3RydWN0IGRtYV9mZW5jZSAqKCpwcmVwYXJlX2pvYikoc3RydWN0IGRybV9zY2hl
ZF9qb2IgKnNjaGVkX2pvYiwNCj4gPj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBzdHJ1Y3QgZHJtX3NjaGVkX2VudGl0eSAqc19lbnRpdHkpOw0KPiA+Pj4NCj4gPj4+
ICsgICAgIC8qKg0KPiA+Pj4gKyAgICAgICogQGNhbl9ydW5fam9iOiBDYWxsZWQgYmVmb3JlIGpv
YiBleGVjdXRpb24gdG8gY2hlY2sgd2hldGhlciB0aGUNCj4gPj4+ICsgICAgICAqIGhhcmR3YXJl
IGlzIGZyZWUgZW5vdWdoIHRvIHJ1biB0aGUgam9iLiAgVGhpcyBjYW4gYmUgdXNlZCB0bw0KPiA+
Pj4gKyAgICAgICogaW1wbGVtZW50IG1vcmUgY29tcGxleCBoYXJkd2FyZSByZXNvdXJjZSBwb2xp
Y2llcyB0aGFuIHRoZQ0KPiA+Pj4gKyAgICAgICogaHdfc3VibWlzc2lvbiBsaW1pdC4NCj4gPj4+
ICsgICAgICAqLw0KPiA+Pj4gKyAgICAgYm9vbCAoKmNhbl9ydW5fam9iKShzdHJ1Y3QgZHJtX3Nj
aGVkX2pvYiAqc2NoZWRfam9iKTsNCj4gPj4+ICsNCj4gPj4+ICAgICAgICAvKioNCj4gPj4+ICAg
ICAgICAgICAgICogQHJ1bl9qb2I6IENhbGxlZCB0byBleGVjdXRlIHRoZSBqb2Igb25jZSBhbGwg
b2YgdGhlIGRlcGVuZGVuY2llcw0KPiA+Pj4gICAgICAgICAgICAgKiBoYXZlIGJlZW4gcmVzb2x2
ZWQuICBUaGlzIG1heSBiZSBjYWxsZWQgbXVsdGlwbGUgdGltZXMsIGlmDQo+ID4+Pg0KPg0KDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5z
dWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFy
by5vcmcK
