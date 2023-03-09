Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BEE2D6BBADA
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Mar 2023 18:27:51 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8E3F33F462
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Mar 2023 17:27:50 +0000 (UTC)
Received: from mail.marcansoft.com (marcansoft.com [212.63.210.85])
	by lists.linaro.org (Postfix) with ESMTPS id 7BBDA3E8AB
	for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Mar 2023 06:30:27 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=asahilina.net header.s=default header.b="P6/7ZSEe";
	spf=pass (lists.linaro.org: domain of lina@asahilina.net designates 212.63.210.85 as permitted sender) smtp.mailfrom=lina@asahilina.net;
	dmarc=pass (policy=quarantine) header.from=asahilina.net
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: lina@asahilina.net)
	by mail.marcansoft.com (Postfix) with ESMTPSA id 346EA42037;
	Thu,  9 Mar 2023 06:30:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=asahilina.net;
	s=default; t=1678343426;
	bh=/hhFWpC+hto8GAX0pJh+P6OQkNm/8ab+JjGGIX4mhlg=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=P6/7ZSEeWqAst+e/b9Q/j9CQZQ/8ZVEuqr7EW67BxjeMhzgYAVhb4Lqg2rGGw6mMN
	 K7gyGOyxcEa8LvgGCcfexFaGyA7NDqDRv5eqrCHYT0dosQP1+bQzr+vP++WmmQq/6A
	 3h70p1rPUjAoUog3DU7vldubJmJNBoMg16jPo3ft9xgaQ1DrcAiKF1gdnxpzmvafCw
	 BYr6a2c9/eo8t/Rj5u8+VJnAggjM4/RxHoRfhH9vTwfbYazvHAA+qEEPPh5fUmNuob
	 ul2RrpYuijhMUjrlwH6W44l0HYbiVNcAohS/tkdvPlupsDS10YITpFEENn0d2DFDk5
	 ZQ+n7HgLXEaEA==
Message-ID: <3e5e0120-50fd-51c0-d817-5b1dc4c14e97@asahilina.net>
Date: Thu, 9 Mar 2023 15:30:17 +0900
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
 <9c3dc2ad-11e4-6004-7230-8ca752e3d9f7@asahilina.net>
 <d544748c-8a2b-7c08-f199-182a56af22be@amd.com>
From: Asahi Lina <lina@asahilina.net>
In-Reply-To: <d544748c-8a2b-7c08-f199-182a56af22be@amd.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 7BBDA3E8AB
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
	URIBL_BLOCKED(0.00)[mail.marcansoft.com:helo,marcansoft.com:rdns];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[asahilina.net:+];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_ALL(0.00)[]
X-MailFrom: lina@asahilina.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: DWKI75MMCQWXOJQ5BMHW2QBLMCLYEVRT
X-Message-ID-Hash: DWKI75MMCQWXOJQ5BMHW2QBLMCLYEVRT
X-Mailman-Approved-At: Wed, 15 Mar 2023 17:22:51 +0000
CC: Alyssa Rosenzweig <alyssa@rosenzweig.io>, Karol Herbst <kherbst@redhat.com>, Ella Stanforth <ella@iglunix.org>, Faith Ekstrand <faith.ekstrand@collabora.com>, Mary <mary@mary.zone>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-sgx@vger.kernel.org, asahi@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 10/18] drm/scheduler: Add can_run_job callback
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DWKI75MMCQWXOJQ5BMHW2QBLMCLYEVRT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMDkvMDMvMjAyMyAwNS4xNCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4+IEkgdGhpbmsg
eW91IG1lYW4gd2FrZV91cF9pbnRlcnJ1cHRpYmxlKCkuIFRoYXQgd291bGQgYmUNCj4+IGRybV9z
Y2hlZF9qb2JfZG9uZSgpLCBvbiB0aGUgZmVuY2UgY2FsbGJhY2sgd2hlbiBhIGpvYiBjb21wbGV0
ZXMsIHdoaWNoDQo+PiBhcyBJIGtlZXAgc2F5aW5nIGlzIHRoZSBzYW1lIGxvZ2ljIHVzZWQgZm9y
DQo+PiBod19ycV9jb3VudC9od19zdWJtaXNzaW9uX2xpbWl0IHRyYWNraW5nLg0KPiANCj4gQXMg
dGhlIGRvY3VtZW50YXRpb24gdG8gd2FpdF9ldmVudCBzYXlzOg0KPiANCj4gIMKgKiB3YWtlX3Vw
KCkgaGFzIHRvIGJlIGNhbGxlZCBhZnRlciBjaGFuZ2luZyBhbnkgdmFyaWFibGUgdGhhdCBjb3Vs
ZA0KPiAgwqAqIGNoYW5nZSB0aGUgcmVzdWx0IG9mIHRoZSB3YWl0IGNvbmRpdGlvbi4NCj4gDQo+
IFNvIHdoYXQgeW91IGVzc2VudGlhbGx5IHRyeSB0byBkbyBoZXJlIGlzIHRvIHNraXAgdGhhdCBh
bmQgc2F5IA0KPiBkcm1fc2NoZWRfam9iX2RvbmUoKSB3b3VsZCBjYWxsIHRoYXQgYW55d2F5LCBi
dXQgd2hlbiB5b3UgcmVhZCBhbnkgDQo+IHZhcmlhYmxlIHRvIGRldGVybWluZSB0aGF0IHN0YXRl
IHRoZW4gYXMgZmFyIGFzIEkgY2FuIHNlZSBub3RoaW5nIGlzIA0KPiBndWFyYW50eWluZyB0aGF0
IG9yZGVyLg0KDQpUaGUgZHJpdmVyIG5lZWRzIHRvIGd1YXJhbnRlZSB0aGF0IGFueSBjaGFuZ2Vz
IHRvIHRoYXQgc3RhdGUgcHJlY2VkZSBhDQpqb2IgY29tcGxldGlvbiBmZW5jZSBzaWduYWwgb2Yg
Y291cnNlLCB0aGF0J3MgdGhlIGVudGlyZSBpZGVhIG9mIHRoZQ0KQVBJLiBJdCdzIHN1cHBvc2Vk
IHRvIHJlcHJlc2VudCBhIGNoZWNrIGZvciBwZXItc2NoZWR1bGVyIChvciBtb3JlDQpzcGVjaWZp
YywgYnV0IG5vdCBtb3JlIGdsb2JhbCkgcmVzb3VyY2VzIHRoYXQgYXJlIHJlbGVhc2VkIG9uIGpv
Yg0KY29tcGxldGlvbi4gT2YgY291cnNlIGlmIHlvdSBtaXN1c2UgdGhlIEFQSSB5b3UgY291bGQg
Y2F1c2UgYSBwcm9ibGVtLA0KYnV0IHdoYXQgSSdtIHRyeWluZyB0byBzYXkgaXMgdGhhdCB0aGUg
QVBJIGFzIGRlc2lnbmVkIGFuZCB3aGVuIHVzZWQgYXMNCmludGVuZGVkIGRvZXMgd29yayBwcm9w
ZXJseS4NCg0KUHV0IGFub3RoZXIgd2F5OiBqb2IgY29tcGxldGlvbnMgYWx3YXlzIG5lZWQgdG8g
Y2F1c2UgdGhlIHNjaGVkIG1haW4NCmxvb3AgdG8gcnVuIGFuIGl0ZXJhdGlvbiBhbnl3YXkgKG90
aGVyd2lzZSB3ZSB3b3VsZG4ndCBtYWtlIGZvcndhcmQNCnByb2dyZXNzKSwgYW5kIGpvYiBjb21w
bGV0aW9ucyBhcmUgZXhhY3RseSB0aGUgc2lnbmFsIHRoYXQgdGhlDQpjYW5fcnVuX2pvYigpIGNv
bmRpdGlvbiBtYXkgaGF2ZSBjaGFuZ2VkLg0KDQo+IFRoZSBvbmx5IG90aGVyIHBvc3NpYmlsaXR5
IGhvdyB5b3UgY291bGQgdXNlIHRoZSBjYWxsYmFjayBjb3JyZWN0bHkgDQo+IHdvdWxkIGJlIHRv
IGNhbGwgZHJtX2ZlbmNlX2lzX3NpZ25hbGVkKCkgdG8gcXVlcnkgdGhlIHN0YXRlIG9mIHlvdXIg
aHcgDQo+IHN1Ym1pc3Npb24gZnJvbSB0aGUgc2FtZSBmZW5jZSB3aGljaCBpcyB0aGVuIHNpZ25h
bGVkLiBCdXQgdGhlbiB0aGUgDQo+IHF1ZXN0aW9uIGlzIG9uY2UgbW9yZSB3aHkgeW91IGRvbid0
IGdpdmUgdGhhdCBmZW5jZSBkaXJlY3RseSB0byB0aGUgDQo+IHNjaGVkdWxlcj8NCg0KQnV0IHRo
ZSBkcml2ZXIgaXMgc3VwcG9zZWQgdG8gZ3VhcmFudGVlIHRoYXQgdGhlIG9yZGVyaW5nIGlzIGFs
d2F5cyAxLg0KcmVzb3VyY2VzIGZyZWVkLCAyLiBmZW5jZSBzaWduYWxlZC4gU28geW91IGRvbid0
IG5lZWQgdG8gY2hlY2sgZm9yIHRoZQ0KZmVuY2UsIHlvdSBjYW4ganVzdCBjaGVjayBmb3IgdGhl
IHJlc291cmNlIHN0YXRlLiBJZiB0aGUgY2FsbGJhY2sNCnJldHVybnMgZmFsc2UgdGhlbiBieSBk
ZWZpbml0aW9uIHRoZSBmZW5jZSB3YXNuJ3QgeWV0IHNpZ25hbGVkIGF0IHNvbWUNCnBvaW50IGR1
cmluZyBpdHMgZXhlY3V0aW9uIChiZWNhdXNlIHRoZSByZXNvdXJjZXMgd2VyZW4ndCB5ZXQgZnJl
ZWQpLA0KYW5kIHNpbmNlIGl0IHdvdWxkIGJlIGluIHRoZSB3YWl0X2V2ZW50X2ludGVycnVwdGli
bGUoKSBjaGVjayBwYXRoLCBieQ0KZGVmaW5pdGlvbiB0aGUgZmVuY2Ugc2lnbmFsaW5nIGF0IGFu
eSBwb2ludCBkdXJpbmcgb3IgYWZ0ZXIgdGhlIGNoZWNrDQp3b3VsZCBjYXVzZSB0aGUgdGhyZWFk
IHRvIHdha2UgdXAgYWdhaW4gYW5kIHJlLWNoZWNrLg0KDQpUaHJlYWQgMSAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIFRocmVhZCAyDQoxLiB3YWl0X2V2ZW50X2ludGVy
cnVwdGlibGUoKSBhcm1zIHdxICAgICAgICAgICAgIDEuIEZyZWUgcmVzb3VyY2VzDQoyLiBjYW5f
cnVuX2pvYigpIGNoZWNrcyByZXNvdXJjZXMgICAgICAgICAgICAgICAgIDIuIFNpZ25hbCBmZW5j
ZQ0KMy4gd2FpdF9ldmVudF9pbnRlcnJ1cHRpYmxlKCkgc2xlZXBzIG9uIHdxICAgICAgICAzLiBG
ZW5jZSB3YWtlcyB1cCB3cQ0KNC4gbG9vcA0KDQpUaGVyZSBpcyBubyBwb3NzaWJsZSBpbnRlcmxl
YXZpbmcgb2YgdGhvc2Ugc2VxdWVuY2VzIHRoYXQgbGVhZHMgdG8gYQ0KbG9zdCBldmVudCBhbmQg
dGhlIHRocmVhZCBub3Qgd2FraW5nIHVwOg0KLSBJZiBUMi4zIGhhcHBlbnMgYmVmb3JlIFQxLjEs
IHRoYXQgbWVhbnMgVDIuMSBoYXBwZW5lZCBlYXJsaWVyIGFuZCBUMS4yDQptdXN0IHJldHVybiB0
cnVlLg0KLSBJZiBUMi4zIGhhcHBlbnMgYWZ0ZXIgVDEuMSBidXQgYmVmb3JlIFQxLjMsIHRoZSB3
cSBjb2RlIHdpbGwgZW5zdXJlDQp0aGUgd3EgZG9lcyBub3Qgc2xlZXAgKG9yIGltbWVkaWF0ZWx5
IHdha2VzIHVwKSBhdCBUMS4zIHNpbmNlIGl0IHdhcw0Kc2lnbmFsZWQgZHVyaW5nIHRoZSBjb25k
aXRpb24gY2hlY2ssIGFmdGVyIHRoZSB3cSB3YXMgYXJtZWQuIEF0IHRoZSBuZXh0DQpjaGVjayBs
b29wLCBUMS4yIHdpbGwgdGhlbiByZXR1cm4gdHJ1ZSwgc2luY2UgVDIuMSBhbHJlYWR5IGhhcHBl
bmVkDQpiZWZvcmUgVDIuMy4NCi0gSWYgVDIuMyBoYXBwZW5zIGR1cmluZyBUMS4zLCB0aGUgd3Eg
d2FrZXMgdXAgbm9ybWFsbHkgYW5kIGRvZXMgYW5vdGhlcg0KY2hlY2ssIGFuZCBhdCB0aGF0IHBv
aW50IFQxLjIgcmV0dXJucyB0cnVlLg0KDQpRRUQuDQoNCn5+IExpbmENCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBs
aXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5k
IGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
