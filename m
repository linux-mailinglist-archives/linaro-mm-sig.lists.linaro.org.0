Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B71B6BBA9D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Mar 2023 18:12:01 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9CC313F47A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Mar 2023 17:12:00 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id 125573EECA
	for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Mar 2023 12:40:04 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=B2BMnMd9;
	spf=pass (lists.linaro.org: domain of kherbst@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=kherbst@redhat.com;
	dmarc=pass (policy=none) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1678279203;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=VJeOz/TwjDaJpvxJ/JatQ2Vwz4TDO8vQcbmv9Au+kic=;
	b=B2BMnMd9x9Rio2yTohAkDoC4/kPGUuzaODHDZsP1skW/bC0OtEDXbfKB8TWmQGqD8jukbg
	tQVr6J9HFty5NbnPMGN+8spyDxZTRA6yGMXzkznkzr8a7gTQULSzGTv3LQyqRU4w7SkK+J
	tBCbp2Gsu+ZInJLskK4RLvce/qw79R0=
Received: from mail-lj1-f197.google.com (mail-lj1-f197.google.com
 [209.85.208.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-339-BMps_lnDMBSNQrWx2biLsQ-1; Wed, 08 Mar 2023 07:40:02 -0500
X-MC-Unique: BMps_lnDMBSNQrWx2biLsQ-1
Received: by mail-lj1-f197.google.com with SMTP id x37-20020a2ea9a5000000b00295b9da42d6so5404623ljq.18
        for <linaro-mm-sig@lists.linaro.org>; Wed, 08 Mar 2023 04:40:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678279198;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VJeOz/TwjDaJpvxJ/JatQ2Vwz4TDO8vQcbmv9Au+kic=;
        b=xaNWCsPh4SMHDW2g9sD6NCd+VenxyRHI6ecP0i7Z0YhDlCv/50vN8HUThFcTHfj/3l
         jcQ/K/c1NTNw6/+LMPoWGmdWdmVdoB9fgyW/elUdojkkuIRHDNoy8dZjYlsrvMYT4UI2
         ODj3zwJD2G5BqYus79wXM5Su3YQV+O7hoI5iA1XXGdeNwe3/VL11eDCz83buWD//CH1T
         Xm3GafMHyqbwBWtoUU6FD54xc3wjGw5BRGC0zlrcWgGldhETrjZUApH/cd/2vxY0thld
         i/rVkPBWtYL8PllVgSOiXgILdowE8QWhUlDmrmrRR2LPPenF+s8G4No411Q9+k4CwlVD
         /ymA==
X-Gm-Message-State: AO0yUKXxE+LfuztIPSSCVZjnbJqqudsN8uOUtyNlniWASuiZT9kkIkSG
	XdftKA99H2ijBj/74MD4eLl5bH5IyVgpmCaFq0iQzjGNzDHz+wA3b1upr8r3Ou13EXUa7fys4P5
	131uCIHJhOGY6ZfN+leXg5ZiyNj/z6eyWVsB+Myd3KVo=
X-Received: by 2002:ac2:4117:0:b0:4d5:ca32:7bc5 with SMTP id b23-20020ac24117000000b004d5ca327bc5mr5524028lfi.12.1678279198477;
        Wed, 08 Mar 2023 04:39:58 -0800 (PST)
X-Google-Smtp-Source: AK7set8FUpPht+EPsUrSn5a6+Tar9OiMu+wlN+EYgOwEqyTMD6viZtSkh1MIdkQE1nv3hutVyBf4yr0OssgVzKPbdmA=
X-Received: by 2002:ac2:4117:0:b0:4d5:ca32:7bc5 with SMTP id
 b23-20020ac24117000000b004d5ca327bc5mr5524019lfi.12.1678279198181; Wed, 08
 Mar 2023 04:39:58 -0800 (PST)
MIME-Version: 1.0
References: <20230307-rust-drm-v1-0-917ff5bc80a8@asahilina.net>
 <20230307-rust-drm-v1-10-917ff5bc80a8@asahilina.net> <cd788ccf-0cf1-85d5-1bf8-efc259bd7e11@amd.com>
In-Reply-To: <cd788ccf-0cf1-85d5-1bf8-efc259bd7e11@amd.com>
From: Karol Herbst <kherbst@redhat.com>
Date: Wed, 8 Mar 2023 13:39:45 +0100
Message-ID: <CACO55tsnCMQt8UW5_UCY139kpZOdNXbMkBkFfUiB12jW5UgVmA@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 125573EECA
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,none];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	R_SPF_ALLOW(-0.20)[+ip4:170.10.129.0/24];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:30031, ipnet:170.10.128.0/23, country:US];
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
	RWL_MAILSPIKE_POSSIBLE(0.00)[170.10.129.124:from]
X-MailFrom: kherbst@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: L6NNBB34BLMLLFINMLVUWRYTMC46ZAO3
X-Message-ID-Hash: L6NNBB34BLMLLFINMLVUWRYTMC46ZAO3
X-Mailman-Approved-At: Wed, 15 Mar 2023 17:03:59 +0000
CC: Asahi Lina <lina@asahilina.net>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>, Miguel Ojeda <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>, Wedson Almeida Filho <wedsonaf@gmail.com>, Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, =?UTF-8?Q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Luben Tuikov <luben.tuikov@amd.com>, Jarkko Sakkinen <jarkko@kernel.org>, Dave Hansen <dave.hansen@linux.intel.com>, Alyssa Rosenzweig <alyssa@rosenzweig.io>, Ella Stanforth <ella@iglunix.org>, Faith Ekstrand <faith.ekstrand@collabora.com>, Mary <mary@mary.zone>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-sgx@vger.kernel.org, asahi@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 10/18] drm/scheduler: Add can_run_job callback
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/L6NNBB34BLMLLFINMLVUWRYTMC46ZAO3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBNYXIgOCwgMjAyMyBhdCA5OjQ24oCvQU0gQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0
aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToNCj4NCj4gQW0gMDcuMDMuMjMgdW0gMTU6MjUgc2No
cmllYiBBc2FoaSBMaW5hOg0KPiA+IFNvbWUgaGFyZHdhcmUgbWF5IHJlcXVpcmUgbW9yZSBjb21w
bGV4IHJlc291cmNlIHV0aWxpemF0aW9uIGFjY291bnRpbmcNCj4gPiB0aGFuIHRoZSBzaW1wbGUg
am9iIGNvdW50IHN1cHBvcnRlZCBieSBkcm1fc2NoZWQgaW50ZXJuYWxseS4gQWRkIGENCj4gPiBj
YW5fcnVuX2pvYiBjYWxsYmFjayB0byBhbGxvdyBkcml2ZXJzIHRvIGltcGxlbWVudCBtb3JlIGxv
Z2ljIGJlZm9yZQ0KPiA+IGRlY2lkaW5nIHdoZXRoZXIgdG8gcnVuIGEgR1BVIGpvYi4NCj4NCj4g
V2VsbCBjb21wbGV0ZSBOQUsuDQo+DQoNClRoZXJlIGhhc24ndCBldmVuIGJlZW4gYW55IGtpbmQg
b2YgZGlzY3Vzc2lvbiB5ZXQgeW91IGFscmVhZHkgY29tZQ0KYXJvdW5kIHdpdGggYSAiV2VsbCBj
b21wbGV0ZSBOQUsiDQoNCkZpcnN0LCB0aGlzIGNhbiBiZSBzZWVuIGFzIHJ1ZGUgYmVoYXZpb3Ig
YW5kIG1lIGJlaW5nIHBhcnQgb2YgdGhlIGRybQ0KY29tbXVuaXR5IEkgZG9uJ3Qgd2FudCB0byBo
YXZlIHRvIHNlZSB0aGlzIGtpbmQgb2YgdGhpbmcuDQoNCk9idmlvdXNseSwgYW55IGtpbmQgb2Yg
c3Ryb25nICJ0ZWNobmljYWwiIHJldmlldyBwb2ludCBpcyBhIG5hayB1bnRpbA0KcGVvcGxlIHNl
dHRsZSB3aXRoIGFuIGFncmVlbWVudCBvbiB3aGF0IHRvIGxhbmQsIHRoZXJlIGlzIG5vIHBvaW50
IGluDQpwb2ludGluZyBvdXQgYSAiTkFLIiwgZXNwZWNpYWxseSBpZiB0aGF0J3MgdGhlIGZpcnN0
IHRoaW5nIHlvdSBzYXkuIElmDQp5b3Ugd2FudCB0byBleHByZXNzIHlvdXIgc3Ryb25nIGRpc2Fn
cmVlbWVudCB3aXRoIHRoZSBwcm9wb3NlZA0Kc29sdXRpb24sIHRoZW4gc3RhdGUgd2hhdCB5b3Vy
IHBhaW4gcG9pbnRzIGFyZSBkaXJlY3RseS4NCg0KSWYgdGhlcmUgaXMgYSBsb25nIGRpc2N1c3Np
b24gYW5kIGEgbWFpbnRhaW5lciBmZWVscyBpdCdzIGdvaW5nDQpub3doZXJlIGFuZCBubyBjb25j
bHVzaW9uIHdpbGwgYmUgcmVhY2hlZCBpdCBtaWdodCBiZSB0aGlzIGtpbmQgb2YNCiJzcGVha2lu
ZyB3aXRoIGF1dGhvcml0eSIgcG9pbnQgaGFzIHRvIGJlIG1hZGUuIEJ1dCBub3QgYXMgdGhlIHN0
YXJ0ZXINCmludG8gYSBkaXNjdXNzaW9uLiBUaGlzIGlzIHVubmVjZXNzYXJpbHkgaG9zdGlsZSB0
b3dhcmRzIHRoZQ0KY29udHJpYnV0b3IuIEFuZCBJIHdpc2hlZCB3ZSB3b3VsZG4ndCBoYXZlIHRv
IHNlZSB0aGlzIGtpbmQgb2YNCmJlaGF2aW9yIGhlcmUuDQoNClllcywgc29tZSBrZXJuZWwgbWFp
bnRhaW5lcnMgZG8gdGhpcyBhIGxvdCwgYnV0IGtlcm5lbCBtYWludGFpbmVycw0KYWxzbyBoYXZl
IHRoaXMga2luZCBvZiByZXB1dGF0aW9uIGFuZCBwZW9wbGUgZG9uJ3Qgd2FudCB0byBoYXZlIHRv
DQpkZWFsIHdpdGggdGhpcyBub25zZW5zZSBhbmQgZGVjaWRlIHRvIG5vdCBjb250cmlidXRlIGF0
IGFsbC4gU28gcGxlYXNlDQpqdXN0IGRyb3AgdGhpcyBhdHRpdHVkZS4NCg0KPiBUaGlzIGlzIGNs
ZWFybHkgZ29pbmcgYWdhaW5zdCB0aGUgaWRlYSBvZiBoYXZpbmcgam9icyBvbmx5IGRlcGVuZCBv
bg0KPiBmZW5jZXMgYW5kIG5vdGhpbmcgZWxzZSB3aGljaCBpcyBtYW5kYXRvcnkgZm9yIGNvcnJl
Y3QgbWVtb3J5IG1hbmFnZW1lbnQuDQo+DQoNCkknbSBzdXJlIGl0J3MgYWxsIGRvY3VtZW50ZWQg
YW5kIHRoZXJlIGlzIGEgZGVzaWduIGRvY3VtZW50IG9uIGhvdw0KdGhpbmdzIGhhdmUgdG8gbG9v
ayBsaWtlIHlvdSBjYW4gcG9pbnQgb3V0PyBNaWdodCBoZWxwIHRvIGdldCBhIGJldHRlcg0KdW5k
ZXJzdGFuZGluZyBvbiBob3cgdGhpbmdzIHNob3VsZCBiZS4NCg0KPiBJZiB0aGUgaHcgaXMgYnVz
eSB3aXRoIHNvbWV0aGluZyB5b3UgbmVlZCB0byByZXR1cm4gdGhlIGZlbmNlIGZvciB0aGlzDQo+
IGZyb20gdGhlIHByZXBhcmVfam9iIGNhbGxiYWNrIHNvIHRoYXQgdGhlIHNjaGVkdWxlciBjYW4g
YmUgbm90aWZpZWQgd2hlbg0KPiB0aGUgaHcgaXMgYXZhaWxhYmxlIGFnYWluLg0KPg0KPiBSZWdh
cmRzLA0KPiBDaHJpc3RpYW4uDQo+DQo+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBBc2FoaSBMaW5h
IDxsaW5hQGFzYWhpbGluYS5uZXQ+DQo+ID4gLS0tDQo+ID4gICBkcml2ZXJzL2dwdS9kcm0vc2No
ZWR1bGVyL3NjaGVkX21haW4uYyB8IDEwICsrKysrKysrKysNCj4gPiAgIGluY2x1ZGUvZHJtL2dw
dV9zY2hlZHVsZXIuaCAgICAgICAgICAgIHwgIDggKysrKysrKysNCj4gPiAgIDIgZmlsZXMgY2hh
bmdlZCwgMTggaW5zZXJ0aW9ucygrKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9zY2hlZHVsZXIvc2NoZWRfbWFpbi5jIGIvZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9z
Y2hlZF9tYWluLmMNCj4gPiBpbmRleCA0ZTZhZDZlMTIyYmMuLjVjMGFkZDJjNzU0NiAxMDA2NDQN
Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX21haW4uYw0KPiA+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfbWFpbi5jDQo+ID4gQEAgLTEwMDEs
NiArMTAwMSwxNiBAQCBzdGF0aWMgaW50IGRybV9zY2hlZF9tYWluKHZvaWQgKnBhcmFtKQ0KPiA+
ICAgICAgICAgICAgICAgaWYgKCFlbnRpdHkpDQo+ID4gICAgICAgICAgICAgICAgICAgICAgIGNv
bnRpbnVlOw0KPiA+DQo+ID4gKyAgICAgICAgICAgICBpZiAoc2NoZWQtPm9wcy0+Y2FuX3J1bl9q
b2IpIHsNCj4gPiArICAgICAgICAgICAgICAgICAgICAgc2NoZWRfam9iID0gdG9fZHJtX3NjaGVk
X2pvYihzcHNjX3F1ZXVlX3BlZWsoJmVudGl0eS0+am9iX3F1ZXVlKSk7DQo+ID4gKyAgICAgICAg
ICAgICAgICAgICAgIGlmICghc2NoZWRfam9iKSB7DQo+ID4gKyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgY29tcGxldGVfYWxsKCZlbnRpdHktPmVudGl0eV9pZGxlKTsNCj4gPiArICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBjb250aW51ZTsNCj4gPiArICAgICAgICAgICAgICAgICAg
ICAgfQ0KPiA+ICsgICAgICAgICAgICAgICAgICAgICBpZiAoIXNjaGVkLT5vcHMtPmNhbl9ydW5f
am9iKHNjaGVkX2pvYikpDQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY29udGlu
dWU7DQo+ID4gKyAgICAgICAgICAgICB9DQo+ID4gKw0KPiA+ICAgICAgICAgICAgICAgc2NoZWRf
am9iID0gZHJtX3NjaGVkX2VudGl0eV9wb3Bfam9iKGVudGl0eSk7DQo+ID4NCj4gPiAgICAgICAg
ICAgICAgIGlmICghc2NoZWRfam9iKSB7DQo+ID4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2dw
dV9zY2hlZHVsZXIuaCBiL2luY2x1ZGUvZHJtL2dwdV9zY2hlZHVsZXIuaA0KPiA+IGluZGV4IDlk
YjllNWU1MDRlZS4uYmQ4OWVhOTUwN2I5IDEwMDY0NA0KPiA+IC0tLSBhL2luY2x1ZGUvZHJtL2dw
dV9zY2hlZHVsZXIuaA0KPiA+ICsrKyBiL2luY2x1ZGUvZHJtL2dwdV9zY2hlZHVsZXIuaA0KPiA+
IEBAIC0zOTYsNiArMzk2LDE0IEBAIHN0cnVjdCBkcm1fc2NoZWRfYmFja2VuZF9vcHMgew0KPiA+
ICAgICAgIHN0cnVjdCBkbWFfZmVuY2UgKigqcHJlcGFyZV9qb2IpKHN0cnVjdCBkcm1fc2NoZWRf
am9iICpzY2hlZF9qb2IsDQo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgc3RydWN0IGRybV9zY2hlZF9lbnRpdHkgKnNfZW50aXR5KTsNCj4gPg0KPiA+ICsgICAgIC8q
Kg0KPiA+ICsgICAgICAqIEBjYW5fcnVuX2pvYjogQ2FsbGVkIGJlZm9yZSBqb2IgZXhlY3V0aW9u
IHRvIGNoZWNrIHdoZXRoZXIgdGhlDQo+ID4gKyAgICAgICogaGFyZHdhcmUgaXMgZnJlZSBlbm91
Z2ggdG8gcnVuIHRoZSBqb2IuICBUaGlzIGNhbiBiZSB1c2VkIHRvDQo+ID4gKyAgICAgICogaW1w
bGVtZW50IG1vcmUgY29tcGxleCBoYXJkd2FyZSByZXNvdXJjZSBwb2xpY2llcyB0aGFuIHRoZQ0K
PiA+ICsgICAgICAqIGh3X3N1Ym1pc3Npb24gbGltaXQuDQo+ID4gKyAgICAgICovDQo+ID4gKyAg
ICAgYm9vbCAoKmNhbl9ydW5fam9iKShzdHJ1Y3QgZHJtX3NjaGVkX2pvYiAqc2NoZWRfam9iKTsN
Cj4gPiArDQo+ID4gICAgICAgLyoqDQo+ID4gICAgICAgICAgICAqIEBydW5fam9iOiBDYWxsZWQg
dG8gZXhlY3V0ZSB0aGUgam9iIG9uY2UgYWxsIG9mIHRoZSBkZXBlbmRlbmNpZXMNCj4gPiAgICAg
ICAgICAgICogaGF2ZSBiZWVuIHJlc29sdmVkLiAgVGhpcyBtYXkgYmUgY2FsbGVkIG11bHRpcGxl
IHRpbWVzLCBpZg0KPiA+DQo+DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1t
bS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
