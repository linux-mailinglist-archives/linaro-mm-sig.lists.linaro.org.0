Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 263BE6BBAD2
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Mar 2023 18:25:56 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2CBD33F329
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Mar 2023 17:25:55 +0000 (UTC)
Received: from mail.marcansoft.com (marcansoft.com [212.63.210.85])
	by lists.linaro.org (Postfix) with ESMTPS id 30BF33F0BC
	for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Mar 2023 19:46:08 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=asahilina.net header.s=default header.b=yGK2eXhV;
	spf=pass (lists.linaro.org: domain of lina@asahilina.net designates 212.63.210.85 as permitted sender) smtp.mailfrom=lina@asahilina.net;
	dmarc=pass (policy=quarantine) header.from=asahilina.net
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: lina@asahilina.net)
	by mail.marcansoft.com (Postfix) with ESMTPSA id C4A4842037;
	Wed,  8 Mar 2023 19:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=asahilina.net;
	s=default; t=1678304766;
	bh=371amrNIWdOrt1eX/rE/8QZd18kWMNJmNXDp2QdVSbs=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=yGK2eXhVMDT3UcH3lltkf8vpz7BK33d21ZigE2QwncNn4koTKZf90jqyk41sFXyp/
	 hCVYoec52IPuKLTdg8ImtH/hjN/ym4zWtZt5fw9ikDSLCKIEi3jIsdirbn7zRpIYwI
	 sRiJ+y91O7fPhmVFFdjjSKo4af7KCCYZGexuOnmdFwyKkK5dcFL2tFdMT4pgAZpsUo
	 sUt7oqPOFJNSbrS1U4HsWxouSmgeKt9R9dRHvlxLiJ0/pnfBoBUFfNbVrAANhAlqxF
	 Kl7eIy+TonptlKOSkRhyAh9k4oVsIxOYVYCF56uABdqu2Tlpg4EAXwcIjXkxB8mkux
	 H9MLMH0cWml/Q==
Message-ID: <9c3dc2ad-11e4-6004-7230-8ca752e3d9f7@asahilina.net>
Date: Thu, 9 Mar 2023 04:45:58 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Miguel Ojeda <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>,
 Wedson Almeida Filho <wedsonaf@gmail.com>, Boqun Feng
 <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>,
 =?UTF-8?Q?Bj=c3=b6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>,
 Sumit Semwal <sumit.semwal@linaro.org>, Luben Tuikov <luben.tuikov@amd.com>,
 Jarkko Sakkinen <jarkko@kernel.org>,
 Dave Hansen <dave.hansen@linux.intel.com>
References: <20230307-rust-drm-v1-0-917ff5bc80a8@asahilina.net>
 <20230307-rust-drm-v1-10-917ff5bc80a8@asahilina.net>
 <cd788ccf-0cf1-85d5-1bf8-efc259bd7e11@amd.com>
 <a075d886-0820-b6fb-fcd0-45bfdc75e37d@asahilina.net>
 <2b1060e9-86ba-7e16-14f1-5b5fa63de719@amd.com>
 <9f76bb68-b462-b138-d0ad-d27c972530d4@asahilina.net>
 <a39c6b40-f190-002d-ae1c-8b58c6442df2@amd.com>
 <4bbfc1a3-cfc3-87f4-897b-b6637bac3bd0@asahilina.net>
 <b0aa78b2-b432-200a-8953-a80c462fa6ee@amd.com>
 <c0624252-070e-bd44-2116-93a1d63a1359@asahilina.net>
 <d1fccceb-ca77-f653-17fc-63168e0da884@amd.com>
From: Asahi Lina <lina@asahilina.net>
In-Reply-To: <d1fccceb-ca77-f653-17fc-63168e0da884@amd.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 30BF33F0BC
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[asahilina.net,quarantine];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[asahilina.net:s=default];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:30880, ipnet:212.63.192.0/19, country:SE];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[28];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[amd.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,garyguo.net,protonmail.com,linaro.org];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[asahilina.net:+];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_ALL(0.00)[]
X-MailFrom: lina@asahilina.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: UPIDJXXJYKYMGTHPAZ6JHMMPIM4LQ2UC
X-Message-ID-Hash: UPIDJXXJYKYMGTHPAZ6JHMMPIM4LQ2UC
X-Mailman-Approved-At: Wed, 15 Mar 2023 17:22:49 +0000
CC: Alyssa Rosenzweig <alyssa@rosenzweig.io>, Karol Herbst <kherbst@redhat.com>, Ella Stanforth <ella@iglunix.org>, Faith Ekstrand <faith.ekstrand@collabora.com>, Mary <mary@mary.zone>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-sgx@vger.kernel.org, asahi@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 10/18] drm/scheduler: Add can_run_job callback
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UPIDJXXJYKYMGTHPAZ6JHMMPIM4LQ2UC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMDkvMDMvMjAyMyAwNC4xMiwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4gQW0gMDguMDMu
MjMgdW0gMjA6MDUgc2NocmllYiBBc2FoaSBMaW5hOg0KPj4gW1NOSVBdDQo+Pj4gV2VsbCBpdCdz
IG5vdCB0aGUgYmV0dGVyIHdheSwgaXQncyB0aGUgb25seSB3YXkgdGhhdCB3b3Jrcy4NCj4+Pg0K
Pj4+IEkgaGF2ZSB0byBhZG1pdCB0aGF0IG15IGJldCBvbiB5b3VyIGludGVudGlvbnMgd2FzIHdy
b25nLCBidXQgZXZlbiB0aGF0DQo+Pj4gdXNlIGNhc2UgZG9lc24ndCB3b3JrIGNvcnJlY3RseS4N
Cj4+Pg0KPj4+IFNlZSB3aGVuIHlvdXIgY2FsbGJhY2sgcmV0dXJucyBmYWxzZSBpdCBpcyBwZXJm
ZWN0bHkgcG9zc2libGUgdGhhdCBhbGwNCj4+PiBodyBmZW5jZXMgYXJlIHNpZ25hbGVkIGJldHdl
ZW4gcmV0dXJuaW5nIHRoYXQgaW5mb3JtYXRpb24gYW5kIHByb2Nlc3NpbmcgaXQuDQo+Pj4NCj4+
PiBUaGUgcmVzdWx0IHdvdWxkIGJlIHRoYXQgdGhlIHNjaGVkdWxlciBnb2VzIHRvIHNsZWVwIGFu
ZCBuZXZlciB3YWtlcyB1cA0KPj4+IGFnYWluLg0KPj4gVGhhdCBjYW4ndCBoYXBwZW4sIGJlY2F1
c2UgaXQgd2lsbCBqdXN0IGdvIGludG8gYW5vdGhlciBpdGVyYXRpb24gb2YgdGhlDQo+PiBkcm1f
c2NoZWQgbWFpbiBsb29wIHNpbmNlIHRoZXJlIGlzIGFuIGVudGl0eSBhdmFpbGFibGUgc3RpbGwu
DQo+Pg0KPj4gUmF0aGVyIHRoZXJlIGlzIHByb2JhYmx5IHRoZSBvcHBvc2l0ZSBidWcgaW4gdGhp
cyBwYXRjaDogdGhlIGNhbl9ydW5fam9iDQo+PiBsb2dpYyBzaG91bGQgYmUgbW92ZWQgaW50byB0
aGUgd2FpdF9ldmVudF9pbnRlcnJ1cHRpYmxlKCkgY29uZGl0aW9uDQo+PiBjaGVjaywgb3RoZXJ3
aXNlIEkgdGhpbmsgaXQgY2FuIGVuZCB1cCBidXN5LWxvb3Bpbmcgc2luY2UgdGhlIGNvbmRpdGlv
bg0KPj4gaXRzZWxmIGNhbiBiZSB0cnVlIGV2ZW4gd2hlbiB0aGUgY2FuX3J1bl9qb2IgY2hlY2sg
YmxvY2tzIGl0Lg0KPj4NCj4+IEJ1dCB0aGVyZSBpcyBubyByaXNrIG9mIGl0IGdvaW5nIHRvIHNs
ZWVwIGFuZCBuZXZlciB3YWtpbmcgdXAgYmVjYXVzZQ0KPj4gam9iIGNvbXBsZXRpb25zIHdpbGwg
d2FrZSB1cCB0aGUgd2FpdHF1ZXVlIGJ5IGRlZmluaXRpb24sIGFuZCB0aGF0DQo+PiBoYXBwZW5z
IGFmdGVyIHRoZSBkcml2ZXItc2lkZSBxdWV1ZXMgYXJlIHBvcHBlZC4gSWYgdGhpcyBwcm9ibGVt
IGNvdWxkDQo+PiBoYXBwZW4sIHRoZW4gdGhlIGV4aXN0aW5nIGh3X3N1Ym1pc3Npb25fbGltaXQg
bG9naWMgd291bGQgYmUgYnJva2VuIGluDQo+PiB0aGUgc2FtZSB3YXkuIEl0IGlzIGxvZ2ljYWxs
eSBlcXVpdmFsZW50IGluIGhvdyBpdCB3b3Jrcy4NCj4+DQo+PiBCYXNpY2FsbHksIGlmIHByb3Bl
cmx5IGRvbmUgaW4gd2FpdF9ldmVudF9pbnRlcnJ1cHRpYmxlLCBpdCBpcyBleGFjdGx5DQo+PiB0
aGUgbG9naWMgb2YgdGhhdCBtYWNybyB0aGF0IHByZXZlbnRzIHRoaXMgcmFjZSBjb25kaXRpb24g
YW5kIG1ha2VzDQo+PiBldmVyeXRoaW5nIHdvcmsgYXQgYWxsLiBXaXRob3V0IGl0LCBkcm1fc2No
ZWQgd291bGQgYmUgY29tcGxldGVseSBicm9rZW4uDQo+Pg0KPj4+IEFzIEkgc2FpZCB3ZSBleGVy
Y2lzZWQgdGhvc2UgaWRlYXMgYmVmb3JlIGFuZCB5ZXMgdGhpcyBhcHByb2FjaCBoZXJlDQo+Pj4g
Y2FtZSB1cCBiZWZvcmUgYXMgd2VsbCBhbmQgbm8gaXQgZG9lc24ndCB3b3JrLg0KPj4gSXQgY2Fu
IG5ldmVyIGRlYWRsb2NrIHdpdGggdGhpcyBwYXRjaCBhcyBpdCBzdGFuZHMgKHRob3VnaCBpdCBj
b3VsZCBidXN5DQo+PiBsb29wKSwgYW5kIGlmIHByb3Blcmx5IG1vdmVkIGludG8gdGhlIHdhaXRf
ZXZlbnRfaW50ZXJydXB0aWJsZSgpLCBpdA0KPj4gd291bGQgYWxzbyBuZXZlciBidXN5IGxvb3Ag
YW5kIHdvcmsgZW50aXJlbHkgYXMgaW50ZW5kZWQuIFRoZSBhY3R1YWwgQVBJDQo+PiBjaGFuZ2Ug
aXMgc291bmQuDQo+Pg0KPj4gSSBkb24ndCBrbm93IHdoeSB5b3UncmUgdHJ5aW5nIHNvIGhhcmQg
dG8gY29udmluY2UgZXZlcnlvbmUgdGhhdCB0aGlzDQo+PiBhcHByb2FjaCBpcyBmdW5kYW1lbnRh
bGx5IGJyb2tlbi4uLiBJdCBtaWdodCBiZSBhIGJhZCBpZGVhIGZvciBvdGhlcg0KPj4gcmVhc29u
cywgaXQgbWlnaHQgZW5jb3VyYWdlIGluY29ycmVjdCB1c2FnZSwgaXQgbWlnaHQgbm90IGJlIHRo
ZSBiZXN0DQo+PiBvcHRpb24sIHRoZXJlIGFyZSBwbGVudHkgb2YgYXJndW1lbnRzIHlvdSBjYW4g
bWFrZS4uLiBidXQgeW91IGp1c3Qga2VlcA0KPj4gdHJ5aW5nIHRvIG1ha2UgYW4gYXJndW1lbnQg
dGhhdCBpdCBqdXN0IGNhbid0IHdvcmsgYXQgYWxsIGZvciBzb21lDQo+PiByZWFzb24uIFdoeT8g
SSBhbHJlYWR5IHNhaWQgSSdtIGhhcHB5IGRyb3BwaW5nIGl0IGluIGZhdm9yIG9mIHRoZSBmZW5j
ZXMuLi4NCj4gDQo+IFdlbGwgYmVjYXVzZSBpdCBpcyBicm9rZW4uDQo+IA0KPiBXaGVuIHlvdSBt
b3ZlIHRoZSBjaGVjayBpbnRvIHRoZSB3YWl0X2V2ZW50X2ludGVycnVwdGlibGUgY29uZGl0aW9u
IHRoZW4gDQo+IHdobyBpcyBnb2luZyB0byBjYWxsIHdhaXRfZXZlbnRfaW50ZXJydXB0aWJsZSB3
aGVuIHRoZSBjb25kaXRpb24gY2hhbmdlcz8NCg0KSSB0aGluayB5b3UgbWVhbiB3YWtlX3VwX2lu
dGVycnVwdGlibGUoKS4gVGhhdCB3b3VsZCBiZQ0KZHJtX3NjaGVkX2pvYl9kb25lKCksIG9uIHRo
ZSBmZW5jZSBjYWxsYmFjayB3aGVuIGEgam9iIGNvbXBsZXRlcywgd2hpY2gNCmFzIEkga2VlcCBz
YXlpbmcgaXMgdGhlIHNhbWUgbG9naWMgdXNlZCBmb3INCmh3X3JxX2NvdW50L2h3X3N1Ym1pc3Np
b25fbGltaXQgdHJhY2tpbmcuDQoNClBsZWFzZSB0aGluayBhYm91dCBpdCBmb3IgYSBzZWNvbmQs
IGl0J3MgcmVhbGx5IG5vdCB0aGF0IGNvbXBsaWNhdGVkIHRvDQpzZWUgd2h5IGl0IHdvcmtzOg0K
DQotIERyaXZlciBwb3BzIG9mZiBjb21wbGV0ZWQgY29tbWFuZHMgPC0tIGNhbl9ydW5fam9iIGNv
bmRpdGlvbiBzYXRpc2ZpZWQNCi0gRHJpdmVyIHNpZ25hbHMgZmVuY2UNCiAtIGRybV9zY2hlZF9q
b2JfZG9uZV9jYigpDQogIC0gZHJtX3NjaGVkX2pvYl9kb25lKCkNCiAgIC0gYXRvbWljX2RlYygm
c2NoZWQtPmh3X3JxX2NvdW50KTsgPC0tIGh3X3N1Ym1pc3Npb25fbGltaXQgc2F0aXNmaWVkDQog
ICAtIC4uLg0KICAgLSB3YWtlX3VwX2ludGVycnVwdGlibGUoJnNjaGVkLT53YWtlX3VwX3dvcmtl
cik7DQogICAgICBeLSBoYXBwZW5zIGFmdGVyIGJvdGggY29uZGl0aW9ucyBhcmUgcG90ZW50aWFs
bHkgc2F0aXNmaWVkDQoNCkl0IHJlYWxseSBpcyBjb21wbGV0ZWx5IGVxdWl2YWxlbnQgdG8ganVz
dCBtYWtpbmcgdGhlIGh3X3JxX2NvdW50IGxvZ2ljDQpjdXN0b21pemFibGUgYnkgdGhlIGRyaXZl
ci4gVGhlIGFjdHVhbCBmbG93IGlzIHRoZSBzYW1lLiBBcyBsb25nIGFzIHRoZQ0KZHJpdmVyIGd1
YXJhbnRlZXMgaXQgc2F0aXNmaWVzIHRoZSBjYW5fcnVuX2pvYigpIGNvbmRpdGlvbiBiZWZvcmUN
CnNpZ25hbGluZyB0aGUgY29tcGxldGlvbiBmZW5jZSB0aGF0IHRyaWdnZXJlZCB0aGF0IGNoYW5n
ZSwgaXQgd29ya3MgZmluZS4NCg0KPiBBcyBJIHNhaWQgdGhpcyBpZGVhIGNhbWUgdXAgYmVmb3Jl
IGFuZCB3YXMgcmVqZWN0ZWQgbXVsdGlwbGUgdGltZXMuDQoNCk1heWJlIGl0IHdhcyBhIGRpZmZl
cmVudCBpZGVhLCBvciBtYXliZSBpdCB3YXMgcmVqZWN0ZWQgZm9yIG90aGVyDQpyZWFzb25zLCBv
ciBtYXliZSBpdCB3YXMgd3JvbmdseSByZWplY3RlZCBmb3IgYmVpbmcgYnJva2VuIHdoZW4gaXQg
aXNuJ3QgXl4NCg0Kfn4gTGluYQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0Bs
aXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1t
LXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
