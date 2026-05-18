Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EK6eFgCCC2pvIgUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 23:17:52 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id D082C573BB0
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 23:17:51 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A088B4095B
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 21:17:50 +0000 (UTC)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	by lists.linaro.org (Postfix) with ESMTPS id 2B1523F829
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 21:17:40 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20251104 header.b=GmYDYyCl;
	arc=pass ("google.com:s=arc-20240605:i=1");
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.46 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-48d1c670255so685e9.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 14:17:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1779139059; cv=none;
        d=google.com; s=arc-20240605;
        b=L0C+owflQfaplhYwklW7R1Yigc1b7rAgEcGlNgnaUsBtnj8lUXd4m3hXRzBbNkhnwC
         vNikn6UWKrwwITKUGgTJWtWN28IjMYnEv2I7Bt2PCLwKIBz79+dbQ0hG0l/UxBUfDxSY
         C0z98NZLg0YdndTkuZyuzjLHOAzmFSW7SH0vlKLTM9MPDDIb2VvTTpBuJJiEz892KzVp
         Ry0YuJA9u9OGKTTtolepXwPm32YQUIqlt1lZegvmOXd3f48Je3SeYvQVoXMHWT7ujpDV
         szTHPfBQ8tAKL5FITYiLA5EmQAfVUUyMDJRmBFG5q8SmgMBf4LbYABjWLxsNVi0GCDrY
         0bLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=log57cx8SdjIr5w2o2XwNSf2dPRv6imxY1LxmZJSaF0=;
        fh=k53Es9bdjfD5MfpRmi2KLCS/vhaCoBuItnnETf6vHPU=;
        b=VEvwbXWxizmoZBgca0czLZLnpkQiPKsIe/VeetOP1Ru2R9bjyJsCZXBygsjdZ/IzXN
         kGZBoEnORrO+DXzpTcLmuqU+tve6W23JIE4Nij8/9LPzdPBL7M+oLb9VPfEiMST0lvZJ
         hacY5t4HuhCgYVCs7CqbGsj68Zv3XtZ8QIN0IPb+QgNtHhcLhjAsyHmpTtVic9AyVEx3
         bbLBGJP0EGia9/AkjjpTDGRI4kt8kgwaU1CKEfSggWbtsg7+9gcbFmnRnH51883QuOvE
         UgY+lsb0B5wDecz3pG2gz6USVeYTX2lJiMS2DUXsryrFHHzepFotXkBXXKadrc7g5pF5
         Aukw==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1779139059; x=1779743859; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=log57cx8SdjIr5w2o2XwNSf2dPRv6imxY1LxmZJSaF0=;
        b=GmYDYyClAAxOMJXqHM9E224LeRaDRBBfK+/A0ZA6/zXKWLVPIlM6RdEN4Bv+w7GRm9
         VSBlDYRFrcaOi0/UriNl0awV6MRGfmrBXbwqidcTYuBibOua9VbnQ/R6Z46GPTBaqoSA
         +1CZcQSyo9HZ8kP3njAYX91oN97fSxJ3qtNounsCaSAAb6DZtfYgi7Uru/rr6dKLK47l
         qyRaTw6PlChsIgg2sczU7eIf9R34XrpRuTx5cnCPbk26MMixfhWvekGjge+2eRqN5XRc
         uWf6DBqOm1Nxw0FtPqp/AaKUFP4YdF8CCJGa3LE6OF0LhdRyI+iguFbQb8vB671VpkGC
         FH8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779139059; x=1779743859;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=log57cx8SdjIr5w2o2XwNSf2dPRv6imxY1LxmZJSaF0=;
        b=lpSfPsNYuUBRJyMVM5bJZqT8wiXojZPezKBioM8DAxFEP6Iqhslj+kTXRNXKaZvwbI
         cNEGRGbvDzA68stoXYtXxUXjUf3w6rzNICTZ1Ny0ibWRUdquKTqj7oD6QNW73Yhhx9Qc
         0yrEk7NiSIV8jjuDFEO/U559OVuzrBji77YvFyxaS8f9RglZvNi0i+NHDHMvnAnnUXub
         t3hQminwPpz23NY17LhAYPs4vaWcTPrFrkbDWAsv0Ls1ChUh6kILwJFSpQlIeuhezOfb
         0/K2dv3b+5IMUacW+Uy88OWoB5VYCFI+Nk7J/PU+3SG8prZzEnjtoXf9o+ADFK7/Qw2m
         zaGQ==
X-Forwarded-Encrypted: i=1; AFNElJ+ZN/BbO5zjdDQs01zh0xMFYbVAZ+OHgidXJuU3+sQ5EU5OL5FdK27vbfOC5fdISFNrlfzVWPbk5jSjWbUk@lists.linaro.org
X-Gm-Message-State: AOJu0YzmLqoNJgrZYLCw7uMkAKdhT9hCOQb5icbY8k43OrUn3qC+ziOJ
	zVXQZa6Tln5wAjSL8T9d1C7uCex6dN1w+gRvSuKanr++taUuO7osGqYb3RH854TCpZdF0xUrp2y
	9VSUOT3RnNI74gwnXPHDznptfnLNeCeWQLrn9uzaS
X-Gm-Gg: Acq92OEmsHfJA0ocfclK2SxuqFe2fijagiqvMHGTA79dfjXQR/mGBNbnSVa38l6R9oG
	r6yQoifq760lkZE7RQ9bCrpHvbUWilzDUDr6EyqqOyBZAvuwxQxSgwcjKekntPOSJxruTwg0a/i
	whJ2euryUf0pKubQTdxiNG9COo59A8btXBjQC6SLEzBQVdTUmb1yk7lk8gFtFT7RjnOKP6kAZKh
	JO7i9St0EAU4pk2LUEOozPbSiEmB9pdaajo11FM4PowaHCErr1OiBz3SGluThGj8I+bhA0TfyOQ
	4DaSkAmV8UCjq8Fshjiu1HOCs4+sDD2KzZJkENDD1gzurjNcWzeuYuzkaFE=
X-Received: by 2002:a05:600c:5888:b0:45f:2940:d194 with SMTP id
 5b1f17b1804b1-48ffa5a3865mr1584195e9.2.1779139058579; Mon, 18 May 2026
 14:17:38 -0700 (PDT)
MIME-Version: 1.0
References: <20260512-v2_20230123_tjmercier_google_com-v1-0-6326701c3691@redhat.com>
 <20260512-v2_20230123_tjmercier_google_com-v1-2-6326701c3691@redhat.com>
 <8ef38815-6ae9-4359-86d4-042554357639@amd.com> <CABdmKX2uwZ12kYJYPJGfWxuMBOJS=64b1GRj72tfB5D=NKM22w@mail.gmail.com>
 <CAGsJ_4zjrFJYQQsLThTGXR6g+2PXzeAhjyDpLHfDFqVViWvyBQ@mail.gmail.com> <CABdmKX0gqg309hcXcOHSj_yTg0h1zwDL34GDk8mX3wp4YoyfDg@mail.gmail.com>
In-Reply-To: <CABdmKX0gqg309hcXcOHSj_yTg0h1zwDL34GDk8mX3wp4YoyfDg@mail.gmail.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Mon, 18 May 2026 14:17:26 -0700
X-Gm-Features: AVHnY4KTHXYs5nrbWVXYvXQ9l6M2g--DIK3-AK3RR8R_cqbjNyBgiR1O8BbuYxI
Message-ID: <CABdmKX3wwgovwS-V8rVC3=+EZcTvPs_cttpQb1w6WemwLAVhsw@mail.gmail.com>
To: Barry Song <baohua@kernel.org>
X-Spamd-Bar: ----
Message-ID-Hash: AARRDUMWNK5NMXLF4KI3A53H3CJTTQN3
X-Message-ID-Hash: AARRDUMWNK5NMXLF4KI3A53H3CJTTQN3
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Albert Esteve <aesteve@redhat.com>, Tejun Heo <tj@kernel.org>, Johannes Weiner <hannes@cmpxchg.org>, =?UTF-8?Q?Michal_Koutn=C3=BD?= <mkoutny@suse.com>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, Michal Hocko <mhocko@kernel.org>, Roman Gushchin <roman.gushchin@linux.dev>, Shakeel Butt <shakeel.butt@linux.dev>, Muchun Song <muchun.song@linux.dev>, Andrew Morton <akpm@linux-foundation.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, Christian Brauner <brauner@kernel.org>, Paul Moore <paul@paul-moore.com>, James Morris <jmorris@namei.org>, "Serge E. Hallyn" <serge@hallyn.com>, Stephen Smalley <stephen.smalley.work@gmail.com>, Ondrej Mosnacek <omosnace@redhat.com>, Shuah Khan <shuah@kernel.org>, cgroups@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.or
 g, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org, linux-security-module@vger.kernel.org, selinux@vger.kernel.org, linux-kselftest@vger.kernel.org, mripard@kernel.org, echanude@redhat.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 2/5] dma-heap: charge dma-buf memory via explicit memcg
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AARRDUMWNK5NMXLF4KI3A53H3CJTTQN3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [5.09 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed),reject];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[google.com:s=20251104];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[36];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	GREYLIST(0.00)[pass,meta];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[amd.com,redhat.com,kernel.org,cmpxchg.org,suse.com,lwn.net,linuxfoundation.org,linaro.org,linux.dev,linux-foundation.org,collabora.com,arm.com,google.com,paul-moore.com,namei.org,hallyn.com,gmail.com,vger.kernel.org,vger.kernel.or,lists.freedesktop.org,lists.linaro.org,kvack.org];
	DKIM_TRACE(0.00)[google.com:-];
	FROM_NEQ_ENVFROM(0.00)[tjmercier@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,android.com:url,mail.gmail.com:mid,linaro.org:email]
X-Rspamd-Queue-Id: D082C573BB0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gTW9uLCBNYXkgMTgsIDIwMjYgYXQgMjoxMuKAr1BNIFQuSi4gTWVyY2llciA8dGptZXJjaWVy
QGdvb2dsZS5jb20+IHdyb3RlOg0KPg0KPiBPbiBTYXQsIE1heSAxNiwgMjAyNiBhdCAxOjQw4oCv
QU0gQmFycnkgU29uZyA8YmFvaHVhQGtlcm5lbC5vcmc+IHdyb3RlOg0KPiA+DQo+ID4gT24gV2Vk
LCBNYXkgMTMsIDIwMjYgYXQgMjo1NOKAr0FNIFQuSi4gTWVyY2llciA8dGptZXJjaWVyQGdvb2ds
ZS5jb20+IHdyb3RlOg0KPiA+ID4NCj4gPiA+IE9uIFR1ZSwgTWF5IDEyLCAyMDI2IGF0IDM6MTTi
gK9BTSBDaHJpc3RpYW4gS8O2bmlnDQo+ID4gPiA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPiB3
cm90ZToNCj4gPiA+ID4NCj4gPiA+ID4gT24gNS8xMi8yNiAxMToxMCwgQWxiZXJ0IEVzdGV2ZSB3
cm90ZToNCj4gPiA+ID4gPiBPbiBlbWJlZGRlZCBwbGF0Zm9ybXMgYSBjZW50cmFsIHByb2Nlc3Mg
b2Z0ZW4gYWxsb2NhdGVzIGRtYS1idWYNCj4gPiA+ID4gPiBtZW1vcnkgb24gYmVoYWxmIG9mIGNs
aWVudCBhcHBsaWNhdGlvbnMuIFdpdGhvdXQgYSB3YXkgdG8NCj4gPiA+ID4gPiBhdHRyaWJ1dGUg
dGhlIGNoYXJnZSB0byB0aGUgcmVxdWVzdGluZyBjbGllbnQncyBjZ3JvdXAsIHRoZQ0KPiA+ID4g
PiA+IGNvc3QgbGFuZHMgb24gdGhlIGFsbG9jYXRvciwgbWFraW5nIHBlci1jZ3JvdXAgbWVtb3J5
IGxpbWl0cw0KPiA+ID4gPiA+IGluZWZmZWN0aXZlIGZvciB0aGUgYWN0dWFsIGNvbnN1bWVycy4N
Cj4gPiA+ID4gPg0KPiA+ID4gPiA+IEFkZCBjaGFyZ2VfcGlkX2ZkIHRvIHN0cnVjdCBkbWFfaGVh
cF9hbGxvY2F0aW9uX2RhdGEuIFdoZW4gc2V0IHRvDQo+ID4gPiA+ID4gYSB2YWxpZCBwaWRmZCwg
RE1BX0hFQVBfSU9DVExfQUxMT0MgcmVzb2x2ZXMgdGhlIHRhcmdldCB0YXNrJ3MNCj4gPiA+ID4g
PiBtZW1jZyBhbmQgY2hhcmdlcyB0aGUgYnVmZmVyIHRoZXJlIHZpYSBtZW1fY2dyb3VwX2NoYXJn
ZV9kbWFidWYoKQ0KPiA+ID4gPiA+IGluc2lkZSBkbWFfaGVhcF9idWZmZXJfYWxsb2MoKS4gV2l0
aG91dCBjaGFyZ2VfcGlkX2ZkLCBhbmQgd2l0aA0KPiA+ID4gPiA+IHRoZSBtZW1fYWNjb3VudGlu
ZyBtb2R1bGUgcGFyYW1ldGVyIGVuYWJsZWQsIHRoZSBidWZmZXIgaXMgY2hhcmdlZA0KPiA+ID4g
PiA+IHRvIHRoZSBhbGxvY2F0b3IncyBvd24gY2dyb3VwLg0KPiA+ID4gPiA+DQo+ID4gPiA+ID4g
QWRkaXRpb25hbGx5LCBjb21taXQgM2MyMjdiZTkwNjU5ICgiZG1hLWJ1Zjogc3lzdGVtX2hlYXA6
IGFjY291bnQgZm9yDQo+ID4gPiA+ID4gc3lzdGVtIGhlYXAgYWxsb2NhdGlvbiBpbiBtZW1jZyIp
IGFkZHMgX19HRlBfQUNDT1VOVCB0byBzeXN0ZW0taGVhcA0KPiA+ID4gPiA+IHBhZ2UgYWxsb2Nh
dGlvbnMuIEtlZXBpbmcgX19HRlBfQUNDT1VOVCB3b3VsZCBjaGFyZ2UgdGhlIHNhbWUgcGFnZXMN
Cj4gPiA+ID4gPiB0d2ljZSAob25jZSB0byBrbWVtLCBvbmNlIHRvIE1FTUNHX0RNQUJVRiksIHRo
dXMgcmVtb3ZlIGl0IGFuZCByb3V0ZQ0KPiA+ID4gPiA+IGFsbCBhY2NvdW50aW5nIHRocm91Z2gg
YSBzaW5nbGUgTUVNQ0dfRE1BQlVGIHBhdGguDQo+ID4gPiA+ID4NCj4gPiA+ID4gPiBVc2FnZSBl
eGFtcGxlczoNCj4gPiA+ID4gPg0KPiA+ID4gPiA+ICAgMS4gQ2VudHJhbCBhbGxvY2F0b3IgY2hh
cmdpbmcgdG8gYSBjbGllbnQgYXQgYWxsb2NhdGlvbiB0aW1lLg0KPiA+ID4gPiA+ICAgICAgVGhl
IGFsbG9jYXRvciBrbm93cyB0aGUgY2xpZW50J3MgUElEIChlLmcuLCBmcm9tIGJpbmRlcidzDQo+
ID4gPiA+ID4gICAgICBzZW5kZXJfcGlkKSBhbmQgdXNlcyBwaWRmZCB0byBhdHRyaWJ1dGUgdGhl
IGNoYXJnZToNCj4gPiA+ID4gPg0KPiA+ID4gPiA+ICAgICAgICBwaWRfdCBjbGllbnRfcGlkID0g
dHhuLT5zZW5kZXJfcGlkOw0KPiA+ID4gPiA+ICAgICAgICBpbnQgcGlkZmQgPSBwaWRmZF9vcGVu
KGNsaWVudF9waWQsIDApOw0KPiA+ID4gPiA+DQo+ID4gPiA+ID4gICAgICAgIHN0cnVjdCBkbWFf
aGVhcF9hbGxvY2F0aW9uX2RhdGEgYWxsb2MgPSB7DQo+ID4gPiA+ID4gICAgICAgICAgICAubGVu
ICAgICAgICAgICAgID0gYnVmZmVyX3NpemUsDQo+ID4gPiA+ID4gICAgICAgICAgICAuZmRfZmxh
Z3MgICAgICAgID0gT19SRFdSIHwgT19DTE9FWEVDLA0KPiA+ID4gPiA+ICAgICAgICAgICAgLmNo
YXJnZV9waWRfZmQgICA9IHBpZGZkLA0KPiA+ID4gPiA+ICAgICAgICB9Ow0KPiA+ID4gPiA+ICAg
ICAgICBpb2N0bChoZWFwX2ZkLCBETUFfSEVBUF9JT0NUTF9BTExPQywgJmFsbG9jKTsNCj4gPiA+
ID4gPiAgICAgICAgY2xvc2UocGlkZmQpOw0KPiA+ID4gPiA+ICAgICAgICAvKiBhbGxvYy5mZCBp
cyBub3cgY2hhcmdlZCB0byBjbGllbnQncyBjZ3JvdXAgKi8NCj4gPiA+ID4gPg0KPiA+ID4gPiA+
ICAgMi4gRGVmYXVsdCBhbGxvY2F0aW9uIChubyBwaWRmZCwgbWVtX2FjY291bnRpbmc9MSkuDQo+
ID4gPiA+ID4gICAgICBXaGVuIGNoYXJnZV9waWRfZmQgaXMgbm90IHNldCBhbmQgdGhlIG1lbV9h
Y2NvdW50aW5nIG1vZHVsZQ0KPiA+ID4gPiA+ICAgICAgcGFyYW1ldGVyIGlzIGVuYWJsZWQsIHRo
ZSBidWZmZXIgaXMgY2hhcmdlZCB0byB0aGUgYWxsb2NhdG9yJ3MNCj4gPiA+ID4gPiAgICAgIG93
biBjZ3JvdXA6DQo+ID4gPiA+ID4NCj4gPiA+ID4gPiAgICAgICAgc3RydWN0IGRtYV9oZWFwX2Fs
bG9jYXRpb25fZGF0YSBhbGxvYyA9IHsNCj4gPiA+ID4gPiAgICAgICAgICAgIC5sZW4gICAgICA9
IGJ1ZmZlcl9zaXplLA0KPiA+ID4gPiA+ICAgICAgICAgICAgLmZkX2ZsYWdzID0gT19SRFdSIHwg
T19DTE9FWEVDLA0KPiA+ID4gPiA+ICAgICAgICB9Ow0KPiA+ID4gPiA+ICAgICAgICBpb2N0bCho
ZWFwX2ZkLCBETUFfSEVBUF9JT0NUTF9BTExPQywgJmFsbG9jKTsNCj4gPiA+ID4gPiAgICAgICAg
LyogY2hhcmdlZCB0byBjdXJyZW50IHByb2Nlc3MncyBjZ3JvdXAgKi8NCj4gPiA+ID4gPg0KPiA+
ID4gPiA+IEN1cnJlbnQgbGltaXRhdGlvbnM6DQo+ID4gPiA+ID4NCj4gPiA+ID4gPiAgLSBTaW5n
bGUtb3duZXIgbW9kZWw6IGEgZG1hLWJ1ZiBjYXJyaWVzIG9uZSBtZW1jZyBjaGFyZ2UgcmVnYXJk
bGVzcyBvZg0KPiA+ID4gPiA+ICAgIGhvdyBtYW55IHByb2Nlc3NlcyBzaGFyZSBpdC4gTWVhbnMg
b25seSB0aGUgZmlyc3Qgb3duZXIgKGFuZCBleHBvcnRlcikNCj4gPiA+ID4gPiAgICBvZiB0aGUg
c2hhcmVkIGJ1ZmZlciBiZWFycyB0aGUgY2hhcmdlLg0KPiA+ID4gPiA+ICAtIE9ubHkgbWVtY2cg
YWNjb3VudGluZyBzdXBwb3J0ZWQuIFdoaWxlIHRoaXMgbWFrZXMgc2Vuc2UgZm9yIHN5c3RlbQ0K
PiA+ID4gPiA+ICAgIGhlYXAgYnVmZmVycywgb3RoZXIgaGVhcHMgKGUuZy4sIENNQSBoZWFwcykg
d2lsbCByZXF1aXJlIHNlbGVjdGl2ZWx5DQo+ID4gPiA+ID4gICAgY2hhcmdpbmcgYWxzbyBmb3Ig
dGhlIGRtZW0gY29udHJvbGxlci4NCj4gPiA+ID4NCj4gPiA+ID4gV2VsbCB0aGF0IGRvZXNuJ3Qg
bG9va3Mgc29vIGJhZCwgaXQgYXQgbGVhc3Qgc2VlbXMgdG8gdGFja2xlIHRoZSBwcm9ibGVtIGF0
IGhhbmQgZm9yIEFuZHJvaWQgYW5kIHNvbWUgb2Ygb3RoZXIgZW1iZWRkZWQgdXNlIGNhc2VzLg0K
PiA+ID4NCj4gPiA+IFllYWggSSB0aGluayB0aGlzIG1pZ2h0IHdvcmsuIEkga25vdyBvZiAzIGNh
c2VzLCBhbmQgaXQgdHJpdmlhbGx5DQo+ID4gPiBzb2x2ZXMgdGhlIGZpcnN0IHR3by4gVGhlIHRo
aXJkIHJlcXVpcmVzIHNvbWUgd29yayBvbiBvdXIgZW5kIHRvDQo+ID4gPiBleHRlbmQgb3VyIHVz
ZXJzcGFjZSBpbnRlcmZhY2VzIHRvIGluY2x1ZGUgdGhlIHBpZGZkIGJ1dCBpdCBzZWVtcw0KPiA+
ID4gZG9hYmxlLiBJJ20gY2hlY2tpbmcgd2l0aCBvdXIgZ3JhcGhpY3MgZm9sa3MuDQo+ID4gPg0K
PiA+ID4gMSkgRGlyZWN0IGFsbG9jYXRpb24gZnJvbSB1c2VyIChlLmcuIGFwcCAtPiBhbGxvY2F0
aW9uIGlvY3RsIG9uDQo+ID4gPiAvZGV2L2RtYV9oZWFwL2ZvbykNCj4gPiA+IE5vIGNoYW5nZXMg
cmVxdWlyZWQgdG8gdXNlcnNwYWNlLiBtZW1fYWNjb3VudGluZz0xIGNoYXJnZXMgdGhlIGFwcC4N
Cj4gPiA+DQo+ID4gPiAyKSBTaW5nbGUgaG9wIHJlbW90ZSBhbGxvY2F0aW9uIChlLmcuIGFwcCAt
PiBBSGFyZHdhcmVCdWZmZXJfYWxsb2NhdGUNCj4gPiA+IC0+IGdyYWxsb2MpDQo+ID4gPiBncmFs
bG9jIGhhcyB0aGUgY2FsbGVyJ3MgcGlkIGFzIGRlc2NyaWJlZCBpbiB0aGUgY29tbWl0IG1lc3Nh
Z2UuIE9wZW4NCj4gPiA+IGEgcGlkZmQgYW5kIHBhc3MgaXQgaW4gdGhlIGRtYV9oZWFwX2FsbG9j
YXRpb25fZGF0YS4NCj4gPiA+DQo+ID4gPiAzKSBEb3VibGUgaG9wIHJlbW90ZSBhbGxvY2F0aW9u
IChlLmcuIGFwcCAtPiBkZXF1ZXVlQnVmZmVyIC0+DQo+ID4gPiBTdXJmYWNlRmxpbmdlciAtPiBn
cmFsbG9jKQ0KPiA+ID4gSW4gdGhpcyBjYXNlIGdyYWxsb2Mga25vd3MgU3VyZmFjZUZsaW5nZXIn
cyBwaWQsIGJ1dCBub3QgdGhlIGFwcCdzLiBTbw0KPiA+ID4gd2UgbmVlZCB0byBhZGQgdGhlIGFw
cCdzIHBpZGZkIHRvIHRoZSBTdXJmYWNlRmxpbmdlciAtPiBncmFsbG9jDQo+ID4gPiBpbnRlcmZh
Y2UsIG9yIHRyYW5zZmVyIHRoZSBtZW1jZyBjaGFyZ2UgZnJvbSBTdXJmYWNlRmxpbmdlciB0byB0
aGUgYXBwDQo+ID4gPiBhZnRlciB0aGUgYWxsb2NhdGlvbi4NCj4gPiA+IEl0J2QgYmUgbmljZSB0
byBhdm9pZCB0aGUgY2hhcmdlIHRyYW5zZmVyIG9wdGlvbiBlbnRpcmVseSwgYnV0IGlmIHdlDQo+
ID4gPiBuZWVkIGl0IHRoYXQgZG9lc24ndCBzZWVtIHNvIGJhZCBpbiB0aGlzIGNhc2UgYmVjYXVz
ZSBpdCdzIGEgYnVsaw0KPiA+ID4gY2hhcmdlIGZvciB0aGUgZW50aXJlIGRtYWJ1ZiByYXRoZXIg
dGhhbiBwZXItcGFnZS4gU28gdGhlIGV4cG9ydGVyDQo+ID4gPiBkb2Vzbid0IG5lZWQgdG8gZ2V0
IGludm9sdmVkICh3ZSB3b3VsZG4ndCBuZWVkIGEgbmV3IGRtYV9idWZfb3ApIGFuZA0KPiA+ID4g
d2Ugd291bGRuJ3QgaGF2ZSB0byB3b3JyeSBhYm91dCBsb29waW5nIGFuZCBsb2NraW5nIGZvciBl
YWNoIHBhZ2UuDQo+ID4gPg0KPiA+DQo+ID4gSGkgVC5KLiwNCj4gPg0KPiA+IFlvdXIgZGVzY3Jp
cHRpb24gb2YgdGhlIHRocmVlIGRpZmZlcmVudCBjYXNlcyBzb3VuZHMgdmVyeSBpbnRlcmVzdGlu
Zy4NCj4gPiBJdCBoZWxwcyBtZSB1bmRlcnN0YW5kIGhvdyBkaWZmaWN1bHQgaXQgY2FuIGJlIHRv
IGNvcnJlY3RseSBjaGFyZ2UNCj4gPiBkbWEtYnVmIGluIHRoZSBjdXJyZW50IHVzZXIgc2NlbmFy
aW9zLg0KPiA+DQo+ID4gSeKAmW0gd29uZGVyaW5nIHdoZXJlIEkgY2FuIGZpbmQgQW5kcm9pZCB1
c2Vyc3BhY2UgY29kZSB0aGF0IHRyYW5zZmVycw0KPiA+IHRoZSBQSUQgb2YgUlBDIGNhbGxlcnMu
IERvIHdlIGhhdmUgYW55IGV4aXN0aW5nIHNhbXBsZSBjb2RlIGluIEFuZHJvaWQNCj4gPiBmb3Ig
dGhpcz8NCj4NCj4gSGkgQmFycnksDQo+DQo+IEluIEphdmEgYW5kcm9pZC5vcy5CaW5kZXIuZ2V0
Q2FsbGluZ1BpZCgpIHdpbGwgcHJvdmlkZSBpdC4gSGVyZQ0KDQouLi4gbGV0IG1lIHRyeSBhZ2Fp
bg0KDQpIZXJlIGFyZSBzb21lIGV4YW1wbGVzIGZyb20gdGhlIGZyYW1ld29yayBjb2RlOg0KDQpo
dHRwczovL2NzLmFuZHJvaWQuY29tL3NlYXJjaD9xPWdldENhbGxpbmdQaWQlMjBmOkFjdGl2aXR5
TWFuYWdlciZzcT0mc3M9YW5kcm9pZCUyRnBsYXRmb3JtJTJGc3VwZXJwcm9qZWN0DQoNCkluIG5h
dGl2ZSBjb2RlIHdlIGhhdmUgQUlCaW5kZXJfZ2V0Q2FsbGluZ1BpZCBhbmQNCmFuZHJvaWQ6OklQ
Q1RocmVhZFN0YXRlOjpzZWxmKCktPmdldENhbGxpbmdQaWQoKSAob3INCmFuZHJvaWQ6OmhhcmR3
YXJlOjpJUENUaHJlYWRTdGF0ZTo6c2VsZigpLT5nZXRDYWxsaW5nUGlkKCkgZm9yIEhJREwpDQoN
Cmh0dHBzOi8vY3MuYW5kcm9pZC5jb20vc2VhcmNoP3E9Z2V0Q2FsbGluZ1BpZCUyMGw6Y3BwJTIw
LWY6cHJlYnVpbHQmc3M9YW5kcm9pZCUyRnBsYXRmb3JtJTJGc3VwZXJwcm9qZWN0DQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1h
aWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3Jp
YmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
