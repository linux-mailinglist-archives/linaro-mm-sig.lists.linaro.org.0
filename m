Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E99C36BBAC4
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Mar 2023 18:23:22 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 01D073F456
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Mar 2023 17:23:22 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id 560983E960
	for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Mar 2023 15:19:33 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=LsH8oHbT;
	spf=pass (lists.linaro.org: domain of kherbst@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=kherbst@redhat.com;
	dmarc=pass (policy=none) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1678288773;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ZgwktT8M+kuZL3ds+rvp4biP/Gs8JikDQD7POfmJAag=;
	b=LsH8oHbTjbl/dySPw47O1YZA0is5cbgVo/hiu6LRn54DathUgLjgTJgeYj/JpbSIZB46tF
	FxFMsWx4uCJezZ0jFKWzHx/o72jDJEqxhK5aUtWfNhpszBW13Z0FvVMzYTYWT4N9bmSQG4
	SLad5rsN54+GZMvDBwozWWNPnhEfDaE=
Received: from mail-vs1-f70.google.com (mail-vs1-f70.google.com
 [209.85.217.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-452-D_4mMKzMOfC_OdTlHPmioQ-1; Wed, 08 Mar 2023 10:19:32 -0500
X-MC-Unique: D_4mMKzMOfC_OdTlHPmioQ-1
Received: by mail-vs1-f70.google.com with SMTP id k12-20020a056102116c00b0041eb4da08b5so6078588vsg.7
        for <linaro-mm-sig@lists.linaro.org>; Wed, 08 Mar 2023 07:19:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678288770;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZgwktT8M+kuZL3ds+rvp4biP/Gs8JikDQD7POfmJAag=;
        b=H/YwRm4f+4Ddp8kRcMvgpHnCuGHbpBOtSgPVTa6CYv+kUVJh1m/MIcchcX1cdo28OT
         xjuKOyph/1xaitLIZU9sZu6dJKVHCxEJ/GAf2oNNiEhld9rM5v2TSGlRhpHdl3eyywDV
         ZYvXgbTpz53+ZDj26qc2ruYK03GQB1xx3/JeU+W0BugfPsGn3auwd/m+hNoRqOj8mRh3
         EoJONJ/57wzQV+wLWJ/FODlyg7JfzGtraA4nH9UtHeBrnCtUFjxCOn+7dj7H8b3PvjWU
         edaE8q/Qjm71BDR02EI8PzneKhfYfrya2seTvdE2olBf3rzw+cpAyIlunsPlJyq8U0tM
         teOQ==
X-Gm-Message-State: AO0yUKXfq6eXbrIzUW97PZKjiblcZs61D1sTVnXmjogo6/uWLPnHM+JF
	rArit1QaeFXkZaUepMMXMGnyeH8ElNDNnTDwuVX5PmiKXb0catGrKJgqkglDV0guY0aAmAx5M9l
	P8n/D2qHyWQUrQOiVMfPu5kjmrO24t02IV1ni7KEOa0o=
X-Received: by 2002:a67:e94c:0:b0:421:c4a7:872b with SMTP id p12-20020a67e94c000000b00421c4a7872bmr9893521vso.6.1678288770287;
        Wed, 08 Mar 2023 07:19:30 -0800 (PST)
X-Google-Smtp-Source: AK7set+LFkvKeeVI3ttwm6kpFUQRkNGkfJ8qbDCG4jHcdwVIQ4SiuFcDQxKvoIfsyVYsxcEJcY4MnTcZLVjC63cvuTo=
X-Received: by 2002:a67:e94c:0:b0:421:c4a7:872b with SMTP id
 p12-20020a67e94c000000b00421c4a7872bmr9893505vso.6.1678288769989; Wed, 08 Mar
 2023 07:19:29 -0800 (PST)
MIME-Version: 1.0
References: <20230307-rust-drm-v1-0-917ff5bc80a8@asahilina.net>
 <20230307-rust-drm-v1-10-917ff5bc80a8@asahilina.net> <cd788ccf-0cf1-85d5-1bf8-efc259bd7e11@amd.com>
 <CACO55tsnCMQt8UW5_UCY139kpZOdNXbMkBkFfUiB12jW5UgVmA@mail.gmail.com>
 <0d6cd23b-8c9e-067d-97ff-aa35dbbcf9bf@amd.com> <CACO55tumNMYrcJ0LhnLfTK4DmGLHD-bt3xpXyoPe98V2wmgXQg@mail.gmail.com>
 <269c4fb7-60f6-6778-444d-15703febea58@amd.com>
In-Reply-To: <269c4fb7-60f6-6778-444d-15703febea58@amd.com>
From: Karol Herbst <kherbst@redhat.com>
Date: Wed, 8 Mar 2023 16:19:17 +0100
Message-ID: <CACO55tuVVnC-_iVmX=SGGVF=0t6kqqr0Cy0pGe3YoppBgUbiXw@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 560983E960
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,none];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	R_SPF_ALLOW(-0.20)[+ip4:170.10.133.0/24];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:30031, ipnet:170.10.132.0/23, country:US];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[asahilina.net,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,garyguo.net,protonmail.com,linaro.org,amd.com,rosenzweig.io,iglunix.org,collabora.com,mary.zone,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	RCPT_COUNT_TWELVE(0.00)[28];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:+];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[170.10.133.124:from]
X-MailFrom: kherbst@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 5GURHTN5VZI6YP2Y2OMWBLQRCVOLG4IM
X-Message-ID-Hash: 5GURHTN5VZI6YP2Y2OMWBLQRCVOLG4IM
X-Mailman-Approved-At: Wed, 15 Mar 2023 17:21:58 +0000
CC: Asahi Lina <lina@asahilina.net>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>, Miguel Ojeda <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>, Wedson Almeida Filho <wedsonaf@gmail.com>, Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, =?UTF-8?Q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Luben Tuikov <luben.tuikov@amd.com>, Jarkko Sakkinen <jarkko@kernel.org>, Dave Hansen <dave.hansen@linux.intel.com>, Alyssa Rosenzweig <alyssa@rosenzweig.io>, Ella Stanforth <ella@iglunix.org>, Faith Ekstrand <faith.ekstrand@collabora.com>, Mary <mary@mary.zone>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-sgx@vger.kernel.org, asahi@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 10/18] drm/scheduler: Add can_run_job callback
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5GURHTN5VZI6YP2Y2OMWBLQRCVOLG4IM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBNYXIgOCwgMjAyMyBhdCA0OjA54oCvUE0gQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0
aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToNCj4NCj4gQW0gMDguMDMuMjMgdW0gMTU6NDMgc2No
cmllYiBLYXJvbCBIZXJic3Q6DQo+ID4gW1NOSVBdDQo+ID4gImZ1cnRoZXIiPyBUaGVyZSB3YXMg
bm8gZGlzY3Vzc2lvbiBhdCBhbGwsDQo+DQo+IFllYWgsIHdlbGwgdGhhdCBpcyBleGFjdGx5IHdo
YXQgSSB3YW50ZWQgdG8gYXJjaGl2ZS4NCj4NCj4gPiAgIHlvdSBqdXN0IHN0YXJ0ZWQgb2ZmIGxp
a2UNCj4gPiB0aGF0LiBJZiB5b3UgdGhpbmsgc29tZWJvZHkgbWlzc2VzIHRoYXQgY29ubmVjdGlv
biwgeW91IGNhbiBwb2ludCBvdXQNCj4gPiB0byBkb2N1bWVudGF0aW9uL3ZpZGVvcyB3aGF0ZXZl
ciBzbyB0aGUgY29udHJpYnV0b3IgY2FuIHVuZGVyc3RhbmQNCj4gPiB3aGF0J3Mgd3Jvbmcgd2l0
aCBhbiBhcHByb2FjaC4gWW91IGRpZCB0aGF0LCBzbyB0aGF0J3MgZmluZS4gSXQncyBqdXN0DQo+
ID4gc3RhcnRpbmcgb2ZmIF9hbnlfIGRpc2N1c3Npb24gd2l0aCBhICJXZWxsIGNvbXBsZXRlIE5B
SyIgaXMgdGVycmlibGUNCj4gPiBzdHlsZS4gSSdkIGZlZWwgdW5jb21mb3J0YWJsZSBpZiB0aGF0
IGhhcHBlbmVkIHRvIG1lIGFuZCBJJ20gc3VyZQ0KPiA+IHRoZXJlIGFyZSBlbm91Z2ggcGVvcGxl
IGxpa2UgdGhhdCB0aGF0IHdlIHNob3VsZCBiZSBtb3JlIHJlYXNvbmFibGUNCj4gPiB3aXRoIG91
ciByZXBsaWVzLiBKdXN0Li4gZG9uJ3QuDQo+ID4NCj4gPiBXZSBhcmUgYWxsIGh1bWFucyBoZXJl
IGFuZCBwZW9wbGUgcmVhY3QgbmVnYXRpdmVseSB0byBzdWNoIHRoaW5ncy4gQW5kDQo+ID4gaWYg
cGVvcGxlIGRvIGl0IG9uIHB1cnBvc2UgaXQganVzdCBtYWtlcyBpdCB3b3JzZS4NCj4NCj4gSSBj
b21wbGV0ZWx5IHNlZSB5b3VyIHBvaW50LCBJIGp1c3QgZG9uJ3Qga25vdyBob3cgdG8gaW1wcm92
ZSBpdC4NCj4NCj4gSSBkb24ndCBzdG9wIHBlb3BsZSBsaWtlIHRoaXMgYmVjYXVzZSBJIHdhbnQg
dG8gbWFrZSB0aGVtIHVuY29tZm9ydGFibGUNCj4gYnV0IGJlY2F1c2UgSSB3YW50IHRvIHByZXZl
bnQgZnVydGhlciBkaXNjdXNzaW9ucyBvbiB0aGF0IHRvcGljLg0KPg0KPiBJbiBvdGhlciB3b3Jk
cyBob3cgY2FuIEkgbWFrZSBwZW9wbGUgbm90aWNlIHRoYXQgdGhpcyBpcyBzb21ldGhpbmcNCj4g
ZnVuZGFtZW50YWwgd2hpbGUgc3RpbGwgYmVpbmcgcG9saXRlPw0KPg0KDQpJIHRoaW5rIGEgbGl0
dGxlIGltcHJvdmVtZW50IG92ZXIgdGhpcyB3b3VsZCBiZSB0byBhdCBsZWFzdCB3YWl0IGEgZmV3
DQpyZXBsaWVzIGJlZm9yZSByZXNvcnRpbmcgdG8gdGhvc2Ugc3Ryb25nIHN0YXRlbWVudHMuIEp1
c3QgYmVmb3JlIGl0DQpiZWNvbWVzIGEgcmlzayBpbiBqdXN0IHdhc3RpbmcgdGltZS4NCg0KPiA+
Pj4+IFRoaXMgaXMgY2xlYXJseSBnb2luZyBhZ2FpbnN0IHRoZSBpZGVhIG9mIGhhdmluZyBqb2Jz
IG9ubHkgZGVwZW5kIG9uDQo+ID4+Pj4gZmVuY2VzIGFuZCBub3RoaW5nIGVsc2Ugd2hpY2ggaXMg
bWFuZGF0b3J5IGZvciBjb3JyZWN0IG1lbW9yeSBtYW5hZ2VtZW50Lg0KPiA+Pj4+DQo+ID4+PiBJ
J20gc3VyZSBpdCdzIGFsbCBkb2N1bWVudGVkIGFuZCB0aGVyZSBpcyBhIGRlc2lnbiBkb2N1bWVu
dCBvbiBob3cNCj4gPj4+IHRoaW5ncyBoYXZlIHRvIGxvb2sgbGlrZSB5b3UgY2FuIHBvaW50IG91
dD8gTWlnaHQgaGVscCB0byBnZXQgYSBiZXR0ZXINCj4gPj4+IHVuZGVyc3RhbmRpbmcgb24gaG93
IHRoaW5ncyBzaG91bGQgYmUuDQo+ID4+IFllYWgsIHRoYXQncyB0aGUgcHJvYmxlbWF0aWMgcGFy
dC4gV2UgaGF2ZSBkb2N1bWVudGVkIHRoaXMgdmVyeQ0KPiA+PiBleHRlbnNpdmVseToNCj4gPj4g
aHR0cHM6Ly93d3cua2VybmVsLm9yZy9kb2MvaHRtbC92NS45L2RyaXZlci1hcGkvZG1hLWJ1Zi5o
dG1sI2luZGVmaW5pdGUtZG1hLWZlbmNlcw0KPiA+Pg0KPiA+PiBBbmQgYm90aCBKYXNvbiBhbmQg
RGFuaWVsIGdhdmUgdGFsa3MgYWJvdXQgdGhlIHVuZGVybHlpbmcgcHJvYmxlbSBhbmQNCj4gPiBm
eWk6DQo+ID4gcy9KYXNvbi9GYWl0aC9nDQo+DQo+ICsxLiBJIHdhc24ndCBhd2FyZSBvZiB0aGF0
Lg0KPg0KPiA+PiB0cnkgdG8gY29tZSB1cCB3aXRoIHBhdGNoZXMgdG8gcmFpc2Ugd2FybmluZ3Mg
d2hlbiB0aGF0IGhhcHBlbnMsIGJ1dA0KPiA+PiBwZW9wbGUgc3RpbGwga2VlcCBjb21pbmcgdXAg
d2l0aCB0aGUgc2FtZSBpZGVhIG92ZXIgYW5kIG92ZXIgYWdhaW4uDQo+ID4+DQo+ID4gWWVzLCBh
bmQgd2UnbGwgaGF2ZSB0byB0ZWxsIHRoZW0gb3ZlciBhbmQgb3ZlciBhZ2Fpbi4gTm90aGluZyB3
cm9uZw0KPiA+IHdpdGggdGhhdC4gVGhhdCdzIGp1c3QgcGFydCBvZiBtYWludGFpbmluZyBzdWNo
IGEgYmlnIHN1YnN5c3RlbS4gQW5kDQo+ID4gdGhhdCdzIGRlZmluaXRlbHkgbm90IGEgdmFsaWQg
cmVhc29uIHRvIHBocmFzZSB0aGluZ3MgbGlrZSBhYm92ZS4NCj4gPg0KPiA+PiBJdCdzIGp1c3Qg
dGhhdCB0aGUgdGVjaG5pY2FsIHJlbGF0aW9uc2hpcCBiZXR3ZWVuIHByZXZlbnRpbmcgam9icyBm
cm9tDQo+ID4+IHJ1bm5pbmcgYW5kIHdpdGggdGhhdCBwcmV2ZW50aW5nIGRtYV9mZW5jZXMgZnJv
bSBzaWduYWxpbmcgYW5kIHRoZSBjb3JlDQo+ID4+IG1lbW9yeSBtYW5hZ2VtZW50IHdpdGggcGFn
ZSBmYXVsdHMgYW5kIHNocmlua2VycyB3YWl0aW5nIGZvciB0aG9zZQ0KPiA+PiBmZW5jZXMgaXMg
YWJzb2x1dGVseSBub3Qgb2J2aW91cy4NCj4gPj4NCj4gPj4gV2UgaGFkIGF0IGxlYXN0IDEwIGRp
ZmZlcmVudCB0ZWFtcyBmcm9tIGRpZmZlcmVudCBjb21wYW5pZXMgZmFsbGluZyBpbnRvDQo+ID4+
IHRoZSBzYW1lIHRyYXAgYWxyZWFkeSBhbmQgZWl0aGVyIHRoZSBwYXRjaGVzIHdlcmUgcmVqZWN0
ZWQgb2YgaGFuZCBvcg0KPiA+PiBoYWQgdG8gcGFpbmZ1bGx5IHJldmVydGVkIG9yIG1pdGlnYXRl
ZCBsYXRlciBvbi4NCj4gPj4NCj4gPiBTdXJlLCBidXQgdGhhdCdzIGp1c3QgcGFydCBvZiB0aGUg
am9iLiBBbmQgcG9pbnRpbmcgb3V0IGZ1bmRhbWVudGFsDQo+ID4gbWlzdGFrZXMgZWFybHkgb24g
aXMgaW1wb3J0YW50LCBidXQgdGhlIHNpdHVhdGlvbiB3b24ndCBnZXQgYW55IGJldHRlcg0KPiA+
IGJ5IGJlaW5nIGxpa2UgdGhhdC4gWWVzLCB3ZSdsbCBoYXZlIHRvIHJlcGVhdCB0aGUgc2FtZSB3
b3JkcyBvdmVyIGFuZA0KPiA+IG92ZXIgYWdhaW4sIGFuZCB5ZXMgdGhhdCBtaWdodCBiZSBhbm5v
eWluZywgYnV0IHRoYXQncyBqdXN0IGhvdyBpdCBpcy4NCj4NCj4gV2VsbCBJIGhhdmUgbm8gcHJv
YmxlbSBleHBsYWluaW5nIHBlb3BsZSB3aHkgYSBzb2x1dGlvbiBkb2Vzbid0IHdvcmsuDQo+DQo+
IEJ1dCB3aGF0IHVzdWFsbHkgaGFwcGVucyBpcyB0aGF0IHBlb3BsZSBkb24ndCByZWFsaXplIHRo
YXQgdGhleSBuZWVkIHRvDQo+IGJhY2sgb2YgZnJvbSBhIGRlc2lnbiBhbmQgY29tcGxldGVseSBz
dGFydCBvdmVyLg0KPg0KPiBSZWdhcmRzLA0KPiBDaHJpc3RpYW4uDQo+DQo+ID4NCj4gPj4gUmVn
YXJkcywNCj4gPj4gQ2hyaXN0aWFuLg0KPiA+Pg0KPiA+Pj4+IElmIHRoZSBodyBpcyBidXN5IHdp
dGggc29tZXRoaW5nIHlvdSBuZWVkIHRvIHJldHVybiB0aGUgZmVuY2UgZm9yIHRoaXMNCj4gPj4+
PiBmcm9tIHRoZSBwcmVwYXJlX2pvYiBjYWxsYmFjayBzbyB0aGF0IHRoZSBzY2hlZHVsZXIgY2Fu
IGJlIG5vdGlmaWVkIHdoZW4NCj4gPj4+PiB0aGUgaHcgaXMgYXZhaWxhYmxlIGFnYWluLg0KPiA+
Pj4+DQo+ID4+Pj4gUmVnYXJkcywNCj4gPj4+PiBDaHJpc3RpYW4uDQo+ID4+Pj4NCj4gPj4+Pj4g
U2lnbmVkLW9mZi1ieTogQXNhaGkgTGluYSA8bGluYUBhc2FoaWxpbmEubmV0Pg0KPiA+Pj4+PiAt
LS0NCj4gPj4+Pj4gICAgIGRyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfbWFpbi5jIHwg
MTAgKysrKysrKysrKw0KPiA+Pj4+PiAgICAgaW5jbHVkZS9kcm0vZ3B1X3NjaGVkdWxlci5oICAg
ICAgICAgICAgfCAgOCArKysrKysrKw0KPiA+Pj4+PiAgICAgMiBmaWxlcyBjaGFuZ2VkLCAxOCBp
bnNlcnRpb25zKCspDQo+ID4+Pj4+DQo+ID4+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vc2NoZWR1bGVyL3NjaGVkX21haW4uYyBiL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2No
ZWRfbWFpbi5jDQo+ID4+Pj4+IGluZGV4IDRlNmFkNmUxMjJiYy4uNWMwYWRkMmM3NTQ2IDEwMDY0
NA0KPiA+Pj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX21haW4uYw0K
PiA+Pj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX21haW4uYw0KPiA+
Pj4+PiBAQCAtMTAwMSw2ICsxMDAxLDE2IEBAIHN0YXRpYyBpbnQgZHJtX3NjaGVkX21haW4odm9p
ZCAqcGFyYW0pDQo+ID4+Pj4+ICAgICAgICAgICAgICAgICBpZiAoIWVudGl0eSkNCj4gPj4+Pj4g
ICAgICAgICAgICAgICAgICAgICAgICAgY29udGludWU7DQo+ID4+Pj4+DQo+ID4+Pj4+ICsgICAg
ICAgICAgICAgaWYgKHNjaGVkLT5vcHMtPmNhbl9ydW5fam9iKSB7DQo+ID4+Pj4+ICsgICAgICAg
ICAgICAgICAgICAgICBzY2hlZF9qb2IgPSB0b19kcm1fc2NoZWRfam9iKHNwc2NfcXVldWVfcGVl
aygmZW50aXR5LT5qb2JfcXVldWUpKTsNCj4gPj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgIGlm
ICghc2NoZWRfam9iKSB7DQo+ID4+Pj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNv
bXBsZXRlX2FsbCgmZW50aXR5LT5lbnRpdHlfaWRsZSk7DQo+ID4+Pj4+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIGNvbnRpbnVlOw0KPiA+Pj4+PiArICAgICAgICAgICAgICAgICAgICAg
fQ0KPiA+Pj4+PiArICAgICAgICAgICAgICAgICAgICAgaWYgKCFzY2hlZC0+b3BzLT5jYW5fcnVu
X2pvYihzY2hlZF9qb2IpKQ0KPiA+Pj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICBj
b250aW51ZTsNCj4gPj4+Pj4gKyAgICAgICAgICAgICB9DQo+ID4+Pj4+ICsNCj4gPj4+Pj4gICAg
ICAgICAgICAgICAgIHNjaGVkX2pvYiA9IGRybV9zY2hlZF9lbnRpdHlfcG9wX2pvYihlbnRpdHkp
Ow0KPiA+Pj4+Pg0KPiA+Pj4+PiAgICAgICAgICAgICAgICAgaWYgKCFzY2hlZF9qb2IpIHsNCj4g
Pj4+Pj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2dwdV9zY2hlZHVsZXIuaCBiL2luY2x1ZGUv
ZHJtL2dwdV9zY2hlZHVsZXIuaA0KPiA+Pj4+PiBpbmRleCA5ZGI5ZTVlNTA0ZWUuLmJkODllYTk1
MDdiOSAxMDA2NDQNCj4gPj4+Pj4gLS0tIGEvaW5jbHVkZS9kcm0vZ3B1X3NjaGVkdWxlci5oDQo+
ID4+Pj4+ICsrKyBiL2luY2x1ZGUvZHJtL2dwdV9zY2hlZHVsZXIuaA0KPiA+Pj4+PiBAQCAtMzk2
LDYgKzM5NiwxNCBAQCBzdHJ1Y3QgZHJtX3NjaGVkX2JhY2tlbmRfb3BzIHsNCj4gPj4+Pj4gICAg
ICAgICBzdHJ1Y3QgZG1hX2ZlbmNlICooKnByZXBhcmVfam9iKShzdHJ1Y3QgZHJtX3NjaGVkX2pv
YiAqc2NoZWRfam9iLA0KPiA+Pj4+PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHN0cnVjdCBkcm1fc2NoZWRfZW50aXR5ICpzX2VudGl0eSk7DQo+ID4+Pj4+DQo+ID4+
Pj4+ICsgICAgIC8qKg0KPiA+Pj4+PiArICAgICAgKiBAY2FuX3J1bl9qb2I6IENhbGxlZCBiZWZv
cmUgam9iIGV4ZWN1dGlvbiB0byBjaGVjayB3aGV0aGVyIHRoZQ0KPiA+Pj4+PiArICAgICAgKiBo
YXJkd2FyZSBpcyBmcmVlIGVub3VnaCB0byBydW4gdGhlIGpvYi4gIFRoaXMgY2FuIGJlIHVzZWQg
dG8NCj4gPj4+Pj4gKyAgICAgICogaW1wbGVtZW50IG1vcmUgY29tcGxleCBoYXJkd2FyZSByZXNv
dXJjZSBwb2xpY2llcyB0aGFuIHRoZQ0KPiA+Pj4+PiArICAgICAgKiBod19zdWJtaXNzaW9uIGxp
bWl0Lg0KPiA+Pj4+PiArICAgICAgKi8NCj4gPj4+Pj4gKyAgICAgYm9vbCAoKmNhbl9ydW5fam9i
KShzdHJ1Y3QgZHJtX3NjaGVkX2pvYiAqc2NoZWRfam9iKTsNCj4gPj4+Pj4gKw0KPiA+Pj4+PiAg
ICAgICAgIC8qKg0KPiA+Pj4+PiAgICAgICAgICAgICAgKiBAcnVuX2pvYjogQ2FsbGVkIHRvIGV4
ZWN1dGUgdGhlIGpvYiBvbmNlIGFsbCBvZiB0aGUgZGVwZW5kZW5jaWVzDQo+ID4+Pj4+ICAgICAg
ICAgICAgICAqIGhhdmUgYmVlbiByZXNvbHZlZC4gIFRoaXMgbWF5IGJlIGNhbGxlZCBtdWx0aXBs
ZSB0aW1lcywgaWYNCj4gPj4+Pj4NCj4NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGlu
YXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
