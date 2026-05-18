Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qMK3BTKjC2ooKQUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 01:39:30 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E77B575065
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 01:39:29 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7089540475
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 23:39:28 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	by lists.linaro.org (Postfix) with ESMTPS id 9455D4015B
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 23:39:15 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20251104 header.b=U9pHcLxH;
	arc=pass ("google.com:s=arc-20240605:i=1");
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.52 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-48d1c670255so475e9.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 16:39:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1779147554; cv=none;
        d=google.com; s=arc-20240605;
        b=hZFREUEhfK3FMXr9Qoysl7avvZHqRxVX6ANpM5/RCdV2G9q6IJmHPrKopPl3rTVWnF
         zojkWbydoA7ik+xsK7+UOMZUhOqCQtdbr1mJB49eHGuIeKoTzO/+m7IWngANHqTbTNup
         nGAwO6NplWxI6OXka9fpukIFfKyu+JOxuFBitYugBQnaL1DK9FWhlDK2rPrZbWy0S9zl
         +mleYdQGtqTHfXPq+ZSDP8r6mIOrl43qC+U4Ut+8XnCTaB7PlZ2kSAdhk//y5Tc/P+qw
         F5m1Rd/4kCDQ7Ea3o2sG0B921ulsAmqVf6XAk7Q6C92hZpTgfdmZxPGg2rw2/jdKTpT7
         7AUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Mcq8G65erSH6P+qgAE9z4eUjbK8B0zwTDtFgfrR4hAQ=;
        fh=mM3lT7nEtgNv2lgE4IBl55bynDc1K2sX91mo5rpAXNQ=;
        b=Q8/X10k6zsu+8TMUX/Yyxe3JGE1yNfys07r+pG/4a4r4fbaq8BfMcuvLpTzvCLkOSb
         w8d/ARYD8KvGXPAjcvrp9DlKKokFUNXwKxxsU4XLTvp12s5jPZePojCVkOZ1qZ5fJA0H
         7HyMTdjVw0+ExWIxYrcvRIbNragTsP96Ph6IzbkxLuxlLsxpzUuAtB9BwbtESh411w2V
         6i/1DKeN+YKSjlPNlcG/07gtyDzaAlAv4nqQxriL6hfQ23wNQLuJYVadennQsxDK/O+W
         go9UYsiGPTeSfZcUwD0iOM9HcnSwSDTBn4nM1Y9iV4cDjn3vwvgON2UnrpG1DyJEfK0b
         u5yA==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1779147554; x=1779752354; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Mcq8G65erSH6P+qgAE9z4eUjbK8B0zwTDtFgfrR4hAQ=;
        b=U9pHcLxHVZYiu9sKYmLXD0v+oAUsjJum8FtnLKMOR161jponIcXWQT0g1XgeAsILad
         9rrW3wGw092VuVB9qWhvisvs8A59nYIfEUhGpyRqVk1yARpB73GZ87UttwaDdCDn1zE/
         0Nh8R2MR8a4RMlI1ygcCMHX6AkfpW/ebMNo4cnofU3P2VpqtLumu/41kHWAY2/EIgCEM
         EqDOF9Q2JrRPi8oHeYtOUbZsOacU4k7NtLGckkXOkvZNC2iuvJzBkACpQXKJGNDVmYnD
         btu50bdj+UCcmObrz8ZCntePu8w897gcb0a3uZNQX8bFZ8xKlPEfGL1NqvVBCjXJ/ewE
         9ouA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779147554; x=1779752354;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Mcq8G65erSH6P+qgAE9z4eUjbK8B0zwTDtFgfrR4hAQ=;
        b=AKvhhIV/nSMALQg4vq6Myb/zBXECWH8hvrd2dKu73vPQO6qWpvBCpOEnDYkRKTeWpa
         MLPs8x0Y/rx0ZZCIMwMkThGtjUKYQNBV+W5r2HZ9Re+8WswHvEC9ZtcGYk+b/S6CC8Qp
         eXIW/0qnRuO8nL2vJleePwmGZCpGML9ncqayX8DUUuLTRH4krWOP7aeoZgksBIX4oSlp
         IYl8fMf95/P95xy6yy2899wI3OECAje/I1lWB97OvHeKS0YZRDftyb57bwH+LSH3Tu71
         4TNMJUq/1pW9sBQRXPmhJdoG9Sy58ocIzokaRsL5mj5sUxY3KsFfF/9V3bZQQ3+o4Cqp
         YxEQ==
X-Forwarded-Encrypted: i=1; AFNElJ95JfuzwB3L+gHg/2DL+EpqJhZe3laEh25qWM9VS7WwWy312j4TtdWu5LGDJKj8BWiFY2s+mgT4BZUsc5Jp@lists.linaro.org
X-Gm-Message-State: AOJu0YzeRj/plGxKrjIChmMa3bV03gJiS2nr+KE6W9P5xbsJW680Noee
	SPxneaf9GC22TMXDgyJVlESawf8VKTt2QYX13tsN6gUMc0sdaCkxqL8DSYbNMsId0X7fZ2Ogy+8
	m40fJS+mCzWjYCA5DbzUBc53Wc0ALhkyWDqAGp5eh
X-Gm-Gg: Acq92OGk1XZf8tcm3KMir3Ji4pW3pSmrpTo5wyVHCThJn7TT+vosHoPhs+6VqmCcQxw
	xKyieXgtxb4KwCS96kwjS7DejwSbwvp7wDEXrIAYquAcJ8kLD8SFyH7ZuFKLpMUvyBbnSgGia4o
	dSlrrQE1u5ToWg85B4VElnh/AEo343usElPsrq9UMdB8bOCXVOcfcf4lLKB4DHfakS5J6exbwS0
	7rwGJtoMAQ9q27z/OviliQrZapTTGeEDmzn0hjf3hj+qn4dKkqhkmSQNZdFMBLXeK6YWHal1IdZ
	YujM0cXMCWI45PuP9emBDH/CJfO+0OTKDcFc0NXMsplfxr2N
X-Received: by 2002:a05:600c:83c4:b0:48a:56fa:36dd with SMTP id
 5b1f17b1804b1-48ffd85790amr3271995e9.11.1779147554173; Mon, 18 May 2026
 16:39:14 -0700 (PDT)
MIME-Version: 1.0
References: <20260512-v2_20230123_tjmercier_google_com-v1-0-6326701c3691@redhat.com>
 <20260512-v2_20230123_tjmercier_google_com-v1-2-6326701c3691@redhat.com>
 <20260515-hinschauen-effizient-9e3a05a94f2e@brauner> <CABdmKX0d6Zsg+_TxXjB80UZR23ZvXzxYoWzORgwmx=ZiuE+Nzw@mail.gmail.com>
 <208fb820-d8eb-4832-a343-ef8b360e8120@amd.com> <CADSE00Lh95ygoXGKJGsYvQGEsFV8sVmwEC3uvh8M6r3ERzaJwg@mail.gmail.com>
 <88efe10a-8b93-4a81-8279-4a5559d0f17c@amd.com>
In-Reply-To: <88efe10a-8b93-4a81-8279-4a5559d0f17c@amd.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Mon, 18 May 2026 16:39:02 -0700
X-Gm-Features: AVHnY4K5WzHxjnmBKK1J4Ij9G3s1JmujGOC18rtfp3AXYH6mFeA4fkV1W-efX6I
Message-ID: <CABdmKX3yZubjDKbVqwrjHAiKyj_ioHzOoxd0wzFbJK=PAGOqcQ@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Spamd-Bar: ----
Message-ID-Hash: YZFXWBTVL5MWYDVNPFUOJGHQAASXKSDA
X-Message-ID-Hash: YZFXWBTVL5MWYDVNPFUOJGHQAASXKSDA
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Albert Esteve <aesteve@redhat.com>, Christian Brauner <brauner@kernel.org>, Tejun Heo <tj@kernel.org>, Johannes Weiner <hannes@cmpxchg.org>, =?UTF-8?Q?Michal_Koutn=C3=BD?= <mkoutny@suse.com>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, Michal Hocko <mhocko@kernel.org>, Roman Gushchin <roman.gushchin@linux.dev>, Shakeel Butt <shakeel.butt@linux.dev>, Muchun Song <muchun.song@linux.dev>, Andrew Morton <akpm@linux-foundation.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, Paul Moore <paul@paul-moore.com>, James Morris <jmorris@namei.org>, "Serge E. Hallyn" <serge@hallyn.com>, Stephen Smalley <stephen.smalley.work@gmail.com>, Ondrej Mosnacek <omosnace@redhat.com>, Shuah Khan <shuah@kernel.org>, cgroups@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.o
 rg, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org, linux-security-module@vger.kernel.org, selinux@vger.kernel.org, linux-kselftest@vger.kernel.org, mripard@kernel.org, echanude@redhat.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 2/5] dma-heap: charge dma-buf memory via explicit memcg
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YZFXWBTVL5MWYDVNPFUOJGHQAASXKSDA/>
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
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[35];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	GREYLIST(0.00)[pass,meta];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[redhat.com,kernel.org,cmpxchg.org,suse.com,lwn.net,linuxfoundation.org,linaro.org,linux.dev,linux-foundation.org,collabora.com,arm.com,google.com,paul-moore.com,namei.org,hallyn.com,gmail.com,vger.kernel.org,lists.freedesktop.o,lists.linaro.org,kvack.org];
	DKIM_TRACE(0.00)[google.com:-];
	FROM_NEQ_ENVFROM(0.00)[tjmercier@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,mail.gmail.com:mid,linaro.org:email,lists.linaro.org:rdns,lists.linaro.org:helo]
X-Rspamd-Queue-Id: 7E77B575065
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gTW9uLCBNYXkgMTgsIDIwMjYgYXQgNzowN+KAr0FNIENocmlzdGlhbiBLw7ZuaWcNCjxjaHJp
c3RpYW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOg0KPg0KPiBPbiA1LzE4LzI2IDE0OjUwLCBBbGJl
cnQgRXN0ZXZlIHdyb3RlOg0KPiA+IE9uIE1vbiwgTWF5IDE4LCAyMDI2IGF0IDk6MjDigK9BTSBD
aHJpc3RpYW4gS8O2bmlnDQo+ID4gPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4gd3JvdGU6DQo+
ID4+DQo+ID4+IE9uIDUvMTUvMjYgMTk6MDYsIFQuSi4gTWVyY2llciB3cm90ZToNCj4gPj4+IE9u
IEZyaSwgTWF5IDE1LCAyMDI2IGF0IDY6NTPigK9BTSBDaHJpc3RpYW4gQnJhdW5lciA8YnJhdW5l
ckBrZXJuZWwub3JnPiB3cm90ZToNCj4gPj4+Pg0KPiA+Pj4+IE9uIFR1ZSwgTWF5IDEyLCAyMDI2
IGF0IDExOjEwOjQ0QU0gKzAyMDAsIEFsYmVydCBFc3RldmUgd3JvdGU6DQo+ID4+Pj4+IE9uIGVt
YmVkZGVkIHBsYXRmb3JtcyBhIGNlbnRyYWwgcHJvY2VzcyBvZnRlbiBhbGxvY2F0ZXMgZG1hLWJ1
Zg0KPiA+Pj4+PiBtZW1vcnkgb24gYmVoYWxmIG9mIGNsaWVudCBhcHBsaWNhdGlvbnMuIFdpdGhv
dXQgYSB3YXkgdG8NCj4gPj4+Pj4gYXR0cmlidXRlIHRoZSBjaGFyZ2UgdG8gdGhlIHJlcXVlc3Rp
bmcgY2xpZW50J3MgY2dyb3VwLCB0aGUNCj4gPj4+Pj4gY29zdCBsYW5kcyBvbiB0aGUgYWxsb2Nh
dG9yLCBtYWtpbmcgcGVyLWNncm91cCBtZW1vcnkgbGltaXRzDQo+ID4+Pj4+IGluZWZmZWN0aXZl
IGZvciB0aGUgYWN0dWFsIGNvbnN1bWVycy4NCj4gPj4+Pj4NCj4gPj4+Pj4gQWRkIGNoYXJnZV9w
aWRfZmQgdG8gc3RydWN0IGRtYV9oZWFwX2FsbG9jYXRpb25fZGF0YS4gV2hlbiBzZXQgdG8NCj4g
Pj4+Pg0KPiA+Pj4+IFBsZWFzZSBiZSBhd2FyZSB0aGF0IHBpZGZkcyBjb21lIGluIHR3byBmbGF2
b3JzOg0KPiA+Pj4+DQo+ID4+Pj4gdGhyZWFkLWdyb3VwIHBpZGZkcyBhbmQgdGhyZWFkLXNwZWNp
ZmljIHBpZGZkcy4gTWFrZSBzdXJlIHRoYXQgeW91ciBBUEkNCj4gPj4+PiBkb2Vzbid0IGltcGxp
Y2l0bHkgZGVwZW5kIG9uIHRoaXMgZGlzdGluY3Rpb24gbm90IGV4aXN0aW5nLg0KPiA+Pj4NCj4g
Pj4+IEhpIENocmlzdGlhbiwNCj4gPj4+DQo+ID4+PiBNZW1jZyBpcyBub3QgYSBjb250cm9sbGVy
IHRoYXQgc3VwcG9ydHMgInRocmVhZCBtb2RlIiBzbyBhbGwgdGhyZWFkcw0KPiA+Pj4gaW4gYSBn
cm91cCBzaG91bGQgYmVsb25nIHRvIHRoZSBzYW1lIG1lbWNnLg0KPiA+Pg0KPiA+PiBCVFc6IEV4
YWN0bHkgdGhhdCBpcyB0aGUgcmVxdWlyZW1lbnQgYXV0b21vdGl2ZSBoYXMgd2l0aCB0aGVpciBu
YXRpdmUgY29udGV4dCB1c2UgY2FzZS4NCj4gPj4NCj4gPj4gVGhlIHVzZSBjYXNlIGlzIHRoYXQg
eW91IGhhdmUgYSBkZWFtb24gd2hpY2ggaGFzIG11bHRpcGxlIHRocmVhZHMgd2VyZSBlYWNoIG9u
ZSBpcyBhY3Rpbmcgb24gYmVoYWx2ZSBvZiBzb21lIG90aGVyIHByb2Nlc3MuDQo+ID4+DQo+ID4+
IEF0IHRoZSBtb21lbnQgd2UgYmFzaWNhbGx5IHNheSB0aGV5IGFyZSBzaW1wbHkgbm90IHVzaW5n
IGNncm91cHMgZm9yIHRoYXQgdXNlIGNhc2UsIGJ1dCBpdCB3b3VsZCBiZSByZWFsbHkgbmljZSBp
ZiB3ZSBjb3VsZCBoYW5kbGUgdGhhdCBhcyB3ZWxsLg0KPiA+Pg0KPiA+PiBTdW1tYXJpemluZyB0
aGUgcmVxdWlyZW1lbnQgb2YgdGhhdCB1c2UgY2FzZTogWW91IG5lZWQgYSBkaWZmZXJlbnQgY2dy
b3VwIGZvciBlYWNoIHRocmVhZCBvZiBhIHByb2Nlc3MuDQo+ID4NCj4gPiBIaSBDaHJpc3RpYW4s
DQo+ID4NCj4gPiBUaGFua3MgZm9yIHNoYXJpbmcgdGhpcyBhdHVvbW90aXZlIHVzZWNhc2UuIElm
IEkgdW5kZXJzdGFuZCBjb3JyZWN0bHksDQo+ID4gdGhlIGFjdHVhbCByZXF1aXJlbWVudCBpcyBh
dHRyaWJ1dGluZyBkbWEtYnVmIGNoYXJnZXMgdG8gdGhlIHJpZ2h0DQo+ID4gY2xpZW50LCBub3Qg
cHV0dGluZyBlYWNoIGRhZW1vbiB0aHJlYWQgaW4gYSBkaWZmZXJlbnQgY2dyb3VwPw0KPg0KPiBO
b3BlLCBleGFjdGx5IHRoYXQncyB0aGUgZGlmZmVyZW5jZS4NCj4NCj4gVGhlIHRocmVhZCBhY3Rz
IGFzIGEgZmlsdGVyaW5nIGFnZW50IGZvciBib3RoIG1lbW9yeSBhbGxvY2F0aW9uIGFuZCBjb21t
YW5kIHN1Ym1pc3Npb24gZm9yIHNvbWVib2R5IGVsc2UsIHRoZSBwcm9jZXNzIG9uIHdoaWNoIGJl
aGFsdmUgdGhlIGRhZW1vbiBkb2VzIHRoaW5ncyBjYW4gZXZlbiBiZSBpbiBhIGNsaWVudCBWTSwg
Y29tcGxldGVseSByZW1vdGUgb3ZlciBzb21lIG5ldHdvcmsgb3IgZXZlbiBzb21ldGhpbmcgbGlr
ZSBhIG1pY3JvY29udHJvbGxlci4NCj4NCj4gRXZlcnl0aGluZyB0aGUgdGhyZWFkIGRvZXMgcmVn
YXJkaW5nIENQVSB0aW1lLCBHUFUgZHJpdmVyIG1lbW9yeSBhbGxvY2F0aW9uIGFzIHdlbGwgYXMg
cmVzb3VyY2VzIGxpa2UgR1BVIHByb2Nlc3NpbmcgYW5kIEkvTyB0aW1lIGV0Yy4uIG5lZWRzIHRv
IGJlIGFjY291bnRlZCB0byBvbmUgY2xpZW50IHdoaWNoIGNhbiBiZSBkaWZmZXJlbnQgZm9yIGVh
Y2ggdGhyZWFkIG9mIHRoZSBwcm9jZXNzLg0KPg0KPiBUaGUgb25seSB0aGluZyB3aGljaCBpcyBz
aGFyZWQgd2l0aCB0aGUgbWFpbiBwcm9jZXNzIHRocmVhZCBpcyBDUFUgbWVtb3J5IHJlc291cmNl
cywgZS5nLiBtYWxsb2MoKSBiZWNhdXNlIHRoYXQgaXMgYmFzaWNhbGx5IGp1c3QgbmVlZGVkIGZv
ciBob3VzZWtlZXBpbmcgYW5kIHByZXR0eSBtdWNoIGlycmVsZXZhbnQgZm9yIHRoaXMga2luZCBv
ZiB1c2UgY2FzZS4NCj4NCj4gVGhlIHByb2JsZW0gaXMgbm93IHlvdSBjYW4ndCBkbyB0aGF0IHdp
dGggY2dyb3VwcyBhdCB0aGUgbW9tZW50IGJ1dCB1bmZvcnR1bmF0ZWx5IG9ubHkgdGhlIGtlcm5l
bCBoYXMgdGhlIGluZm9ybWF0aW9uIHlvdSBuZWVkIHRvIGtub3cgdG8gZG8gdGhpcy4NCj4NCj4g
U28gd2hhdCB5b3UgZW5kIHVwIHdpdGggaXMgdG8gZGVmaW5lIHRvbnMgb2YgaW50ZXJmYWNlcyBq
dXN0IHRvIGdldCB0aGUgbmVjZXNzYXJ5IGluZm9ybWF0aW9uIGZyb20gdGhlIGtlcm5lbCBpbnRv
IHVzZXJzcGFjZSBhbmQgdGhlbiBlc3NlbnRpYWxseSBkdXBsaWNhdGUgdGhlIHNhbWUgaW5mcmFz
dHJ1Y3R1cmUgY2dyb3VwIHByb3ZpZGVzIGluIHRoZSBrZXJuZWwgaW4gdXNlcnNwYWNlIGFnYWlu
Lg0KPg0KPiA+IElmIHNvLA0KPiA+IHRoZSBgY2hhcmdlX3BpZF9mZGAgYXBwcm9hY2ggYWNoaWV2
ZXMgdGhpcyBkaXJlY3RseSBieSBwYXNzaW5nIHRoZQ0KPiA+IGNsaWVudCdzIGBwaWRfZmRgLCB3
aXRob3V0IG5lZWRpbmcgdG8gYWRkIHBlci10aHJlYWQgY2dyb3VwDQo+ID4gaW5mcmFzdHJ1Y3R1
cmUuDQo+DQo+IFdlbGwgaXQncyBhbHJlYWR5IGEgbWFzc2l2ZSBpbXByb3ZlbXQsIHdlIGNvdWxk
IGJhc2ljYWxseSBzdG9wIGRvaW5nIHRoZSB3aG9sZSBkdXBsaWNhdGlvbiBwYXJ0IGZvciB0aGUg
R1BVIGRyaXZlciBzdGFjayBhbmQganVzdCB1c2UgY2dyb3VwcyBmb3IgdGhpcyBwYXJ0Lg0KPg0K
PiBEb2luZyB0aGF0IGF1dG9tYXRpY2FsbHkgZm9yIENQVSBhbmQgSS9PIHRpbWUgd291bGQganVz
dCBiZSBuaWNlIHRvIGhhdmUgYWRkaXRpb25hbGx5Lg0KPg0KPiBSZWdhcmRzLA0KPiBDaHJpc3Rp
YW4uDQoNCkhvcGVmdWxseSBJJ20gZm9sbG93aW5nIGNvcnJlY3RseSBoZXJlLi4uLiBTbyB5b3Ug
YXJlIGR1cGxpY2F0aW5nIHRoZQ0KR1BVIGRyaXZlciBzdGFjayB0byBhY2hpZXZlIHJlbW90ZSBh
Y2NvdW50aW5nIG9uIGEgcGVyLXRocmVhZCBiYXNpcz8NCkRvZXMgdGhpcyBtZWFuIGZvciBHUFUg
YWxsb2NhdGlvbnMgeW91IGN1cnJlbnRseSBoYXZlIHNvbWUgR0ZQX0FDQ09VTlQNCm1hZ2ljIGlu
IHlvdXIgZHJpdmVyIHRvIGF0dHJpYnV0ZSBHUFUgbWVtb3J5IHRvIHRoZSBjb3JyZWN0IHJlbW90
ZQ0KY2xpZW50PyBTbyB0aGlzIHNlcmllcyB3b3VsZCBjbG9zZSB0aGUgZ2FwIGZvciBkbWEtYnVm
IGFsbG9jYXRpb25zLA0KYnV0IHdoYXQgYWJvdXQgcHJpdmF0ZSBHUFUgZHJpdmVyIG1lbW9yeSBh
bGxvY2F0ZWQgb24gYmVoYWxmIG9mIGENCmNsaWVudD8NCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWls
IHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
