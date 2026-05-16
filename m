Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id fqVnOcY2CGpregMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 16 May 2026 11:20:06 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 91E1955AE0C
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 16 May 2026 11:20:05 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 77FBC404C6
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 16 May 2026 09:20:04 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id AA5DB3F9D9
	for <linaro-mm-sig@lists.linaro.org>; Sat, 16 May 2026 09:19:54 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=C9SwKdvf;
	spf=pass (lists.linaro.org: domain of baohua@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=baohua@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 1249A402F6
	for <linaro-mm-sig@lists.linaro.org>; Sat, 16 May 2026 09:19:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CACACC2BD00
	for <linaro-mm-sig@lists.linaro.org>; Sat, 16 May 2026 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778923193;
	bh=G1PUbCxyJOX//Tw7UPj9+qUEfRYerN3gCn9IPzsOw7c=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=C9SwKdvfUekKBUyiyNk6WQJZPr8IlNmEy29D8qKqD1ZtNIaDBvkSgCtgX/ipXvvrm
	 HAwFc2fmOJf6Jh2DPU2YDf5ZqlF1guEmkiaDRB6r5mmlsjxYt/oiTXpd1EFxyUUgex
	 ZF9Cf76Fr2rwUo6cybbmnjG4c1haUcp5U0muHbAhlKw4Mg4ogi5R8O0NA08IWDXWhk
	 GpxX01BzUE3qsuvQjWfhQJgCRImt+Lve5ENnkadT78zjSbQuftbKJAvVaNEyFmrUOY
	 U5GqaII0kibA4XCBXSyheMeEfFEq3WKk8nTOn8YeT1gdHRPvxB2p1yL+tmat79vrgk
	 a0/SO6ldpXmzQ==
Received: by mail-qk1-f182.google.com with SMTP id af79cd13be357-90ea08cc5ceso162359285a.2
        for <linaro-mm-sig@lists.linaro.org>; Sat, 16 May 2026 02:19:53 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ9hbXvq02uziAzjIp7HO2MXu9fuFl3k+nKk3crj1pPXdh8VLNho9MuKW3oZ1iZ/VkTrN4PQY4vC/XV8NuYO@lists.linaro.org
X-Gm-Message-State: AOJu0YzrS07e4KOuAeRL7g37uzb7SILpl4tI8lQ8/MzrWQ/YbSXRJWZG
	2nCKnbbUewSc/tNj8KCAkMu5l+34f/XMRCfP1/suCb85HxkAWNKp/nZ1NNYZ0xrUs8O6zRegW4t
	QL5JtV15JhjqDB0j2ZaQqdUTMQQwo6KY=
X-Received: by 2002:a05:620a:4487:b0:912:c631:d797 with SMTP id
 af79cd13be357-912c631d977mr618156185a.60.1778923192922; Sat, 16 May 2026
 02:19:52 -0700 (PDT)
MIME-Version: 1.0
References: <20260512-v2_20230123_tjmercier_google_com-v1-0-6326701c3691@redhat.com>
 <20260512-v2_20230123_tjmercier_google_com-v1-2-6326701c3691@redhat.com>
 <8ef38815-6ae9-4359-86d4-042554357639@amd.com> <CABdmKX2uwZ12kYJYPJGfWxuMBOJS=64b1GRj72tfB5D=NKM22w@mail.gmail.com>
 <CADSE00Jq_uvNgvxgPze0mEdUd+hF4-DPZkHy0KroWHZzygf4WA@mail.gmail.com> <CABdmKX3DhejYBis9htLDnzPrG7vuF3R3URLVNEbnyd61SSsx=g@mail.gmail.com>
In-Reply-To: <CABdmKX3DhejYBis9htLDnzPrG7vuF3R3URLVNEbnyd61SSsx=g@mail.gmail.com>
From: Barry Song <baohua@kernel.org>
Date: Sat, 16 May 2026 17:19:41 +0800
X-Gmail-Original-Message-ID: <CAGsJ_4zyecY6E-=Tm4_couT7uoM9LMcFdTMUPkZAjj4zUKE-dQ@mail.gmail.com>
X-Gm-Features: AVHnY4Lfp6d8-xrGLNMN2A36VEAHbeTkf6FHYhVfd3tCidoD4YpDVmS9DpWsPFQ
Message-ID: <CAGsJ_4zyecY6E-=Tm4_couT7uoM9LMcFdTMUPkZAjj4zUKE-dQ@mail.gmail.com>
To: "T.J. Mercier" <tjmercier@google.com>
X-Spamd-Bar: ---
Message-ID-Hash: ELO5HFAJSGOQAREVX2V6QBQDH3V6JOQB
X-Message-ID-Hash: ELO5HFAJSGOQAREVX2V6QBQDH3V6JOQB
X-MailFrom: baohua@kernel.org
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Albert Esteve <aesteve@redhat.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Tejun Heo <tj@kernel.org>, Johannes Weiner <hannes@cmpxchg.org>, =?UTF-8?Q?Michal_Koutn=C3=BD?= <mkoutny@suse.com>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, Michal Hocko <mhocko@kernel.org>, Roman Gushchin <roman.gushchin@linux.dev>, Shakeel Butt <shakeel.butt@linux.dev>, Muchun Song <muchun.song@linux.dev>, Andrew Morton <akpm@linux-foundation.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, Christian Brauner <brauner@kernel.org>, Paul Moore <paul@paul-moore.com>, James Morris <jmorris@namei.org>, "Serge E. Hallyn" <serge@hallyn.com>, Stephen Smalley <stephen.smalley.work@gmail.com>, Ondrej Mosnacek <omosnace@redhat.com>, Shuah Khan <shuah@kernel.org>, cgroups@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.or
 g, linux-media@vger.kernel.org, dri- <devel@lists.freedesktop.org>, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org, linux-security-module@vger.kernel.org, selinux@vger.kernel.org, linux-kselftest@vger.kernel.org, mripard@kernel.org, echanude@redhat.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 2/5] dma-heap: charge dma-buf memory via explicit memcg
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ELO5HFAJSGOQAREVX2V6QBQDH3V6JOQB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: 91E1955AE0C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.59 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[36];
	FREEMAIL_CC(0.00)[redhat.com,amd.com,kernel.org,cmpxchg.org,suse.com,lwn.net,linuxfoundation.org,linaro.org,linux.dev,linux-foundation.org,collabora.com,arm.com,google.com,paul-moore.com,namei.org,hallyn.com,gmail.com,vger.kernel.org,vger.kernel.or,lists.freedesktop.org,lists.linaro.org,kvack.org];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[baohua@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.921];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Action: no action

T24gVGh1LCBNYXkgMTQsIDIwMjYgYXQgMTI6MzXigK9BTSBULkouIE1lcmNpZXIgPHRqbWVyY2ll
ckBnb29nbGUuY29tPiB3cm90ZToNClsuLi5dDQo+ID4gPiBJIGhhdmUgYSBxdWVzdGlvbiBhYm91
dCB0aGlzIHBhcnQuIEFsYmVydCBJIGd1ZXNzIHlvdSBhcmUgaW50ZXJlc3RlZA0KPiA+ID4gb25s
eSBpbiBhY2NvdW50aW5nIGRtYWJ1Zi1oZWFwIGFsbG9jYXRpb25zLCBvciBkbyB5b3UgZXhwZWN0
IHRvIGFkZA0KPiA+ID4gX19HRlBfQUNDT1VOVCBvciBtZW1fY2dyb3VwX2NoYXJnZV9kbWFidWYg
Y2FsbHMgdG8gb3RoZXINCj4gPiA+IG5vbi1kbWFidWYtaGVhcCBleHBvcnRlcnM/DQo+ID4NCj4g
PiBXZSdyZSBzY29waW5nIHRoaXMgdG8gZG1hLWJ1ZiBoZWFwcyBmb3Igbm93LiBDTUEgaGVhcHMg
YW5kIHRoZSBkbWVtDQo+ID4gY29udHJvbGxlciBhcmUgb24gdGhlIHJhZGFyIGZvciBmb2xsb3ct
dXAvcGFyYWxsZWwgd29yayAodGhlcmUgd2lsbCBiZQ0KPiA+IGRyYWdvbnMgYW5kIHdpbGwgc3Vy
ZWx5IG5lZWQgZGlzY3Vzc2lvbikuIEZvciBEUk0gYW5kIFY0TDIgdGhlDQo+ID4gbG9uZy10ZXJt
IGludGVudCBpcyBtaWdyYXRpb24gdG8gaGVhcHMsIHdoaWNoIHdvdWxkIG1ha2UgZGlyZWN0DQo+
ID4gYWNjb3VudGluZyBvbiB0aG9zZSBwYXRocyB1bm5lY2Vzc2FyeS4NCj4NCj4gQWggSSBzZWUu
IEdFTSBidWZmZXJzIGV4cG9ydGVkIHRvIGRtYWJ1ZnMgYXJlIHdoYXQgSSBoYWQgaW4gbWluZC4g
SQ0KPiBndWVzcyB0aGlzIHdvdWxkIG9ubHkgbGVhdmUgdGhlIG9kZCBub24tRFJNIGRyaXZlciB3
aXRoIHRoZSBuZWVkIHRvDQo+IGFkZCB0aGVpciBvd24gYWNjb3VudGluZyBjYWxscywgd2hpY2gg
SSBkb24ndCBleHBlY3Qgd291bGQgYmUgYSBiaWcNCj4gcHJvYmxlbS4NCj4NCg0Kc291bmRzIGxp
a2Ugd2Ugc3RpbGwgaGF2ZSBhIGxvbmcgd2F5IHRvIGdvIHRvIGNvcnJlY3RseSBhY2NvdW50IGZv
cg0KdmFyaW91cyB2NGwyLCBkcm0sIEdFTSwgQ01BLCBldGMuIEluIHBhdGNoIDEsIHRoZSBjaGFy
Z2luZyBpcyBkb25lIGluDQpkbWFfYnVmX2V4cG9ydCgpLCBzbyBJIGd1ZXNzIGl0IGNvdmVycyBh
bGwgZG1hLWJ1ZiB0eXBlcyBleGNlcHQNCmRtYV9oZWFwLCBidXQgdGhlIHByb2JsZW0gaXMgdGhh
dCBpdCBoYXMgbm8gcmVtb3RlIGNoYXJnaW5nIHN1cHBvcnQgYXQNCmFsbD8NCg0KPiA+IHVkbWFi
dWZzIGFyZSBhbHJlYWR5DQo+ID4gbWVtY2ctY2hhcmdlZCwgc28gYWRkaW5nIGEgc2VwYXJhdGUg
TUVNQ0dfRE1BQlVGIHdvdWxkIGRvdWJsZSBjb3VudC4NCj4gPiBBcmUgdGhlcmUgYW55IG90aGVy
IGV4cG9ydGVycyB5b3UgaGFkIGluIG1pbmQgdGhhdCB3b3VsZCBiZW5lZml0IGZyb20NCj4gPiB0
aGlzIGFwcHJvYWNoPw0KPiA+DQoNClRoYW5rcw0KQmFycnkNCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0t
IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVt
YWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
