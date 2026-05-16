Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YB94A3ctCGrYcwMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 16 May 2026 10:40:23 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 881B055AC6D
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 16 May 2026 10:40:22 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8E03940492
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 16 May 2026 08:40:21 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 4489B3F9D9
	for <linaro-mm-sig@lists.linaro.org>; Sat, 16 May 2026 08:40:10 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b="tvbS/DGA";
	spf=pass (lists.linaro.org: domain of baohua@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=baohua@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 98A10445DC
	for <linaro-mm-sig@lists.linaro.org>; Sat, 16 May 2026 08:40:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 77EE4C2BCFA
	for <linaro-mm-sig@lists.linaro.org>; Sat, 16 May 2026 08:40:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778920809;
	bh=y+cssOF3JI3QPMolzFAOadB7Do4nnXYRXVDNACSVwkQ=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=tvbS/DGAmwukiGZJwJxkLpU8q18SbF1usZs165c2E4z129+TCBxQRgO79D6/d3FSG
	 grpo2HrkUzRjYbo0B4eFX7NXzK9MoowEVLeS9obWh7xDVirpHEvDgivl2EkoK4f/pB
	 U49SOqLzMpvXoF+I16XeKoGVcQNa/dLpyXTmFs+7/p1Mj5e/scwaeMaJmyJrt020Hb
	 R7ygS24p4zLcx/nztB1ztLZYDvK28yIUhhvX8nyVsN4OcDHppEEFQWEqjDxEi30oIn
	 tfv+FPDDCN/QDDn71qq28hU0HK2L/ojYnDxhEaNoHt0HpFJPfBu170/5vnRJpUHIR0
	 iJ79PgQ2bpPPw==
Received: by mail-qv1-f45.google.com with SMTP id 6a1803df08f44-8b5cda2dab9so19019626d6.0
        for <linaro-mm-sig@lists.linaro.org>; Sat, 16 May 2026 01:40:09 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ8kwu1cAvdvncAGkKpKX1Yr/Tn52itTqEOx2NIeYryFajo9htnTC1FL0WGwFnc2lx9Fql1qfsswIzkraKEy@lists.linaro.org
X-Gm-Message-State: AOJu0YxfCHYN5nF0xEnX3yk4CqvSMY4uDXs80d041rDUNLDi9TyeP4KM
	vNxbf4v12QAyC15KaOvbSSNtFSF/tHr64di5q/MyaKXxLxJYTRS8U3cC0TEQtTunG2G0LGkow36
	tYhTi4Ql2Wy3/3l6PQmK0t4bwiw9MH1s=
X-Received: by 2002:a05:6214:484a:b0:8b1:f2e9:2996 with SMTP id
 6a1803df08f44-8ca0f6f9b30mr88104796d6.15.1778920808440; Sat, 16 May 2026
 01:40:08 -0700 (PDT)
MIME-Version: 1.0
References: <20260512-v2_20230123_tjmercier_google_com-v1-0-6326701c3691@redhat.com>
 <20260512-v2_20230123_tjmercier_google_com-v1-2-6326701c3691@redhat.com>
 <8ef38815-6ae9-4359-86d4-042554357639@amd.com> <CABdmKX2uwZ12kYJYPJGfWxuMBOJS=64b1GRj72tfB5D=NKM22w@mail.gmail.com>
In-Reply-To: <CABdmKX2uwZ12kYJYPJGfWxuMBOJS=64b1GRj72tfB5D=NKM22w@mail.gmail.com>
From: Barry Song <baohua@kernel.org>
Date: Sat, 16 May 2026 16:39:57 +0800
X-Gmail-Original-Message-ID: <CAGsJ_4zjrFJYQQsLThTGXR6g+2PXzeAhjyDpLHfDFqVViWvyBQ@mail.gmail.com>
X-Gm-Features: AVHnY4KGpLFyShwsPFT2_ko1YKgIHsQeEWpI94e5tOAyYvyldimzi4eq_T9PySo
Message-ID: <CAGsJ_4zjrFJYQQsLThTGXR6g+2PXzeAhjyDpLHfDFqVViWvyBQ@mail.gmail.com>
To: "T.J. Mercier" <tjmercier@google.com>
X-Spamd-Bar: ---
Message-ID-Hash: UZBCMNTFNKAR4GYODOW6YCX2L3QCBYUW
X-Message-ID-Hash: UZBCMNTFNKAR4GYODOW6YCX2L3QCBYUW
X-MailFrom: baohua@kernel.org
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Albert Esteve <aesteve@redhat.com>, Tejun Heo <tj@kernel.org>, Johannes Weiner <hannes@cmpxchg.org>, =?UTF-8?Q?Michal_Koutn=C3=BD?= <mkoutny@suse.com>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, Michal Hocko <mhocko@kernel.org>, Roman Gushchin <roman.gushchin@linux.dev>, Shakeel Butt <shakeel.butt@linux.dev>, Muchun Song <muchun.song@linux.dev>, Andrew Morton <akpm@linux-foundation.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, Christian Brauner <brauner@kernel.org>, Paul Moore <paul@paul-moore.com>, James Morris <jmorris@namei.org>, "Serge E. Hallyn" <serge@hallyn.com>, Stephen Smalley <stephen.smalley.work@gmail.com>, Ondrej Mosnacek <omosnace@redhat.com>, Shuah Khan <shuah@kernel.org>, cgroups@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.or
 g, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org, linux-security-module@vger.kernel.org, selinux@vger.kernel.org, linux-kselftest@vger.kernel.org, mripard@kernel.org, echanude@redhat.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 2/5] dma-heap: charge dma-buf memory via explicit memcg
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UZBCMNTFNKAR4GYODOW6YCX2L3QCBYUW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: 881B055AC6D
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
	FREEMAIL_CC(0.00)[amd.com,redhat.com,kernel.org,cmpxchg.org,suse.com,lwn.net,linuxfoundation.org,linaro.org,linux.dev,linux-foundation.org,collabora.com,arm.com,google.com,paul-moore.com,namei.org,hallyn.com,gmail.com,vger.kernel.org,vger.kernel.or,lists.freedesktop.org,lists.linaro.org,kvack.org];
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
	NEURAL_HAM(-0.00)[-0.924];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,amd.com:email,linaro.org:email]
X-Rspamd-Action: no action

T24gV2VkLCBNYXkgMTMsIDIwMjYgYXQgMjo1NOKAr0FNIFQuSi4gTWVyY2llciA8dGptZXJjaWVy
QGdvb2dsZS5jb20+IHdyb3RlOg0KPg0KPiBPbiBUdWUsIE1heSAxMiwgMjAyNiBhdCAzOjE04oCv
QU0gQ2hyaXN0aWFuIEvDtm5pZw0KPiA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToN
Cj4gPg0KPiA+IE9uIDUvMTIvMjYgMTE6MTAsIEFsYmVydCBFc3RldmUgd3JvdGU6DQo+ID4gPiBP
biBlbWJlZGRlZCBwbGF0Zm9ybXMgYSBjZW50cmFsIHByb2Nlc3Mgb2Z0ZW4gYWxsb2NhdGVzIGRt
YS1idWYNCj4gPiA+IG1lbW9yeSBvbiBiZWhhbGYgb2YgY2xpZW50IGFwcGxpY2F0aW9ucy4gV2l0
aG91dCBhIHdheSB0bw0KPiA+ID4gYXR0cmlidXRlIHRoZSBjaGFyZ2UgdG8gdGhlIHJlcXVlc3Rp
bmcgY2xpZW50J3MgY2dyb3VwLCB0aGUNCj4gPiA+IGNvc3QgbGFuZHMgb24gdGhlIGFsbG9jYXRv
ciwgbWFraW5nIHBlci1jZ3JvdXAgbWVtb3J5IGxpbWl0cw0KPiA+ID4gaW5lZmZlY3RpdmUgZm9y
IHRoZSBhY3R1YWwgY29uc3VtZXJzLg0KPiA+ID4NCj4gPiA+IEFkZCBjaGFyZ2VfcGlkX2ZkIHRv
IHN0cnVjdCBkbWFfaGVhcF9hbGxvY2F0aW9uX2RhdGEuIFdoZW4gc2V0IHRvDQo+ID4gPiBhIHZh
bGlkIHBpZGZkLCBETUFfSEVBUF9JT0NUTF9BTExPQyByZXNvbHZlcyB0aGUgdGFyZ2V0IHRhc2sn
cw0KPiA+ID4gbWVtY2cgYW5kIGNoYXJnZXMgdGhlIGJ1ZmZlciB0aGVyZSB2aWEgbWVtX2Nncm91
cF9jaGFyZ2VfZG1hYnVmKCkNCj4gPiA+IGluc2lkZSBkbWFfaGVhcF9idWZmZXJfYWxsb2MoKS4g
V2l0aG91dCBjaGFyZ2VfcGlkX2ZkLCBhbmQgd2l0aA0KPiA+ID4gdGhlIG1lbV9hY2NvdW50aW5n
IG1vZHVsZSBwYXJhbWV0ZXIgZW5hYmxlZCwgdGhlIGJ1ZmZlciBpcyBjaGFyZ2VkDQo+ID4gPiB0
byB0aGUgYWxsb2NhdG9yJ3Mgb3duIGNncm91cC4NCj4gPiA+DQo+ID4gPiBBZGRpdGlvbmFsbHks
IGNvbW1pdCAzYzIyN2JlOTA2NTkgKCJkbWEtYnVmOiBzeXN0ZW1faGVhcDogYWNjb3VudCBmb3IN
Cj4gPiA+IHN5c3RlbSBoZWFwIGFsbG9jYXRpb24gaW4gbWVtY2ciKSBhZGRzIF9fR0ZQX0FDQ09V
TlQgdG8gc3lzdGVtLWhlYXANCj4gPiA+IHBhZ2UgYWxsb2NhdGlvbnMuIEtlZXBpbmcgX19HRlBf
QUNDT1VOVCB3b3VsZCBjaGFyZ2UgdGhlIHNhbWUgcGFnZXMNCj4gPiA+IHR3aWNlIChvbmNlIHRv
IGttZW0sIG9uY2UgdG8gTUVNQ0dfRE1BQlVGKSwgdGh1cyByZW1vdmUgaXQgYW5kIHJvdXRlDQo+
ID4gPiBhbGwgYWNjb3VudGluZyB0aHJvdWdoIGEgc2luZ2xlIE1FTUNHX0RNQUJVRiBwYXRoLg0K
PiA+ID4NCj4gPiA+IFVzYWdlIGV4YW1wbGVzOg0KPiA+ID4NCj4gPiA+ICAgMS4gQ2VudHJhbCBh
bGxvY2F0b3IgY2hhcmdpbmcgdG8gYSBjbGllbnQgYXQgYWxsb2NhdGlvbiB0aW1lLg0KPiA+ID4g
ICAgICBUaGUgYWxsb2NhdG9yIGtub3dzIHRoZSBjbGllbnQncyBQSUQgKGUuZy4sIGZyb20gYmlu
ZGVyJ3MNCj4gPiA+ICAgICAgc2VuZGVyX3BpZCkgYW5kIHVzZXMgcGlkZmQgdG8gYXR0cmlidXRl
IHRoZSBjaGFyZ2U6DQo+ID4gPg0KPiA+ID4gICAgICAgIHBpZF90IGNsaWVudF9waWQgPSB0eG4t
PnNlbmRlcl9waWQ7DQo+ID4gPiAgICAgICAgaW50IHBpZGZkID0gcGlkZmRfb3BlbihjbGllbnRf
cGlkLCAwKTsNCj4gPiA+DQo+ID4gPiAgICAgICAgc3RydWN0IGRtYV9oZWFwX2FsbG9jYXRpb25f
ZGF0YSBhbGxvYyA9IHsNCj4gPiA+ICAgICAgICAgICAgLmxlbiAgICAgICAgICAgICA9IGJ1ZmZl
cl9zaXplLA0KPiA+ID4gICAgICAgICAgICAuZmRfZmxhZ3MgICAgICAgID0gT19SRFdSIHwgT19D
TE9FWEVDLA0KPiA+ID4gICAgICAgICAgICAuY2hhcmdlX3BpZF9mZCAgID0gcGlkZmQsDQo+ID4g
PiAgICAgICAgfTsNCj4gPiA+ICAgICAgICBpb2N0bChoZWFwX2ZkLCBETUFfSEVBUF9JT0NUTF9B
TExPQywgJmFsbG9jKTsNCj4gPiA+ICAgICAgICBjbG9zZShwaWRmZCk7DQo+ID4gPiAgICAgICAg
LyogYWxsb2MuZmQgaXMgbm93IGNoYXJnZWQgdG8gY2xpZW50J3MgY2dyb3VwICovDQo+ID4gPg0K
PiA+ID4gICAyLiBEZWZhdWx0IGFsbG9jYXRpb24gKG5vIHBpZGZkLCBtZW1fYWNjb3VudGluZz0x
KS4NCj4gPiA+ICAgICAgV2hlbiBjaGFyZ2VfcGlkX2ZkIGlzIG5vdCBzZXQgYW5kIHRoZSBtZW1f
YWNjb3VudGluZyBtb2R1bGUNCj4gPiA+ICAgICAgcGFyYW1ldGVyIGlzIGVuYWJsZWQsIHRoZSBi
dWZmZXIgaXMgY2hhcmdlZCB0byB0aGUgYWxsb2NhdG9yJ3MNCj4gPiA+ICAgICAgb3duIGNncm91
cDoNCj4gPiA+DQo+ID4gPiAgICAgICAgc3RydWN0IGRtYV9oZWFwX2FsbG9jYXRpb25fZGF0YSBh
bGxvYyA9IHsNCj4gPiA+ICAgICAgICAgICAgLmxlbiAgICAgID0gYnVmZmVyX3NpemUsDQo+ID4g
PiAgICAgICAgICAgIC5mZF9mbGFncyA9IE9fUkRXUiB8IE9fQ0xPRVhFQywNCj4gPiA+ICAgICAg
ICB9Ow0KPiA+ID4gICAgICAgIGlvY3RsKGhlYXBfZmQsIERNQV9IRUFQX0lPQ1RMX0FMTE9DLCAm
YWxsb2MpOw0KPiA+ID4gICAgICAgIC8qIGNoYXJnZWQgdG8gY3VycmVudCBwcm9jZXNzJ3MgY2dy
b3VwICovDQo+ID4gPg0KPiA+ID4gQ3VycmVudCBsaW1pdGF0aW9uczoNCj4gPiA+DQo+ID4gPiAg
LSBTaW5nbGUtb3duZXIgbW9kZWw6IGEgZG1hLWJ1ZiBjYXJyaWVzIG9uZSBtZW1jZyBjaGFyZ2Ug
cmVnYXJkbGVzcyBvZg0KPiA+ID4gICAgaG93IG1hbnkgcHJvY2Vzc2VzIHNoYXJlIGl0LiBNZWFu
cyBvbmx5IHRoZSBmaXJzdCBvd25lciAoYW5kIGV4cG9ydGVyKQ0KPiA+ID4gICAgb2YgdGhlIHNo
YXJlZCBidWZmZXIgYmVhcnMgdGhlIGNoYXJnZS4NCj4gPiA+ICAtIE9ubHkgbWVtY2cgYWNjb3Vu
dGluZyBzdXBwb3J0ZWQuIFdoaWxlIHRoaXMgbWFrZXMgc2Vuc2UgZm9yIHN5c3RlbQ0KPiA+ID4g
ICAgaGVhcCBidWZmZXJzLCBvdGhlciBoZWFwcyAoZS5nLiwgQ01BIGhlYXBzKSB3aWxsIHJlcXVp
cmUgc2VsZWN0aXZlbHkNCj4gPiA+ICAgIGNoYXJnaW5nIGFsc28gZm9yIHRoZSBkbWVtIGNvbnRy
b2xsZXIuDQo+ID4NCj4gPiBXZWxsIHRoYXQgZG9lc24ndCBsb29rcyBzb28gYmFkLCBpdCBhdCBs
ZWFzdCBzZWVtcyB0byB0YWNrbGUgdGhlIHByb2JsZW0gYXQgaGFuZCBmb3IgQW5kcm9pZCBhbmQg
c29tZSBvZiBvdGhlciBlbWJlZGRlZCB1c2UgY2FzZXMuDQo+DQo+IFllYWggSSB0aGluayB0aGlz
IG1pZ2h0IHdvcmsuIEkga25vdyBvZiAzIGNhc2VzLCBhbmQgaXQgdHJpdmlhbGx5DQo+IHNvbHZl
cyB0aGUgZmlyc3QgdHdvLiBUaGUgdGhpcmQgcmVxdWlyZXMgc29tZSB3b3JrIG9uIG91ciBlbmQg
dG8NCj4gZXh0ZW5kIG91ciB1c2Vyc3BhY2UgaW50ZXJmYWNlcyB0byBpbmNsdWRlIHRoZSBwaWRm
ZCBidXQgaXQgc2VlbXMNCj4gZG9hYmxlLiBJJ20gY2hlY2tpbmcgd2l0aCBvdXIgZ3JhcGhpY3Mg
Zm9sa3MuDQo+DQo+IDEpIERpcmVjdCBhbGxvY2F0aW9uIGZyb20gdXNlciAoZS5nLiBhcHAgLT4g
YWxsb2NhdGlvbiBpb2N0bCBvbg0KPiAvZGV2L2RtYV9oZWFwL2ZvbykNCj4gTm8gY2hhbmdlcyBy
ZXF1aXJlZCB0byB1c2Vyc3BhY2UuIG1lbV9hY2NvdW50aW5nPTEgY2hhcmdlcyB0aGUgYXBwLg0K
Pg0KPiAyKSBTaW5nbGUgaG9wIHJlbW90ZSBhbGxvY2F0aW9uIChlLmcuIGFwcCAtPiBBSGFyZHdh
cmVCdWZmZXJfYWxsb2NhdGUNCj4gLT4gZ3JhbGxvYykNCj4gZ3JhbGxvYyBoYXMgdGhlIGNhbGxl
cidzIHBpZCBhcyBkZXNjcmliZWQgaW4gdGhlIGNvbW1pdCBtZXNzYWdlLiBPcGVuDQo+IGEgcGlk
ZmQgYW5kIHBhc3MgaXQgaW4gdGhlIGRtYV9oZWFwX2FsbG9jYXRpb25fZGF0YS4NCj4NCj4gMykg
RG91YmxlIGhvcCByZW1vdGUgYWxsb2NhdGlvbiAoZS5nLiBhcHAgLT4gZGVxdWV1ZUJ1ZmZlciAt
Pg0KPiBTdXJmYWNlRmxpbmdlciAtPiBncmFsbG9jKQ0KPiBJbiB0aGlzIGNhc2UgZ3JhbGxvYyBr
bm93cyBTdXJmYWNlRmxpbmdlcidzIHBpZCwgYnV0IG5vdCB0aGUgYXBwJ3MuIFNvDQo+IHdlIG5l
ZWQgdG8gYWRkIHRoZSBhcHAncyBwaWRmZCB0byB0aGUgU3VyZmFjZUZsaW5nZXIgLT4gZ3JhbGxv
Yw0KPiBpbnRlcmZhY2UsIG9yIHRyYW5zZmVyIHRoZSBtZW1jZyBjaGFyZ2UgZnJvbSBTdXJmYWNl
RmxpbmdlciB0byB0aGUgYXBwDQo+IGFmdGVyIHRoZSBhbGxvY2F0aW9uLg0KPiBJdCdkIGJlIG5p
Y2UgdG8gYXZvaWQgdGhlIGNoYXJnZSB0cmFuc2ZlciBvcHRpb24gZW50aXJlbHksIGJ1dCBpZiB3
ZQ0KPiBuZWVkIGl0IHRoYXQgZG9lc24ndCBzZWVtIHNvIGJhZCBpbiB0aGlzIGNhc2UgYmVjYXVz
ZSBpdCdzIGEgYnVsaw0KPiBjaGFyZ2UgZm9yIHRoZSBlbnRpcmUgZG1hYnVmIHJhdGhlciB0aGFu
IHBlci1wYWdlLiBTbyB0aGUgZXhwb3J0ZXINCj4gZG9lc24ndCBuZWVkIHRvIGdldCBpbnZvbHZl
ZCAod2Ugd291bGRuJ3QgbmVlZCBhIG5ldyBkbWFfYnVmX29wKSBhbmQNCj4gd2Ugd291bGRuJ3Qg
aGF2ZSB0byB3b3JyeSBhYm91dCBsb29waW5nIGFuZCBsb2NraW5nIGZvciBlYWNoIHBhZ2UuDQo+
DQoNCkhpIFQuSi4sDQoNCllvdXIgZGVzY3JpcHRpb24gb2YgdGhlIHRocmVlIGRpZmZlcmVudCBj
YXNlcyBzb3VuZHMgdmVyeSBpbnRlcmVzdGluZy4NCkl0IGhlbHBzIG1lIHVuZGVyc3RhbmQgaG93
IGRpZmZpY3VsdCBpdCBjYW4gYmUgdG8gY29ycmVjdGx5IGNoYXJnZQ0KZG1hLWJ1ZiBpbiB0aGUg
Y3VycmVudCB1c2VyIHNjZW5hcmlvcy4NCg0KSeKAmW0gd29uZGVyaW5nIHdoZXJlIEkgY2FuIGZp
bmQgQW5kcm9pZCB1c2Vyc3BhY2UgY29kZSB0aGF0IHRyYW5zZmVycw0KdGhlIFBJRCBvZiBSUEMg
Y2FsbGVycy4gRG8gd2UgaGF2ZSBhbnkgZXhpc3Rpbmcgc2FtcGxlIGNvZGUgaW4gQW5kcm9pZA0K
Zm9yIHRoaXM/DQoNCj4gPiBJJ20ganVzdCBub3Qgc3VyZSBpZiB0aGlzIGlzIGZ1dHVyZSBwcm92
ZSBhbmQgd2lsbCB3b3JrIGZvciBhbGwgdXNlIGNhc2VzLCBlLmcuIGNsb3VkIGdhbWluZywgbmF0
aXZlIGNvbnRleHQgZm9yIGF1dG9tb3RpdmUgZXRjLi4uDQoNClRoYW5rcw0KQmFycnkNCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNj
cmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9y
Zwo=
