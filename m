Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E1B56BBA9A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Mar 2023 18:11:42 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 75EEF3E965
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Mar 2023 17:11:41 +0000 (UTC)
Received: from mail.marcansoft.com (marcansoft.com [212.63.210.85])
	by lists.linaro.org (Postfix) with ESMTPS id 79CF33E942
	for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Mar 2023 09:41:43 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=asahilina.net header.s=default header.b=CZvuPPNT;
	spf=pass (lists.linaro.org: domain of lina@asahilina.net designates 212.63.210.85 as permitted sender) smtp.mailfrom=lina@asahilina.net;
	dmarc=pass (policy=quarantine) header.from=asahilina.net
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: lina@asahilina.net)
	by mail.marcansoft.com (Postfix) with ESMTPSA id C77F841DF4;
	Wed,  8 Mar 2023 09:41:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=asahilina.net;
	s=default; t=1678268501;
	bh=vBxMB571C2rYbZLVgeBfcGW/6kjKGp2NbaNwD343XB8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=CZvuPPNTVPZ5UeTvxDAPbq9istc0FQHAa695VyMpBbgJYwBKq3BYCxH5vGYEznwtD
	 UsWvCb0Ck28/YE43ouuknNNtGFuJNUkPqCqzeTq0B0WPCl3ukEFiPQ6YtGUBmgH6FP
	 JVxP/pFvVRc7toKHMIxyf/6IBkguOIsyZLC3baI8xwmQVvp2ZAZUWBaWDGdY7Lp2u8
	 7NRARO6WbHzFBDxxIcKxob80EOdD2n5kb7qWnM6/OipZBy36VF9gJQUUpOm8fOOoFw
	 6pGiB0Lx3DCNA5Xv/Xq8ckvcr4AF7O0bnR2ObjTc6cxxhcJXFAYmvJlvCXiMctnt6v
	 nxYUr1kjdPP2g==
Message-ID: <a075d886-0820-b6fb-fcd0-45bfdc75e37d@asahilina.net>
Date: Wed, 8 Mar 2023 18:41:32 +0900
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
From: Asahi Lina <lina@asahilina.net>
In-Reply-To: <cd788ccf-0cf1-85d5-1bf8-efc259bd7e11@amd.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 79CF33E942
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
Message-ID-Hash: PG4JUMSXE33U7EBPXWIZ44IW6HMGPPRH
X-Message-ID-Hash: PG4JUMSXE33U7EBPXWIZ44IW6HMGPPRH
X-Mailman-Approved-At: Wed, 15 Mar 2023 17:03:59 +0000
CC: Alyssa Rosenzweig <alyssa@rosenzweig.io>, Karol Herbst <kherbst@redhat.com>, Ella Stanforth <ella@iglunix.org>, Faith Ekstrand <faith.ekstrand@collabora.com>, Mary <mary@mary.zone>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-sgx@vger.kernel.org, asahi@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 10/18] drm/scheduler: Add can_run_job callback
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PG4JUMSXE33U7EBPXWIZ44IW6HMGPPRH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMDgvMDMvMjAyMyAxNy40NiwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4gQW0gMDcuMDMu
MjMgdW0gMTU6MjUgc2NocmllYiBBc2FoaSBMaW5hOg0KPj4gU29tZSBoYXJkd2FyZSBtYXkgcmVx
dWlyZSBtb3JlIGNvbXBsZXggcmVzb3VyY2UgdXRpbGl6YXRpb24gYWNjb3VudGluZw0KPj4gdGhh
biB0aGUgc2ltcGxlIGpvYiBjb3VudCBzdXBwb3J0ZWQgYnkgZHJtX3NjaGVkIGludGVybmFsbHku
IEFkZCBhDQo+PiBjYW5fcnVuX2pvYiBjYWxsYmFjayB0byBhbGxvdyBkcml2ZXJzIHRvIGltcGxl
bWVudCBtb3JlIGxvZ2ljIGJlZm9yZQ0KPj4gZGVjaWRpbmcgd2hldGhlciB0byBydW4gYSBHUFUg
am9iLg0KPiANCj4gV2VsbCBjb21wbGV0ZSBOQUsuDQo+IA0KPiBUaGlzIGlzIGNsZWFybHkgZ29p
bmcgYWdhaW5zdCB0aGUgaWRlYSBvZiBoYXZpbmcgam9icyBvbmx5IGRlcGVuZCBvbiANCj4gZmVu
Y2VzIGFuZCBub3RoaW5nIGVsc2Ugd2hpY2ggaXMgbWFuZGF0b3J5IGZvciBjb3JyZWN0IG1lbW9y
eSBtYW5hZ2VtZW50Lg0KPiANCj4gSWYgdGhlIGh3IGlzIGJ1c3kgd2l0aCBzb21ldGhpbmcgeW91
IG5lZWQgdG8gcmV0dXJuIHRoZSBmZW5jZSBmb3IgdGhpcyANCj4gZnJvbSB0aGUgcHJlcGFyZV9q
b2IgY2FsbGJhY2sgc28gdGhhdCB0aGUgc2NoZWR1bGVyIGNhbiBiZSBub3RpZmllZCB3aGVuIA0K
PiB0aGUgaHcgaXMgYXZhaWxhYmxlIGFnYWluLg0KDQpJIHRoaW5rIHlvdSBtaXN1bmRlcnN0b29k
IHRoZSBpbnRlbnQgaGVyZS4uLiBUaGlzIGlzbid0IGFib3V0IGpvYg0KZGVwZW5kZW5jaWVzLCBp
dCdzIGFib3V0IGluLWZsaWdodCByZXNvdXJjZSBsaW1pdHMuDQoNCmRybV9zY2hlZCBhbHJlYWR5
IGhhcyBhIGh3X3N1Ym1pc3Npb25fbGltaXQgdGhhdCBzcGVjaWZpZXMgdGhlIG51bWJlciBvZg0K
c3VibWlzc2lvbnMgdGhhdCBjYW4gYmUgaW4gZmxpZ2h0LCBidXQgdGhhdCBkb2Vzbid0IHdvcmsg
Zm9yIHVzIGJlY2F1c2UNCmVhY2ggam9iIGZyb20gZHJtX3NjaGVkJ3MgcG9pbnQgb2YgdmlldyBj
b25zaXN0cyBvZiBtdWx0aXBsZSBjb21tYW5kcw0Kc3BsaXQgYW1vbmcgMyBmaXJtd2FyZSBxdWV1
ZXMuIFRoZSBmaXJtd2FyZSBjYW4gb25seSBzdXBwb3J0IHVwIHRvIDEyOA0Kd29yayBjb21tYW5k
cyBpbiBmbGlnaHQgcGVyIHF1ZXVlIChiYXJyaWVycyBkb24ndCBjb3VudCksIG90aGVyd2lzZSBp
dA0Kb3ZlcmZsb3dzIGEgZml4ZWQtc2l6ZSBidWZmZXIuDQoNClNvIHdlIG5lZWQgbW9yZSBjb21w
bGV4IGFjY291bnRpbmcgb2YgaG93IG1hbnkgdW5kZXJseWluZyBjb21tYW5kcyBhcmUNCmluIGZs
aWdodCBwZXIgcXVldWUgdG8gZGV0ZXJtaW5lIHdoZXRoZXIgaXQgaXMgc2FmZSB0byBydW4gYSBu
ZXcgam9iLA0KYW5kIHRoYXQgaXMgd2hhdCB0aGlzIGNhbGxiYWNrIGFjY29tcGxpc2hlcy4gVGhp
cyBoYXMgdG8gaGFwcGVuIGV2ZW4NCndoZW4gaW5kaXZpZHVhbCBqb2JzIGhhdmUgbm8gYnVmZmVy
L3Jlc291cmNlIGRlcGVuZGVuY2llcyBiZXR3ZWVuIHRoZW0NCih3aGljaCBpcyB3aGF0IHRoZSBm
ZW5jZXMgd291bGQgZXhwcmVzcykuDQoNCllvdSBjYW4gc2VlIHRoZSBkcml2ZXIgaW1wbGVtZW50
YXRpb24gb2YgdGhhdCBjYWxsYmFjayBpbg0KZHJpdmVycy9ncHUvZHJtL2FzYWhpL3F1ZXVlL21v
ZC5ycyAoUXVldWVKb2I6OmNhbl9ydW4oKSksIHdoaWNoIHRoZW4NCmNhbGxzIGludG8gZHJpdmVy
cy9ncHUvZHJtL2FzYWhpL3dvcmtxdWV1ZS5ycyAoSm9iOjpjYW5fc3VibWl0KCkpIHRoYXQNCmRv
ZXMgdGhlIGFjdHVhbCBhdmFpbGFibGUgc2xvdCBjb3VudCBjaGVja3MuDQoNClRoZSBjYW5fcnVu
X2pvYiBsb2dpYyBpcyB3cml0dGVuIHRvIG1pcnJvciB0aGUgaHdfc3VibWlzc2lvbl9saW1pdCBs
b2dpYw0KKGp1c3QgYSBiaXQgbGF0ZXIgaW4gdGhlIHNjaGVkIG1haW4gbG9vcCBzaW5jZSB3ZSBu
ZWVkIHRvIGFjdHVhbGx5IHBpY2sNCmEgam9iIHRvIGRvIHRoZSBjaGVjayksIGFuZCBqdXN0IGxp
a2UgZm9yIHRoYXQgY2FzZSwgY29tcGxldGlvbiBvZiBhbnkNCmpvYiBpbiB0aGUgc2FtZSBzY2hl
ZHVsZXIgd2lsbCBjYXVzZSBhbm90aGVyIHJ1biBvZiB0aGUgbWFpbiBsb29wIGFuZA0KYW5vdGhl
ciBjaGVjayAod2hpY2ggaXMgZXhhY3RseSB3aGF0IHdlIHdhbnQgaGVyZSkuDQoNClRoaXMgY2Fz
ZSAocG90ZW50aWFsbHkgc2NoZWR1bGluZyBtb3JlIHRoYW4gdGhlIEZXIGpvYiBsaW1pdCkgaXMg
cmFyZQ0KYnV0IGhhbmRsaW5nIGl0IGlzIG5lY2Vzc2FyeSwgc2luY2Ugb3RoZXJ3aXNlIHRoZSBl
bnRpcmUgam9iDQpjb21wbGV0aW9uL3RyYWNraW5nIGxvZ2ljIGdldHMgc2NyZXdlZCB1cCBvbiB0
aGUgZmlybXdhcmUgZW5kIGFuZCBxdWV1ZXMNCmVuZCB1cCBzdHVjayAoSSd2ZSBtYW5hZ2VkIHRv
IHRyaWdnZXIgdGhpcyBiZWZvcmUpLg0KDQp+fiBMaW5hDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBs
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
