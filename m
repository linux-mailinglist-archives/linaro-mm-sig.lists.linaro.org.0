Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SLFyB2hF62m4KQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2026 12:26:48 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id B05AD45D066
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2026 12:26:47 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5915D4068C
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2026 10:26:46 +0000 (UTC)
Received: from mail-dy1-f179.google.com (mail-dy1-f179.google.com [74.125.82.179])
	by lists.linaro.org (Postfix) with ESMTPS id 75F00405D1
	for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Apr 2026 10:26:43 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=pvtsDfnr;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of miguel.ojeda.sandonis@gmail.com designates 74.125.82.179 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
	arc=pass ("google.com:s=arc-20240605:i=1")
Received: by mail-dy1-f179.google.com with SMTP id 5a478bee46e88-2e6b6167d7cso355589eec.1
        for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Apr 2026 03:26:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1777026402; cv=none;
        d=google.com; s=arc-20240605;
        b=diWpcVj9YLvAhLdxPT1V0GnrXHiE/5mTEXPmCOm7eEKte4sGU+w8WKnE6SkZhfAX1/
         jL5t9+e9BY705UImaqTXEItZtDjI+0BkoGK/q2hxXPyDr7EQKQFD9QbsKd5xXVFW9vup
         2a96mQHDoIkuTwgntcl9IhXwjRV7qOhsbz2Z1fakzo6xddPfe8i1mVklinhaF3Qe8epb
         V0FBrzeIDEd7DPw6BVo30Llu17j+TW7wZmg77uKUCOWsSuXuwrEvMgUkQgN1x6urTjtX
         SZg/z8bf5IgyQP8Ip+HWIJPgzQcoH+NWUd2+//yHp28cQQglCwnJ/OQQpa0qmDm7DSzy
         Q3TQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=j0xKFe1jeJhx1ESLTH8WRadcy9BjbQbmpsMi2ljEDVs=;
        fh=+LOqYCDG1iMB4EooEiq8X5fSM9NnX2L+WeF6wISFy78=;
        b=XbFDsurg30EaTdJVj+68WRsXYtj+Ffkp63JRRzC4CSJaAPsEBwkRbBhlqfyDJyRy7G
         T7cQe6EEoRd3H5e9BDuLvepZjzRfjmYJRMF8wkAXzTx9ZVVjaUnIcqyefY6Oi+YXIed6
         K9rV5WKHfWnXPQHMUWLK4Lx8O6HruEA/TqiKUsyYg9UDkd4QpplNfqdXvlz/9tq7rzu7
         t5SwW2psyUwMARzmI4pfOk+KHAfk9GLz09AfXSPhQ/jfbFN2QaJjAyCVKQ8Di5enxARy
         w728KYbpXpW1ly5UKSblanwvQ8ubmkMnZqtbsaSn95Oc6s3mvlHrrGGbLALBbpTxIgj7
         t0IQ==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777026402; x=1777631202; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j0xKFe1jeJhx1ESLTH8WRadcy9BjbQbmpsMi2ljEDVs=;
        b=pvtsDfnrVXvwd8FetESyvkuxK5t/7X7uzvH93km/mLoEhRFDkO9lkdqdnM63etvMPk
         U43iwudzQlNypjsC67DFqLx9oD4sexfpA6UrXle5WYhInQ8559eQIhc6MHOeiv8I36B6
         JGSCwnMQ8FAzw6A72Q+C617X5iRMBpsieD/MFm8lkHImmPTu6EotSSRnjDmCVfJCbgEr
         G8+q30PxoJtSogbXUJ9QhRWdtwIIjCRFL5TRUmiwpMVXfqKEJmNDmZMHeipTt2cNVy/4
         guLbH+hKzBaWamFy7QSjGEiTGtavdm0dyv9pdSHWr6ExDs+/dFBC/nsbZZHovZglYJ6g
         N8SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777026402; x=1777631202;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=j0xKFe1jeJhx1ESLTH8WRadcy9BjbQbmpsMi2ljEDVs=;
        b=NSiQGc4iNgqoNv6GCQAxStIP0cV8yUFA4QHQAnQ+IsyU/miFzIlymxpVJ+A/U7Q7ZA
         86r6Gip9OfA9dDG0iVjfzwzeU3T+9K9Vo6JOM1kK+/i13loqnuPdoqns8ZHZ5oY+E02P
         MQVWHpldNFCMT36okfP9qeK1+XF1lQBtYlLqC4JhTIibzeQyet7A9GYSkuOijT48alAU
         HzwoJTuK3n46u3hjz7SRh1jQUsh0YuhMfgZ7+rY4smBJff9XwCDfMNJV/zxJDyRSUQa+
         hOCpSDqmKvROIwGyh+69kCkUKq671HZ7H+TTGb5eCYxRdnq64DLKx58ILdPIR9p+bsnY
         mqog==
X-Forwarded-Encrypted: i=1; AFNElJ8KkeH6YbPQM8fhG2yqjo3yLetWdD8jnOtnxq4sQ1i6P0hrwjC3pu14j0y6q3IVo4ZJ0QexvY88k7r1W0EP@lists.linaro.org
X-Gm-Message-State: AOJu0Yx9kGcCaO1+3tAhI2V04JFrXlAKiHNN+3uT9oIqM3ojiLbzXIAP
	DEnM1CHyMNqGan1aX5D+6erCsfrpZuENr+9JD806uQc8hmopV858gmPpZwQzCvhWxDb3JtLFHmA
	OdcaSVGH4oPKbL/Lu3VzLbyT2SnT8Dh4=
X-Gm-Gg: AeBDieuQLZHpBbycgF2sjUq2Oi8awhg7gDyKj9olfpxRgW0FWs/k6ZzXPqkkgcG6mgF
	uKeqsNhUgb4x4dAwSUGV0Agn32QgRhzKlRWHHobd5vTAPVQfmVOe/yfpFipR/TM8EHA3+w2ozni
	wriKS/9Se+Th2NVIl4jp9k2oIMOQ6qWPOxoZJHPDVskXYdMDmFfTOf/W4oN07lao9JXUcOW1K4/
	vOIFxQzAD2NNtJUZZvblHDZrn5Dwd8sXhPXMY/l25e9j7Xt1Y9bJkauIjHBbJmPz1KllsUqf53J
	mXuSX+S8Ug+K57/okRvmZCrNc+q/+o2cT2UMkH7WPu/c/JuFLkBrejVnJAu1m8NXiGsci4uXpoi
	/YVqoYtnzN+iWOe35uSR2w3tanWHHequSIA==
X-Received: by 2002:a05:7301:9f03:b0:2be:298c:a11 with SMTP id
 5a478bee46e88-2e478a2e850mr6554300eec.3.1777026402324; Fri, 24 Apr 2026
 03:26:42 -0700 (PDT)
MIME-Version: 1.0
References: <20260424054742.45832-1-mkchauras@gmail.com> <20260424054742.45832-6-mkchauras@gmail.com>
 <20260424101425.6bde0e17@pumpkin> <aes7L3M1d_LvvGKa@luna>
In-Reply-To: <aes7L3M1d_LvvGKa@luna>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Fri, 24 Apr 2026 12:26:28 +0200
X-Gm-Features: AQROBzDET6d-0hjNl0HV899j9TcLUcNjD1kIJArKfIFhDWI5iKiWhVLnvOkXFjo
Message-ID: <CANiq72nsYy-EUSMynykb=6QyR62M7hT61RoTO3F0-vw1oBMh+w@mail.gmail.com>
To: Link Mauve <linkmauve@linkmauve.fr>
X-Spamd-Bar: ----
Message-ID-Hash: JBJ2A6HBBDQZHJ6UYLNQJMY2J4SBMKUZ
X-Message-ID-Hash: JBJ2A6HBBDQZHJ6UYLNQJMY2J4SBMKUZ
X-MailFrom: miguel.ojeda.sandonis@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: David Laight <david.laight.linux@gmail.com>, "Mukesh Kumar Chaurasiya (IBM)" <mkchauras@gmail.com>, maddy@linux.ibm.com, mpe@ellerman.id.au, npiggin@gmail.com, chleroy@kernel.org, peterz@infradead.org, jpoimboe@kernel.org, jbaron@akamai.com, aliceryhl@google.com, rostedt@goodmis.org, ardb@kernel.org, sumit.semwal@linaro.org, christian.koenig@amd.com, ojeda@kernel.org, boqun@kernel.org, gary@garyguo.net, bjorn3_gh@protonmail.com, lossin@kernel.org, a.hindborg@kernel.org, tmgross@umich.edu, dakr@kernel.org, nathan@kernel.org, nick.desaulniers+lkml@gmail.com, morbo@google.com, justinstitt@google.com, tamird@kernel.org, arnd@arndb.de, nsc@kernel.org, simona.vetter@ffwll.ch, linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, rust-for-linux@vger.kernel.org, llvm@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH V13 5/7] rust: Make __udivdi3() and __umoddi3() panic
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JBJ2A6HBBDQZHJ6UYLNQJMY2J4SBMKUZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: B05AD45D066
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[38];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,linux.ibm.com,ellerman.id.au,kernel.org,infradead.org,akamai.com,google.com,goodmis.org,linaro.org,amd.com,garyguo.net,protonmail.com,umich.edu,arndb.de,ffwll.ch,lists.ozlabs.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	DKIM_TRACE(0.00)[gmail.com:-];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	FROM_NEQ_ENVFROM(0.00)[miguelojedasandonis@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,lkml];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,mail.gmail.com:mid,linkmauve.fr:email,lists.linaro.org:helo,lists.linaro.org:rdns]

T24gRnJpLCBBcHIgMjQsIDIwMjYgYXQgMTE6NDPigK9BTSBMaW5rIE1hdXZlIDxsaW5rbWF1dmVA
bGlua21hdXZlLmZyPiB3cm90ZToNCj4NCj4gQSBwb3NzaWJsZSBzb2x1dGlvbiB3b3VsZCBiZSB0
byBjaGFuZ2UgdGhlIGNvcmUgY3JhdGUgdG8gbm90IGRpdmlkZQ0KPiB1NjRzLCBidXQgdGhlIGxh
c3QgdGltZSBJIHRyaWVkIHRvIGRvIHRoYXQgSSBjb3VsZG7igJl0IHF1aXRlIGZpZ3VyZSBvdXQN
Cj4gaG93IHRvIGRvIGZvcm1hdHRpbmcgd2l0aG91dCBpdCwgbWF5YmUgSSB3aWxsIGp1c3Qgb3Bl
biBhbiBpc3N1ZSBhZ2FpbnN0DQo+IFJ1c3QuDQoNClllYWgsIEkgaGF2ZSBzb21lIGNvbnRleHQg
YXQ6DQoNCiAgaHR0cHM6Ly9naXRodWIuY29tL1J1c3QtZm9yLUxpbnV4L2xpbnV4L2lzc3Vlcy8y
IC0+DQpmZWF0dXJlKGNvbXBpbGVyX2J1aWx0aW5zKSBhbmQgYSB3YXkgdG8gYXZvaWQgY2VydGFp
biBpbnRyaW5zaWNzIChmMzIsDQpmNjQsIGkxMjgsIHUxMjggYW5kIDY0LWJpdCBkaXZpc2lvbnMv
bW9kdWxvcykuDQoNCldlIGhhdmUgZGlzY3Vzc2VkIGl0IGF0IHNvbWUgcG9pbnRzIHdpdGggdXBz
dHJlYW0gUnVzdCAoaW5jbHVkaW5nDQpyZWxhdGVkIGRpc2N1c3Npb25zIGFib3V0IGhhdmluZyBt
b3JlIGBjZmdgcyBpbiBgY29yZWAgb3IgYQ0KYGNmZyhsaW51eF9rZXJuZWwpYCBldGMuKS4gSSBk
b24ndCB0aGluayB3ZSBoYXZlIGFuIG9wZW4gaXNzdWUNCmNvbmNyZXRlbHkgZm9yIGl0LCBhcGFy
dCBmcm9tIHRoZSBDbGlwcHkgb25lIHRvIGZsYWcgdGhlIHVzZSB0aGUgdXNlDQpvZiB0aGUgNjQt
Yml0IGRpdmlzaW9uLCBidXQgaWYgeW91IG9wZW4gYSBtb3JlIGdlbmVyYWwgb25lIHdpdGggc29t
ZQ0KZGV0YWlscywgdGhhdCB3b3VsZCBiZSBncmVhdC4NCg0KVGhhbmtzIQ0KDQpDaGVlcnMsDQpN
aWd1ZWwNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9y
ZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlz
dHMubGluYXJvLm9yZwo=
