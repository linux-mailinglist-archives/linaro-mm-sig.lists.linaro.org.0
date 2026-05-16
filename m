Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gAgkOrAeCGqRaAMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 16 May 2026 09:37:20 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F94855A9EA
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 16 May 2026 09:37:20 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 69DF340492
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 16 May 2026 07:37:19 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 1430A3F909
	for <linaro-mm-sig@lists.linaro.org>; Sat, 16 May 2026 07:37:09 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=nNpNtXRG;
	spf=pass (lists.linaro.org: domain of baohua@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=baohua@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id A4E3A601E3
	for <linaro-mm-sig@lists.linaro.org>; Sat, 16 May 2026 07:37:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5BCB6C2BCFB
	for <linaro-mm-sig@lists.linaro.org>; Sat, 16 May 2026 07:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778917028;
	bh=P3vqgwHwD6iLuiEKYHBc9rKUdaJI1VWv+dxZinDZG8M=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=nNpNtXRGUw0mf4NnH+yNpsGfoHEeYyd5NHflVOhmZkdo7mVPuYo0Sn7ejcQkpbAdL
	 Xq4AnHBYR4AGZl8TBwgKc4eBK1jQKV2THXCREwHOk3eNmL2yNugi07+KM4ItzVAMO6
	 lSPY0Q0dGzv7nMdKXX7wA4HJVc7hGOOjnXN54jcMnyKjaImX35rvGB1CMn7FnXzrEH
	 ttD1bT9CLBvfDdqqOFFKIZxJh2yhLap9F2AzPm/qZYxfkQWJm8kzSDn2H87s6wQ+fJ
	 uJXowVoELz8Hq3RAcg3eCdTqAUK/EgUtAJVUnrzr3fZqJNnt9hF+hAPgi/sObhd4Kf
	 /5dvJQcCOdrpg==
Received: by mail-qv1-f52.google.com with SMTP id 6a1803df08f44-8acb856a674so11630486d6.0
        for <linaro-mm-sig@lists.linaro.org>; Sat, 16 May 2026 00:37:08 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ9aFHUC+kGCZ/C4mRHaH8R2UkXLcYziQe8NH9xSwtLnafhJw9Q0HDvpVr5HYNk5dKXbhy5OzqZTogHzV+YZ@lists.linaro.org
X-Gm-Message-State: AOJu0YxV+3jWzPZ8Zhv3laIFcnj2wUlGeZDoVjIxwSBDcWjvUOIzCh1A
	IQCYiQ7UGDTrURSfOp64D4aPlc7mg7y55SWBwLei4xPkHkWzOrQXpBThn7/HxH8l08reN4Hx0Zj
	ebaNHHb+0iVnlHgRyjMMmvIYpgI8R59U=
X-Received: by 2002:a05:6214:29ce:b0:8b3:ff3f:5d61 with SMTP id
 6a1803df08f44-8c8fda1ccbbmr178745586d6.22.1778917027156; Sat, 16 May 2026
 00:37:07 -0700 (PDT)
MIME-Version: 1.0
References: <20260512-v2_20230123_tjmercier_google_com-v1-0-6326701c3691@redhat.com>
 <20260512-v2_20230123_tjmercier_google_com-v1-2-6326701c3691@redhat.com>
In-Reply-To: <20260512-v2_20230123_tjmercier_google_com-v1-2-6326701c3691@redhat.com>
From: Barry Song <baohua@kernel.org>
Date: Sat, 16 May 2026 15:36:56 +0800
X-Gmail-Original-Message-ID: <CAGsJ_4xfznffbjOaNKwnN6oZk_H6pqOzYqd1zx4Q9XrocdzV8A@mail.gmail.com>
X-Gm-Features: AVHnY4L9M-s1Neba6WebvB2EkXnslTMMIykTYPVPE3skCvVx5rzQK6ntLSW6W0w
Message-ID: <CAGsJ_4xfznffbjOaNKwnN6oZk_H6pqOzYqd1zx4Q9XrocdzV8A@mail.gmail.com>
To: Albert Esteve <aesteve@redhat.com>
X-Spamd-Bar: ---
Message-ID-Hash: ZSC7GUXNV3JYVUJZVZHUQTTKAEAYHH6O
X-Message-ID-Hash: ZSC7GUXNV3JYVUJZVZHUQTTKAEAYHH6O
X-MailFrom: baohua@kernel.org
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Tejun Heo <tj@kernel.org>, Johannes Weiner <hannes@cmpxchg.org>, =?UTF-8?Q?Michal_Koutn=C3=BD?= <mkoutny@suse.com>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Michal Hocko <mhocko@kernel.org>, Roman Gushchin <roman.gushchin@linux.dev>, Shakeel Butt <shakeel.butt@linux.dev>, Muchun Song <muchun.song@linux.dev>, Andrew Morton <akpm@linux-foundation.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Christian Brauner <brauner@kernel.org>, Paul Moore <paul@paul-moore.com>, James Morris <jmorris@namei.org>, "Serge E. Hallyn" <serge@hallyn.com>, Stephen Smalley <stephen.smalley.work@gmail.com>, Ondrej Mosnacek <omosnace@redhat.com>, Shuah Khan <shuah@kernel.org>, cgroups@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel
 .org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org, linux-security-module@vger.kernel.org, selinux@vger.kernel.org, linux-kselftest@vger.kernel.org, mripard@kernel.org, echanude@redhat.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 2/5] dma-heap: charge dma-buf memory via explicit memcg
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZSC7GUXNV3JYVUJZVZHUQTTKAEAYHH6O/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: 6F94855A9EA
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.59 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,cmpxchg.org,suse.com,lwn.net,linuxfoundation.org,linaro.org,amd.com,linux.dev,linux-foundation.org,collabora.com,arm.com,google.com,paul-moore.com,namei.org,hallyn.com,gmail.com,redhat.com,vger.kernel.org,vger.kernel,lists.freedesktop.org,lists.linaro.org,kvack.org];
	RCPT_COUNT_TWELVE(0.00)[36];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:-];
	NEURAL_SPAM(0.00)[0.623];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[baohua@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Action: no action

T24gVHVlLCBNYXkgMTIsIDIwMjYgYXQgNToxOOKAr1BNIEFsYmVydCBFc3RldmUgPGFlc3RldmVA
cmVkaGF0LmNvbT4gd3JvdGU6DQo+DQo+IE9uIGVtYmVkZGVkIHBsYXRmb3JtcyBhIGNlbnRyYWwg
cHJvY2VzcyBvZnRlbiBhbGxvY2F0ZXMgZG1hLWJ1Zg0KPiBtZW1vcnkgb24gYmVoYWxmIG9mIGNs
aWVudCBhcHBsaWNhdGlvbnMuIFdpdGhvdXQgYSB3YXkgdG8NCj4gYXR0cmlidXRlIHRoZSBjaGFy
Z2UgdG8gdGhlIHJlcXVlc3RpbmcgY2xpZW50J3MgY2dyb3VwLCB0aGUNCj4gY29zdCBsYW5kcyBv
biB0aGUgYWxsb2NhdG9yLCBtYWtpbmcgcGVyLWNncm91cCBtZW1vcnkgbGltaXRzDQo+IGluZWZm
ZWN0aXZlIGZvciB0aGUgYWN0dWFsIGNvbnN1bWVycy4NCj4NCj4gQWRkIGNoYXJnZV9waWRfZmQg
dG8gc3RydWN0IGRtYV9oZWFwX2FsbG9jYXRpb25fZGF0YS4gV2hlbiBzZXQgdG8NCj4gYSB2YWxp
ZCBwaWRmZCwgRE1BX0hFQVBfSU9DVExfQUxMT0MgcmVzb2x2ZXMgdGhlIHRhcmdldCB0YXNrJ3MN
Cj4gbWVtY2cgYW5kIGNoYXJnZXMgdGhlIGJ1ZmZlciB0aGVyZSB2aWEgbWVtX2Nncm91cF9jaGFy
Z2VfZG1hYnVmKCkNCj4gaW5zaWRlIGRtYV9oZWFwX2J1ZmZlcl9hbGxvYygpLiBXaXRob3V0IGNo
YXJnZV9waWRfZmQsIGFuZCB3aXRoDQo+IHRoZSBtZW1fYWNjb3VudGluZyBtb2R1bGUgcGFyYW1l
dGVyIGVuYWJsZWQsIHRoZSBidWZmZXIgaXMgY2hhcmdlZA0KPiB0byB0aGUgYWxsb2NhdG9yJ3Mg
b3duIGNncm91cC4NCj4NCj4gQWRkaXRpb25hbGx5LCBjb21taXQgM2MyMjdiZTkwNjU5ICgiZG1h
LWJ1Zjogc3lzdGVtX2hlYXA6IGFjY291bnQgZm9yDQo+IHN5c3RlbSBoZWFwIGFsbG9jYXRpb24g
aW4gbWVtY2ciKSBhZGRzIF9fR0ZQX0FDQ09VTlQgdG8gc3lzdGVtLWhlYXANCj4gcGFnZSBhbGxv
Y2F0aW9ucy4gS2VlcGluZyBfX0dGUF9BQ0NPVU5UIHdvdWxkIGNoYXJnZSB0aGUgc2FtZSBwYWdl
cw0KPiB0d2ljZSAob25jZSB0byBrbWVtLCBvbmNlIHRvIE1FTUNHX0RNQUJVRiksIHRodXMgcmVt
b3ZlIGl0IGFuZCByb3V0ZQ0KPiBhbGwgYWNjb3VudGluZyB0aHJvdWdoIGEgc2luZ2xlIE1FTUNH
X0RNQUJVRiBwYXRoLg0KPg0KWy4uLl0NCg0KPiAtICAgICAgICAgICAgICAgaWYgKG1lbV9hY2Nv
dW50aW5nKQ0KPiAtICAgICAgICAgICAgICAgICAgICAgICBmbGFncyB8PSBfX0dGUF9BQ0NPVU5U
Ow0KDQpIaSBBbGJlcnQsDQoNCndvdWxkIGl0IGJlIGJldHRlciB0byBtb3ZlIHRoaXMgYW5kIGl0
cyBkZXNjcmlwdGlvbiB0byBwYXRjaCAxPyBJdA0KbG9va3MgbGlrZSBwYXRjaCAxIGFscmVhZHkg
aW50cm9kdWNlcyB0aGUgZG91YmxlIGFjY291bnRpbmcgY2hhbmdlcywNCmFuZCBwYXRjaCAyIGlz
IG1haW5seSBqdXN0IHN1cHBvcnRpbmcgcmVtb3RlIGNoYXJnaW5nLg0KDQpBbHNvLCBtZW1fYWNj
b3VudGluZyBpcyBvbmx5IHVzZWQgYnkgc3lzdGVtX2hlYXAuYzsgaGFzIHRoaXMgcGF0Y2hzZXQN
CmFsc28gZWxpbWluYXRlZCBpdHMgbmVlZD8NCg0KVGhhbmtzDQpCYXJyeQ0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5n
IGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNl
bmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
