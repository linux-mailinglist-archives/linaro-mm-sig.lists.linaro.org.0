Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F6516B23AF
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Mar 2023 13:10:10 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 455E13F19E
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Mar 2023 12:10:09 +0000 (UTC)
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
	by lists.linaro.org (Postfix) with ESMTPS id 387EF3EF47
	for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Mar 2023 12:09:50 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=igalia.com header.s=20170329 header.b=scrrVscr;
	spf=pass (lists.linaro.org: domain of mcanal@igalia.com designates 213.97.179.56 as permitted sender) smtp.mailfrom=mcanal@igalia.com;
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=aPUoKZqvfuD+mphoHGghF/IdQ3Fkrk+RW1l/3m7ZZk4=; b=scrrVscrgKXQEsbE7jZHR5v3Q4
	RObBukIVBALTABNThGPDZj/Z1rzsesFEndtXmk+Rm2hKoYC89fQMBWxoDgq463GNHzWOr+Te70X4X
	a2eCONRy4yYZjllIIeq1ZnkqDYU0W9rOPQVI3Qq8m8KPKhDY7J99MpuGAajTuuVprqNkuthzMLCsh
	shnALKY5Fjrtzi0ewUsOO4L3HWi9sQw9JcpVJbg8A1F8Tad2Lt5HhmRaaUemftBy501uVRiWVXqtP
	S6ZxRdgyxxsnskvJ8VCCtFqFymFNwXEUUb+3qkNkVb7J8bkV6cn92tOLVA0RDJ+xAdNuuF3CQ72Nm
	qafTtm4g==;
Received: from [187.36.234.139] (helo=[192.168.1.195])
	by fanzine2.igalia.com with esmtpsa
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
	id 1paF5J-001X5J-WF; Thu, 09 Mar 2023 13:09:26 +0100
Message-ID: <b0d69e2a-9ba6-df31-1887-0d1e69fd148b@igalia.com>
Date: Thu, 9 Mar 2023 09:09:15 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Dave Airlie <airlied@gmail.com>, Asahi Lina <lina@asahilina.net>
References: <20230307-rust-drm-v1-0-917ff5bc80a8@asahilina.net>
 <20230307-rust-drm-v1-1-917ff5bc80a8@asahilina.net>
 <c047e11f-33d0-6af4-21c3-adb384b68d8b@igalia.com>
 <93a57598-9deb-85f2-ebd9-8605404c1ef8@asahilina.net>
 <CAPM=9tw6aUUgL63EFhX6W_mQa1ssEmcPjJJHhrssasRVPt76rg@mail.gmail.com>
From: =?UTF-8?Q?Ma=c3=adra_Canal?= <mcanal@igalia.com>
In-Reply-To: <CAPM=9tw6aUUgL63EFhX6W_mQa1ssEmcPjJJHhrssasRVPt76rg@mail.gmail.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 387EF3EF47
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[igalia.com:s=20170329];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,asahilina.net];
	RCVD_TLS_ALL(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_CC(0.00)[redhat.com,linux.intel.com,lists.freedesktop.org,mary.zone,garyguo.net,iglunix.org,linaro.org,rosenzweig.io,igalia.com,amd.com,gmail.com,kernel.org,vger.kernel.org,lists.linaro.org,collabora.com,protonmail.com,lists.linux.dev,suse.de];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3352, ipnet:213.97.0.0/16, country:ES];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[27];
	URIBL_BLOCKED(0.00)[igalia.com:dkim,asahilina.net:email,fanzine2.igalia.com:rdns,fanzine2.igalia.com:helo];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[igalia.com:+];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[igalia.com];
	RCVD_COUNT_TWO(0.00)[2]
Message-ID-Hash: E67GZRCZBJKVZVB6EJH2RZDLDPZBVMNN
X-Message-ID-Hash: E67GZRCZBJKVZVB6EJH2RZDLDPZBVMNN
X-MailFrom: mcanal@igalia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Karol Herbst <kherbst@redhat.com>, Dave Hansen <dave.hansen@linux.intel.com>, dri-devel@lists.freedesktop.org, Mary <mary@mary.zone>, Gary Guo <gary@garyguo.net>, Ella Stanforth <ella@iglunix.org>, Sumit Semwal <sumit.semwal@linaro.org>, Alyssa Rosenzweig <alyssa@rosenzweig.io>, =?UTF-8?Q?Ma=c3=adra_Canal?= <mcanal@igalia.com>, Luben Tuikov <luben.tuikov@amd.com>, Alex Gaynor <alex.gaynor@gmail.com>, Miguel Ojeda <ojeda@kernel.org>, linux-media@vger.kernel.org, Wedson Almeida Filho <wedsonaf@gmail.com>, rust-for-linux@vger.kernel.org, Boqun Feng <boqun.feng@gmail.com>, linaro-mm-sig@lists.linaro.org, Faith Ekstrand <faith.ekstrand@collabora.com>, linux-sgx@vger.kernel.org, =?UTF-8?Q?Bj=c3=b6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, linux-kernel@vger.kernel.org, Jarkko Sakkinen <jarkko@kernel.org>, asahi@lists.linux.dev, Thomas Zimmermann <tzimmermann@suse.de>, =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 01/18] rust: drm: ioctl: Add DRM ioctl abstraction
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/E67GZRCZBJKVZVB6EJH2RZDLDPZBVMNN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMy85LzIzIDAzOjE1LCBEYXZlIEFpcmxpZSB3cm90ZToNCj4gT24gVGh1LCA5IE1hciAyMDIz
IGF0IDE1OjMyLCBBc2FoaSBMaW5hIDxsaW5hQGFzYWhpbGluYS5uZXQ+IHdyb3RlOg0KPj4NCj4+
IE9uIDA4LzAzLzIwMjMgMDAuMzIsIE1hw61yYSBDYW5hbCB3cm90ZToNCj4+PiBPbiAzLzcvMjMg
MTE6MjUsIEFzYWhpIExpbmEgd3JvdGU6DQo+Pj4+IERSTSBkcml2ZXJzIG5lZWQgdG8gYmUgYWJs
ZSB0byBkZWNsYXJlIHdoaWNoIGRyaXZlci1zcGVjaWZpYyBpb2N0bHMgdGhleQ0KPj4+PiBzdXBw
b3J0LiBUaGlzIGFic3RyYWN0aW9uIGFkZHMgdGhlIHJlcXVpcmVkIHR5cGVzIGFuZCBhIGhlbHBl
ciBtYWNybyB0bw0KPj4+PiBnZW5lcmF0ZSB0aGUgaW9jdGwgZGVmaW5pdGlvbiBpbnNpZGUgdGhl
IERSTSBkcml2ZXIuDQo+Pj4+DQo+Pj4+IE5vdGUgdGhhdCB0aGlzIG1hY3JvIGlzIG5vdCB1c2Fi
bGUgdW50aWwgZnVydGhlciBiaXRzIG9mIHRoZQ0KPj4+PiBhYnN0cmFjdGlvbiBhcmUgaW4gcGxh
Y2UgKGJ1dCBpdCB3aWxsIG5vdCBmYWlsIHRvIGNvbXBpbGUgb24gaXRzIG93biwgaWYNCj4+Pj4g
bm90IGNhbGxlZCkuDQo+Pj4+DQo+Pj4+IFNpZ25lZC1vZmYtYnk6IEFzYWhpIExpbmEgPGxpbmFA
YXNhaGlsaW5hLm5ldD4NCj4+Pj4gLS0tDQo+Pj4+ICAgIGRyaXZlcnMvZ3B1L2RybS9LY29uZmln
ICAgICAgICAgfCAgIDcgKysNCj4+Pj4gICAgcnVzdC9iaW5kaW5ncy9iaW5kaW5nc19oZWxwZXIu
aCB8ICAgMiArDQo+Pj4+ICAgIHJ1c3Qva2VybmVsL2RybS9pb2N0bC5ycyAgICAgICAgfCAxNDcg
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKw0KPj4+PiAgICBydXN0L2tl
cm5lbC9kcm0vbW9kLnJzICAgICAgICAgIHwgICA1ICsrDQo+Pj4+ICAgIHJ1c3Qva2VybmVsL2xp
Yi5ycyAgICAgICAgICAgICAgfCAgIDIgKw0KPj4+PiAgICA1IGZpbGVzIGNoYW5nZWQsIDE2MyBp
bnNlcnRpb25zKCspDQo+Pj4+DQo+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vS2Nv
bmZpZyBiL2RyaXZlcnMvZ3B1L2RybS9LY29uZmlnDQo+Pj4+IGluZGV4IGRjMGY5NGYwMmE4Mi4u
ZGFiOGYwZjlhYTk2IDEwMDY0NA0KPj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vS2NvbmZpZw0K
Pj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vS2NvbmZpZw0KPj4+PiBAQCAtMjcsNiArMjcsMTMg
QEAgbWVudWNvbmZpZyBEUk0NCj4+Pj4gICAgICAgICBkZXRhaWxzLiAgWW91IHNob3VsZCBhbHNv
IHNlbGVjdCBhbmQgY29uZmlndXJlIEFHUA0KPj4+PiAgICAgICAgICgvZGV2L2FncGdhcnQpIHN1
cHBvcnQgaWYgaXQgaXMgYXZhaWxhYmxlIGZvciB5b3VyIHBsYXRmb3JtLg0KPj4+Pg0KPj4+DQo+
Pj4gWy4uLl0NCj4+Pg0KPj4+PiArDQo+Pj4+ICsvLy8gRGVjbGFyZSB0aGUgRFJNIGlvY3RscyBm
b3IgYSBkcml2ZXIuDQo+Pj4+ICsvLy8NCj4+Pj4gKy8vLyBFYWNoIGVudHJ5IGluIHRoZSBsaXN0
IHNob3VsZCBoYXZlIHRoZSBmb3JtOg0KPj4+PiArLy8vDQo+Pj4+ICsvLy8gYChpb2N0bF9udW1i
ZXIsIGFyZ3VtZW50X3R5cGUsIGZsYWdzLCB1c2VyX2NhbGxiYWNrKSxgDQo+Pj4+ICsvLy8NCj4+
Pj4gKy8vLyBgYXJndW1lbnRfdHlwZWAgaXMgdGhlIHR5cGUgbmFtZSB3aXRoaW4gdGhlIGBiaW5k
aW5nc2AgY3JhdGUuDQo+Pj4+ICsvLy8gYHVzZXJfY2FsbGJhY2tgIHNob3VsZCBoYXZlIHRoZSBm
b2xsb3dpbmcgcHJvdG90eXBlOg0KPj4+PiArLy8vDQo+Pj4+ICsvLy8gYGBgDQo+Pj4+ICsvLy8g
Zm4gZm9vKGRldmljZTogJmtlcm5lbDo6ZHJtOjpkZXZpY2U6OkRldmljZTxTZWxmPiwNCj4+Pj4g
Ky8vLyAgICAgICAgZGF0YTogJm11dCBiaW5kaW5nczo6YXJndW1lbnRfdHlwZSwNCj4+Pj4gKy8v
LyAgICAgICAgZmlsZTogJmtlcm5lbDo6ZHJtOjpmaWxlOjpGaWxlPFNlbGY6OkZpbGU+LA0KPj4+
PiArLy8vICkNCj4+Pj4gKy8vLyBgYGANCj4+Pj4gKy8vLyB3aGVyZSBgU2VsZmAgaXMgdGhlIGRy
bTo6ZHJ2OjpEcml2ZXIgaW1wbGVtZW50YXRpb24gdGhlc2UgaW9jdGxzIGFyZSBiZWluZyBkZWNs
YXJlZCB3aXRoaW4uDQo+Pj4+ICsvLy8NCj4+Pj4gKy8vLyAjIEV4YW1wbGVzDQo+Pj4+ICsvLy8N
Cj4+Pj4gKy8vLyBgYGANCj4+Pj4gKy8vLyBrZXJuZWw6OmRlY2xhcmVfZHJtX2lvY3RscyEgew0K
Pj4+PiArLy8vICAgICAoRk9PX0dFVF9QQVJBTSwgZHJtX2Zvb19nZXRfcGFyYW0sIGlvY3RsOjpS
RU5ERVJfQUxMT1csIG15X2dldF9wYXJhbV9oYW5kbGVyKSwNCj4+Pj4gKy8vLyB9DQo+Pj4+ICsv
Ly8gYGBgDQo+Pj4+ICsvLy8NCj4+Pj4gKyNbbWFjcm9fZXhwb3J0XQ0KPj4+PiArbWFjcm9fcnVs
ZXMhIGRlY2xhcmVfZHJtX2lvY3RscyB7DQo+Pj4+ICsgICAgKCAkKCgkY21kOmlkZW50LCAkc3Ry
dWN0OmlkZW50LCAkZmxhZ3M6ZXhwciwgJGZ1bmM6ZXhwcikpLCogJCgsKT8gKSA9PiB7DQo+Pj4+
ICsgICAgICAgIGNvbnN0IElPQ1RMUzogJidzdGF0aWMgWyRjcmF0ZTo6ZHJtOjppb2N0bDo6RHJt
SW9jdGxEZXNjcmlwdG9yXSA9IHsNCj4+Pj4gKyAgICAgICAgICAgIGNvbnN0IF86KCkgPSB7DQo+
Pj4+ICsgICAgICAgICAgICAgICAgbGV0IGk6IHUzMiA9ICRjcmF0ZTo6YmluZGluZ3M6OkRSTV9D
T01NQU5EX0JBU0U7DQo+Pj4+ICsgICAgICAgICAgICAgICAgLy8gQXNzZXJ0IHRoYXQgYWxsIHRo
ZSBJT0NUTHMgYXJlIGluIHRoZSByaWdodCBvcmRlciBhbmQgdGhlcmUgYXJlIG5vIGdhcHMsDQo+
Pj4+ICsgICAgICAgICAgICAgICAgLy8gYW5kIHRoYXQgdGhlIHNpemVvZiBvZiB0aGUgc3BlY2lm
aWVkIHR5cGUgaXMgY29ycmVjdC4NCj4+Pg0KPj4+IEkgYmVsaWV2ZSB0aGF0IG5vdCBuZWNlc3Nh
cmlseSB0aGUgSU9DVExzIG5lZWQgdG8gYmUgaW4gdGhlIHJpZ2h0IG9yZGVyIGFuZA0KPj4+IHdp
dGggbm8gZ2Fwcy4gRm9yIGV4YW1wbGUsIGFybWFkYV9kcm0uaCBoYXMgYSBnYXAgaW4gYmV0d2Vl
biAweDAwIGFuZA0KPj4+IDB4MDIgYW5kIGV4eW5vc19kcm0uaCBhbHNvIGhhdmUgZ2Fwcy4gTW9y
ZW92ZXIsIHNvbWUgZHJpdmVycywgbGlrZSB2Z2VtIGFuZA0KPj4+IHZpcnRncHUsIHN0YXJ0IHRo
ZWlyIElPQ1RMcyB3aXRoIDB4MDEuDQo+Pg0KPj4gWWVhaCwgd2UgdGFsa2VkIGFib3V0IHRoaXMg
YSBiaXQuLi4gZG8geW91IGhhdmUgYW55IGlkZWFzIGFib3V0IGhvdyB0bw0KPj4gZGVzaWduIHRo
aXM/IEkgdGhpbmsgaXQgc2hvdWxkIGJlIHBvc3NpYmxlIHdpdGggYSBjb25zdCBmdW5jdGlvbg0K
Pj4gaW5pdGlhbGl6aW5nIGFuIGFycmF5IGVudHJ5IGJ5IGVudHJ5LCB3ZSBqdXN0IG5lZWQgYSB0
d28tcGFzcyBtYWNybw0KPj4gKG9uY2UgdG8gZGV0ZXJtaW5lIHRoZSBtYXggaW9jdGwgbnVtYmVy
LCB0aGVuIGFnYWluIHRvIGFjdHVhbGx5IG91dHB1dA0KPj4gdGhlIGltcGxlbWVudGF0aW9uKS4N
Cj4+DQo+PiBJJ20gbm90IHN1cmUgd2h5IGRyaXZlcnMgd291bGQgaGF2ZSBnYXBzIGluIHRoZSBp
b2N0bCBudW1iZXJzIHRob3VnaC4uLg0KPj4gbXkgaWRlYSB3YXMgdGhhdCBuZXcgZHJpdmVycyBz
aG91bGRuJ3QgbmVlZCB0aGF0IGFzIGZhciBhcyBJIGNhbiB0ZWxsDQo+PiAoeW91IGNhbid0IHJl
bW92ZSBBUElzIGFmdGVyIHRoZSBmYWN0IGR1ZSB0byBVQVBJIHN0YWJpbGl0eSBndWFyYW50ZWVz
LA0KPj4gc28gYXMgbG9uZyBhcyB5b3UgZG9uJ3QgaGF2ZSBnYXBzIHRvIGJlZ2luIHdpdGguLi4p
LiBCdXQgSSBndWVzcyBpZg0KPj4gd2UncmUgcmVpbXBsZW1lbnRpbmcgZXhpc3RpbmcgZHJpdmVy
cyBpbiBSdXN0IHdlJ2xsIG5lZWQgdGhpcy4uLiB0aG91Z2gNCj4+IG1heWJlIGl0IG1ha2VzIHNl
bnNlIHRvIGp1c3Qgc2F5IGl0J3Mgbm90IHN1cHBvcnRlZCBhbmQgcmVxdWlyZQ0KPj4gcmVpbXBs
ZW1lbnRhdGlvbnMgdGhhdCBoYXZlIGhvbGVzIHRvIGp1c3QgZXhwbGljaXRseSBhZGQgZHVtbXkg
aW9jdGxzDQo+PiB0aGF0IHJldHVybiBFSU5WQUw/IFdlIGNvdWxkIGV2ZW4gcHJvdmlkZSBzdWNo
IGEgZHVtbXkgZ2VuZXJpYyBpb2N0bA0KPj4gaGFuZGxlciBvbiB0aGUgYWJzdHJhY3Rpb24gc2lk
ZSwgc28gZHJpdmVycyBqdXN0IGhhdmUgdG8gYWRkIGl0IHRvIHRoZQ0KPj4gbGlzdCwgb3IgbWFr
ZSB0aGUgbWFjcm8gdGFrZSBhIHNwZWNpYWwgdG9rZW4gdGhhdCBpcyB1c2VkIGZvcg0KPj4gcGxh
Y2Vob2xkZXIgaW9jdGxzIHRoYXQgZG9uJ3QgZXhpc3QgKHdoaWNoIHRoZW4gY3JlYXRlcyB0aGUg
TlVMTA0KPj4gZnVuY3Rpb24gcG9pbnRlciB0aGF0IHRoZSBkcm0gY29yZSBpbnRlcnByZXRzIGFz
IGludmFsaWQpLi4uDQo+IA0KPiBJIGNhbiB0aGluayBvZiB0d28gcmVhc29uIGZvciBnYXBzIGhh
dmluZyBhcHBlYXJlZDoNCj4gDQo+IGEpIGRldmVsb3BlcnMgd2FudGVkIHRvIGdyb3VwIG5ldyB1
YXBpcyBhdCBhIG5pY2UgYmFzZSBudW1iZXIuDQo+IFRoaXMgaXMgbmV2ZXIgZXNzZW50aWFsIGl0
J3MganVzdCBtYWtlcyB0aGluZ3MgZWFzaWVyIHRvIHJlYWQsIGFuZA0KPiBhbGxvd3Mgc2xvdHRp
bmcgb3RoZXIgaW9jdGxzIGludG8gdGhlIGdhcHMgbGF0ZXIuDQo+IA0KPiBiKSBwYXJhbGxlbCBm
ZWF0dXJlIGRldmVsb3BtZW50IGVuZHMgdXAgY29uZmxpY3RpbmcgdGhlbiBvbmUgdGhyZWFkIG5l
dmVyIGxhbmRzLg0KPiBJJ3ZlIGdvdCB0d28tdGhyZWUgZGV2cyBlYWNoIGFkZGluZyBhIHVBUEks
IHdlIGFzc2lnbiB0aGVtIDB4MTAsIDB4MTEsDQo+IDB4MTIgd2hpbGUgdGhleSB3b3JrLCB0aGVu
IDB4MTEgbmV2ZXIgbGFuZHMgYmVjYXVzZSBpdCB3YXMgYSBiYWQgaWRlYS4NCj4gDQo+IEhvd2V2
ZXIgSSB0aGluayB5b3Ugc2hvdWxkIGJlIGZpbmUgZW5mb3JjaW5nIGEgbm9uLXNwYXJzZSBzcGFj
ZSBoZXJlDQo+IHVubGVzcyB3ZSB3YW50IHRvIGhhbmRsZSByZXBsYWNpbmcgY3VycmVudCBkcml2
ZXJzLCBhcyBsb25nIGFzIGl0J3MNCj4gaGFyZCB0byBzY3JldyB1cCBzbyB5b3Uga25vdyBlYXJs
eS4NCg0KSSBndWVzcyBpdCB3b3VsZCBiZSBuaWNlIHRvIHN1cHBvcnQgb2xkIFVBUElzIGZvciBj
YXNlcyBvZiByZWltcGxlbWVudGF0aW9ucy4NCkN1cnJlbnRseSwgSSdtIHdvcmtpbmcgb24gYSBy
ZWltcGxlbWVudGF0aW9uIG9mIHZnZW0gYW5kIEkgZW5kZWQgdXAgaGF2aW5nIHRvDQpjcmVhdGUg
YSBkdW1teSBJT0NUTCB0byBkZWFsIHdpdGggdGhlIHNwYXJzZSBudW1iZXIgc3BhY2UuIEFsdGhv
dWdoIGNyZWF0aW5nDQpkdW1teSBJT0NUTHMgd29ya3MsIEkgZG9uJ3QgYmVsaWV2ZSBpdCBpcyBh
IG5pY2UgcHJhY3RpY2UuDQoNCk1vcmVvdmVyLCBJIGJlbGlldmUgdGhhdCBpZiB3ZSBrZWVwIGRl
dmVsb3BpbmcgbmV3IGRyaXZlcnMgd2l0aCBSdXN0LCBjYXNlcw0KKGEpIGFuZCAoYikgd2lsbCBl
bmQgdXAgaGFwcGVuaW5nLCBhbmQgbWF5YmUgdGhlIFJ1c3QgYWJzdHJhY3Rpb25zIHNob3VsZA0K
d29yayBsaWtlIERSTSBhbmQgYWxsb3cgaXQgdG8gaGFwcGVuLg0KDQpCZXN0IFJlZ2FyZHMsDQot
IE1hw61yYSBDYW5hbA0KDQo+IA0KPiBEYXZlLg0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJv
LW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8g
bGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
