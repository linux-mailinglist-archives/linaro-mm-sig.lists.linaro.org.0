Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id ED6C26AE4D4
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 Mar 2023 16:33:46 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A23053F0B0
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 Mar 2023 15:33:45 +0000 (UTC)
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
	by lists.linaro.org (Postfix) with ESMTPS id 6B3423F09B
	for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Mar 2023 15:33:25 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=igalia.com header.s=20170329 header.b=dR+aCNST;
	spf=pass (lists.linaro.org: domain of mcanal@igalia.com designates 213.97.179.56 as permitted sender) smtp.mailfrom=mcanal@igalia.com;
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=S/GRqk3YGMUri3X2GMvTfD9C6AMJhY+Iwb0CAG3dS+8=; b=dR+aCNSTGOVgRf5dumaPu489Xy
	tbDe/0XI4jsnTyAjymPM69Qob5JUPUta+FptlFezAEm1fZL9POPQqeaROY+9LWp9dVBFVHQ4bTXrm
	5NlpIPUEEj3r//QkBndNdTLXP4LDiM6/uHCiucTfZGXjzYa858NFMkHAvJ7/4cGHOP9CEu55uYIie
	+gU1ekppajOQIYsxsjpE2z9m2ndnnrFcnrEUKhAHsvXZgLNYGB4mQLN8KUskb1dUYi9e6ZfMnkuUB
	gWEb0hMyhZ3cjv2XP+Gin6387IQzi+Z8grafdGA/WuW4U/8veQwWNMDQLLQVMRf/+Y1sjhv8I679e
	CGMTijSQ==;
Received: from [187.36.234.139] (helo=[192.168.1.195])
	by fanzine2.igalia.com with esmtpsa
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
	id 1pZZJ6-007s1R-GE; Tue, 07 Mar 2023 16:32:52 +0100
Message-ID: <c047e11f-33d0-6af4-21c3-adb384b68d8b@igalia.com>
Date: Tue, 7 Mar 2023 12:32:39 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
To: Asahi Lina <lina@asahilina.net>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Miguel Ojeda <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>,
 Wedson Almeida Filho <wedsonaf@gmail.com>, Boqun Feng
 <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>,
 =?UTF-8?Q?Bj=c3=b6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Luben Tuikov <luben.tuikov@amd.com>, Jarkko Sakkinen <jarkko@kernel.org>,
 Dave Hansen <dave.hansen@linux.intel.com>
References: <20230307-rust-drm-v1-0-917ff5bc80a8@asahilina.net>
 <20230307-rust-drm-v1-1-917ff5bc80a8@asahilina.net>
Content-Language: en-US
From: =?UTF-8?Q?Ma=c3=adra_Canal?= <mcanal@igalia.com>
In-Reply-To: <20230307-rust-drm-v1-1-917ff5bc80a8@asahilina.net>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 6B3423F09B
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-0.50)[213.97.179.56:from];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[igalia.com:s=20170329];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_COUNT_TWO(0.00)[2];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3352, ipnet:213.97.0.0/16, country:ES];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[29];
	FREEMAIL_TO(0.00)[asahilina.net,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,garyguo.net,protonmail.com,linaro.org,amd.com];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[igalia.com:+];
	DMARC_NA(0.00)[igalia.com];
	ARC_NA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_ALL(0.00)[]
Message-ID-Hash: Y4A2HVVUZ2L4CM6XY5PDVQSF2Z3I4JKL
X-Message-ID-Hash: Y4A2HVVUZ2L4CM6XY5PDVQSF2Z3I4JKL
X-MailFrom: mcanal@igalia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linaro-mm-sig@lists.linaro.org, rust-for-linux@vger.kernel.org, Karol Herbst <kherbst@redhat.com>, asahi@lists.linux.dev, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Mary <mary@mary.zone>, Alyssa Rosenzweig <alyssa@rosenzweig.io>, linux-sgx@vger.kernel.org, Ella Stanforth <ella@iglunix.org>, Faith Ekstrand <faith.ekstrand@collabora.com>, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 01/18] rust: drm: ioctl: Add DRM ioctl abstraction
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Y4A2HVVUZ2L4CM6XY5PDVQSF2Z3I4JKL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMy83LzIzIDExOjI1LCBBc2FoaSBMaW5hIHdyb3RlOg0KPiBEUk0gZHJpdmVycyBuZWVkIHRv
IGJlIGFibGUgdG8gZGVjbGFyZSB3aGljaCBkcml2ZXItc3BlY2lmaWMgaW9jdGxzIHRoZXkNCj4g
c3VwcG9ydC4gVGhpcyBhYnN0cmFjdGlvbiBhZGRzIHRoZSByZXF1aXJlZCB0eXBlcyBhbmQgYSBo
ZWxwZXIgbWFjcm8gdG8NCj4gZ2VuZXJhdGUgdGhlIGlvY3RsIGRlZmluaXRpb24gaW5zaWRlIHRo
ZSBEUk0gZHJpdmVyLg0KPiANCj4gTm90ZSB0aGF0IHRoaXMgbWFjcm8gaXMgbm90IHVzYWJsZSB1
bnRpbCBmdXJ0aGVyIGJpdHMgb2YgdGhlDQo+IGFic3RyYWN0aW9uIGFyZSBpbiBwbGFjZSAoYnV0
IGl0IHdpbGwgbm90IGZhaWwgdG8gY29tcGlsZSBvbiBpdHMgb3duLCBpZg0KPiBub3QgY2FsbGVk
KS4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEFzYWhpIExpbmEgPGxpbmFAYXNhaGlsaW5hLm5ldD4N
Cj4gLS0tDQo+ICAgZHJpdmVycy9ncHUvZHJtL0tjb25maWcgICAgICAgICB8ICAgNyArKw0KPiAg
IHJ1c3QvYmluZGluZ3MvYmluZGluZ3NfaGVscGVyLmggfCAgIDIgKw0KPiAgIHJ1c3Qva2VybmVs
L2RybS9pb2N0bC5ycyAgICAgICAgfCAxNDcgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKw0KPiAgIHJ1c3Qva2VybmVsL2RybS9tb2QucnMgICAgICAgICAgfCAgIDUgKysN
Cj4gICBydXN0L2tlcm5lbC9saWIucnMgICAgICAgICAgICAgIHwgICAyICsNCj4gICA1IGZpbGVz
IGNoYW5nZWQsIDE2MyBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL0tjb25maWcgYi9kcml2ZXJzL2dwdS9kcm0vS2NvbmZpZw0KPiBpbmRleCBkYzBmOTRm
MDJhODIuLmRhYjhmMGY5YWE5NiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL0tjb25m
aWcNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL0tjb25maWcNCj4gQEAgLTI3LDYgKzI3LDEzIEBA
IG1lbnVjb25maWcgRFJNDQo+ICAgCSAgZGV0YWlscy4gIFlvdSBzaG91bGQgYWxzbyBzZWxlY3Qg
YW5kIGNvbmZpZ3VyZSBBR1ANCj4gICAJICAoL2Rldi9hZ3BnYXJ0KSBzdXBwb3J0IGlmIGl0IGlz
IGF2YWlsYWJsZSBmb3IgeW91ciBwbGF0Zm9ybS4NCj4gICANCg0KWy4uLl0NCg0KPiArDQo+ICsv
Ly8gRGVjbGFyZSB0aGUgRFJNIGlvY3RscyBmb3IgYSBkcml2ZXIuDQo+ICsvLy8NCj4gKy8vLyBF
YWNoIGVudHJ5IGluIHRoZSBsaXN0IHNob3VsZCBoYXZlIHRoZSBmb3JtOg0KPiArLy8vDQo+ICsv
Ly8gYChpb2N0bF9udW1iZXIsIGFyZ3VtZW50X3R5cGUsIGZsYWdzLCB1c2VyX2NhbGxiYWNrKSxg
DQo+ICsvLy8NCj4gKy8vLyBgYXJndW1lbnRfdHlwZWAgaXMgdGhlIHR5cGUgbmFtZSB3aXRoaW4g
dGhlIGBiaW5kaW5nc2AgY3JhdGUuDQo+ICsvLy8gYHVzZXJfY2FsbGJhY2tgIHNob3VsZCBoYXZl
IHRoZSBmb2xsb3dpbmcgcHJvdG90eXBlOg0KPiArLy8vDQo+ICsvLy8gYGBgDQo+ICsvLy8gZm4g
Zm9vKGRldmljZTogJmtlcm5lbDo6ZHJtOjpkZXZpY2U6OkRldmljZTxTZWxmPiwNCj4gKy8vLyAg
ICAgICAgZGF0YTogJm11dCBiaW5kaW5nczo6YXJndW1lbnRfdHlwZSwNCj4gKy8vLyAgICAgICAg
ZmlsZTogJmtlcm5lbDo6ZHJtOjpmaWxlOjpGaWxlPFNlbGY6OkZpbGU+LA0KPiArLy8vICkNCj4g
Ky8vLyBgYGANCj4gKy8vLyB3aGVyZSBgU2VsZmAgaXMgdGhlIGRybTo6ZHJ2OjpEcml2ZXIgaW1w
bGVtZW50YXRpb24gdGhlc2UgaW9jdGxzIGFyZSBiZWluZyBkZWNsYXJlZCB3aXRoaW4uDQo+ICsv
Ly8NCj4gKy8vLyAjIEV4YW1wbGVzDQo+ICsvLy8NCj4gKy8vLyBgYGANCj4gKy8vLyBrZXJuZWw6
OmRlY2xhcmVfZHJtX2lvY3RscyEgew0KPiArLy8vICAgICAoRk9PX0dFVF9QQVJBTSwgZHJtX2Zv
b19nZXRfcGFyYW0sIGlvY3RsOjpSRU5ERVJfQUxMT1csIG15X2dldF9wYXJhbV9oYW5kbGVyKSwN
Cj4gKy8vLyB9DQo+ICsvLy8gYGBgDQo+ICsvLy8NCj4gKyNbbWFjcm9fZXhwb3J0XQ0KPiArbWFj
cm9fcnVsZXMhIGRlY2xhcmVfZHJtX2lvY3RscyB7DQo+ICsgICAgKCAkKCgkY21kOmlkZW50LCAk
c3RydWN0OmlkZW50LCAkZmxhZ3M6ZXhwciwgJGZ1bmM6ZXhwcikpLCogJCgsKT8gKSA9PiB7DQo+
ICsgICAgICAgIGNvbnN0IElPQ1RMUzogJidzdGF0aWMgWyRjcmF0ZTo6ZHJtOjppb2N0bDo6RHJt
SW9jdGxEZXNjcmlwdG9yXSA9IHsNCj4gKyAgICAgICAgICAgIGNvbnN0IF86KCkgPSB7DQo+ICsg
ICAgICAgICAgICAgICAgbGV0IGk6IHUzMiA9ICRjcmF0ZTo6YmluZGluZ3M6OkRSTV9DT01NQU5E
X0JBU0U7DQo+ICsgICAgICAgICAgICAgICAgLy8gQXNzZXJ0IHRoYXQgYWxsIHRoZSBJT0NUTHMg
YXJlIGluIHRoZSByaWdodCBvcmRlciBhbmQgdGhlcmUgYXJlIG5vIGdhcHMsDQo+ICsgICAgICAg
ICAgICAgICAgLy8gYW5kIHRoYXQgdGhlIHNpemVvZiBvZiB0aGUgc3BlY2lmaWVkIHR5cGUgaXMg
Y29ycmVjdC4NCg0KSSBiZWxpZXZlIHRoYXQgbm90IG5lY2Vzc2FyaWx5IHRoZSBJT0NUTHMgbmVl
ZCB0byBiZSBpbiB0aGUgcmlnaHQgb3JkZXIgYW5kDQp3aXRoIG5vIGdhcHMuIEZvciBleGFtcGxl
LCBhcm1hZGFfZHJtLmggaGFzIGEgZ2FwIGluIGJldHdlZW4gMHgwMCBhbmQNCjB4MDIgYW5kIGV4
eW5vc19kcm0uaCBhbHNvIGhhdmUgZ2Fwcy4gTW9yZW92ZXIsIHNvbWUgZHJpdmVycywgbGlrZSB2
Z2VtIGFuZA0KdmlydGdwdSwgc3RhcnQgdGhlaXIgSU9DVExzIHdpdGggMHgwMS4NCg0KQmVzdCBS
ZWdhcmRzLA0KLSBNYcOtcmEgQ2FuYWwNCg0KPiArICAgICAgICAgICAgICAgICQoDQo+ICsgICAg
ICAgICAgICAgICAgICAgIGxldCBjbWQ6IHUzMiA9ICRjcmF0ZTo6bWFjcm9zOjpjb25jYXRfaWRl
bnRzISgkY3JhdGU6OmJpbmRpbmdzOjpEUk1fSU9DVExfLCAkY21kKTsNCj4gKyAgICAgICAgICAg
ICAgICAgICAgOjpjb3JlOjphc3NlcnQhKGkgPT0gJGNyYXRlOjppb2N0bDo6X0lPQ19OUihjbWQp
KTsNCj4gKyAgICAgICAgICAgICAgICAgICAgOjpjb3JlOjphc3NlcnQhKGNvcmU6Om1lbTo6c2l6
ZV9vZjo6PCRjcmF0ZTo6YmluZGluZ3M6OiRzdHJ1Y3Q+KCkgPT0gJGNyYXRlOjppb2N0bDo6X0lP
Q19TSVpFKGNtZCkpOw0KPiArICAgICAgICAgICAgICAgICAgICBsZXQgaTogdTMyID0gaSArIDE7
DQo+ICsgICAgICAgICAgICAgICAgKSoNCj4gKyAgICAgICAgICAgIH07DQo+ICsNCj4gKyAgICAg
ICAgICAgIGxldCBpb2N0bHMgPSAmWyQoDQo+ICsgICAgICAgICAgICAgICAgJGNyYXRlOjpiaW5k
aW5nczo6ZHJtX2lvY3RsX2Rlc2Mgew0KPiArICAgICAgICAgICAgICAgICAgICBjbWQ6ICRjcmF0
ZTo6bWFjcm9zOjpjb25jYXRfaWRlbnRzISgkY3JhdGU6OmJpbmRpbmdzOjpEUk1fSU9DVExfLCAk
Y21kKSBhcyB1MzIsDQo+ICsgICAgICAgICAgICAgICAgICAgIGZ1bmM6IHsNCj4gKyAgICAgICAg
ICAgICAgICAgICAgICAgICNbYWxsb3cobm9uX3NuYWtlX2Nhc2UpXQ0KPiArICAgICAgICAgICAg
ICAgICAgICAgICAgdW5zYWZlIGV4dGVybiAiQyIgZm4gJGNtZCgNCj4gKyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgcmF3X2RldjogKm11dCAkY3JhdGU6OmJpbmRpbmdzOjpkcm1fZGV2
aWNlLA0KPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICByYXdfZGF0YTogKm11dCA6
OmNvcmU6OmZmaTo6Y192b2lkLA0KPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBy
YXdfZmlsZV9wcml2OiAqbXV0ICRjcmF0ZTo6YmluZGluZ3M6OmRybV9maWxlLA0KPiArICAgICAg
ICAgICAgICAgICAgICAgICAgKSAtPiBjb3JlOjpmZmk6OmNfaW50IHsNCj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAvLyBTQUZFVFk6IFdlIG5ldmVyIGRyb3AgdGhpcywgYW5kIHRoZSBE
Uk0gY29yZSBlbnN1cmVzIHRoZSBkZXZpY2UgbGl2ZXMNCj4gKyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAvLyB3aGlsZSBjYWxsYmFja3MgYXJlIGJlaW5nIGNhbGxlZC4NCj4gKyAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAvLw0KPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgIC8v
IEZJWE1FOiBDdXJyZW50bHkgdGhlcmUgaXMgbm90aGluZyBlbmZvcmNpbmcgdGhhdCB0aGUgdHlw
ZXMgb2YgdGhlDQo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgLy8gZGV2L2ZpbGUgbWF0
Y2ggdGhlIGN1cnJlbnQgZHJpdmVyIHRoZXNlIGlvY3RscyBhcmUgYmVpbmcgZGVjbGFyZWQNCj4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAvLyBmb3IsIGFuZCBpdCdzIG5vdCBjbGVhciBo
b3cgdG8gZW5mb3JjZSB0aGlzIHdpdGhpbiB0aGUgdHlwZSBzeXN0ZW0uDQo+ICsgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgbGV0IGRldiA9IDo6Y29yZTo6bWVtOjpNYW51YWxseURyb3A6Om5l
dyh1bnNhZmUgew0KPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAkY3JhdGU6OmRy
bTo6ZGV2aWNlOjpEZXZpY2U6OmZyb21fcmF3KHJhd19kZXYpDQo+ICsgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgfSk7DQo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgLy8gU0FGRVRZ
OiBUaGlzIGlzIGp1c3QgdGhlIGlvY3RsIGFyZ3VtZW50LCB3aGljaCBob3BlZnVsbHkgaGFzIHRo
ZSByaWdodCB0eXBlDQo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgLy8gKHdlJ3ZlIGRv
bmUgb3VyIGJlc3QgY2hlY2tpbmcgdGhlIHNpemUpLg0KPiArICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIGxldCBkYXRhID0gdW5zYWZlIHsgJm11dCAqKHJhd19kYXRhIGFzICptdXQgJGNyYXRl
OjpiaW5kaW5nczo6JHN0cnVjdCkgfTsNCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAv
LyBTQUZFVFk6IFRoaXMgaXMganVzdCB0aGUgRFJNIGZpbGUgc3RydWN0dXJlDQo+ICsgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgbGV0IGZpbGUgPSB1bnNhZmUgeyAkY3JhdGU6OmRybTo6Zmls
ZTo6RmlsZTo6ZnJvbV9yYXcocmF3X2ZpbGVfcHJpdikgfTsNCj4gKw0KPiArICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIG1hdGNoICRmdW5jKCYqZGV2LCBkYXRhLCAmZmlsZSkgew0KPiArICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBFcnIoZSkgPT4gZS50b19rZXJuZWxfZXJybm8o
KSwNCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgT2soaSkgPT4gaS50cnlfaW50
bygpLnVud3JhcF9vcihFUkFOR0UudG9fa2VybmVsX2Vycm5vKCkpLA0KPiArICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIH0NCj4gKyAgICAgICAgICAgICAgICAgICAgICAgIH0NCj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgIFNvbWUoJGNtZCkNCj4gKyAgICAgICAgICAgICAgICAgICAgfSwN
Cj4gKyAgICAgICAgICAgICAgICAgICAgZmxhZ3M6ICRmbGFncywNCj4gKyAgICAgICAgICAgICAg
ICAgICAgbmFtZTogJGNyYXRlOjpjX3N0ciEoOjpjb3JlOjpzdHJpbmdpZnkhKCRjbWQpKS5hc19j
aGFyX3B0cigpLA0KPiArICAgICAgICAgICAgICAgIH0NCj4gKyAgICAgICAgICAgICksKl07DQo+
ICsgICAgICAgICAgICBpb2N0bHMNCj4gKyAgICAgICAgfTsNCj4gKyAgICB9Ow0KPiArfQ0KPiBk
aWZmIC0tZ2l0IGEvcnVzdC9rZXJuZWwvZHJtL21vZC5ycyBiL3J1c3Qva2VybmVsL2RybS9tb2Qu
cnMNCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQNCj4gaW5kZXggMDAwMDAwMDAwMDAwLi45ZWM2ZDdj
YmNhZjMNCj4gLS0tIC9kZXYvbnVsbA0KPiArKysgYi9ydXN0L2tlcm5lbC9kcm0vbW9kLnJzDQo+
IEBAIC0wLDAgKzEsNSBAQA0KPiArLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAg
T1IgTUlUDQo+ICsNCj4gKy8vISBEUk0gc3Vic3lzdGVtIGFic3RyYWN0aW9ucy4NCj4gKw0KPiAr
cHViIG1vZCBpb2N0bDsNCj4gZGlmZiAtLWdpdCBhL3J1c3Qva2VybmVsL2xpYi5ycyBiL3J1c3Qv
a2VybmVsL2xpYi5ycw0KPiBpbmRleCA3OTAzNDkwODE2YmYuLmNiMjNkMjRjNjcxOCAxMDA2NDQN
Cj4gLS0tIGEvcnVzdC9rZXJuZWwvbGliLnJzDQo+ICsrKyBiL3J1c3Qva2VybmVsL2xpYi5ycw0K
PiBAQCAtMzcsNiArMzcsOCBAQCBtb2QgYnVpbGRfYXNzZXJ0Ow0KPiAgIHB1YiBtb2QgZGVsYXk7
DQo+ICAgcHViIG1vZCBkZXZpY2U7DQo+ICAgcHViIG1vZCBkcml2ZXI7DQo+ICsjW2NmZyhDT05G
SUdfUlVTVF9EUk0pXQ0KPiArcHViIG1vZCBkcm07DQo+ICAgcHViIG1vZCBlcnJvcjsNCj4gICBw
dWIgbW9kIGlvX2J1ZmZlcjsNCj4gICBwdWIgbW9kIGlvX21lbTsNCj4gDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
