Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id VfdbE7k+imktIwAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 09 Feb 2026 21:08:25 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FFE0114554
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 09 Feb 2026 21:08:24 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0A6183F9B3
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  9 Feb 2026 20:08:23 +0000 (UTC)
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	by lists.linaro.org (Postfix) with ESMTPS id 00B3F3F773
	for <linaro-mm-sig@lists.linaro.org>; Mon,  9 Feb 2026 20:08:16 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=D6lyvf0i;
	spf=pass (lists.linaro.org: domain of jstultz@google.com designates 209.85.218.46 as permitted sender) smtp.mailfrom=jstultz@google.com;
	arc=pass ("google.com:s=arc-20240605:i=1");
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-b872f1c31f1so10943066b.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 09 Feb 2026 12:08:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770667696; cv=none;
        d=google.com; s=arc-20240605;
        b=ApZz3YugBAx3XA2tBJ5eQwcaan9I08hdSp7ZIi4FUXeOcVQ6z4hAOGbFNn8naE7QfD
         bn1ODYJ09mqp3ViL/95LBEbt3id+RHWRmT2MqEYCNy54CBL/lU0ZtLcvwK2gbd1hs8+v
         okL5pgKdeLPNR//lkuR9AXjbD1CXuYyuy9VcEd9Xpm8g6/EDPgE9rY0rtX1FBYTGnQQ2
         muyII9a1fjkvPRpGYju0Rn1jpMydxrNWYctMhEXfy0LDfRLhpmQNFcGNhkxzjK7KVCfS
         ag1aMwASW8UEFWuSWhbIWzsIFKlRu5eziOMe459e92or6570EL/j5yp1nnkjCvL63euR
         pLng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=/ogWTbSZ6gUFcHF4DB6Cif+r0lW3KkX6R4Nx10iOT0E=;
        fh=rYEVxFQH1etUhQTGZAih5yj7ww2p/3G+xhcdhXQtiIk=;
        b=dDU9nz+ENuzS6o3tUHlMHKmq68dZMdmuJ8+nChIfw3sIOMjo7OuDy5QTHsqKS71Bn0
         ynuZOSxkq8zzW33I1G2s1YnJQLKFi3UzUer7c7U5KFGA2fhMsyp9G3v+PmUjKjpBE7I+
         Ah5JBK7VCus+Meis+8fZSTwHwxdO9LFTdRePboQ9/ZWDwm2fAQS8mAiXk7HvwJGCveha
         f4P4oKrJ7MpbGZkLoKq6qQI/M+N8dOb0lXKz+o9uR6Qzpi72aU6T9rRjotrohVtYJuR9
         AUtm21f1eGf54Dxlb1QDxHsyl46PTLkITsVH1hhX6srwh4RJIeMJ3sS6e0JCfaOy25JM
         zQig==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1770667696; x=1771272496; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/ogWTbSZ6gUFcHF4DB6Cif+r0lW3KkX6R4Nx10iOT0E=;
        b=D6lyvf0ig4Au3ePQnQ8Pnt8gTWvqLbmqxSmBabMDKwJyV/j6nEoCUnnQTXzE136irI
         SdAKxn5smPlGhftZLOl1xHmx/kwG98dIivpJTsw3sjngaqnudKUNhyO1xFE3I4SsxI8z
         WEx2Th4zKKpOcTT8Z9g/It7hvk7NUl0lN8kgEGiLGrU3+AgSc4PbdZqHHaMi+3HWWUdo
         XCeVmb6kNQbs0/N6BUFYzWWc+auXB0q5JVzHsGlTMD5gjoAffrDeza+RodVoI7KROHEc
         n1b10czUdEeCO/Z+Llc1uGu6TNsuwC0vl9/ADoibbhrBg4EeYg+QQ8J77dXYPNkxIc2p
         lxnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770667696; x=1771272496;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=/ogWTbSZ6gUFcHF4DB6Cif+r0lW3KkX6R4Nx10iOT0E=;
        b=JdQjTaPrMeyHu3Qns3xoMjZHpyDvXmypkta1vyXOcRAZP8nOw5X24GVoQRfZuT6bQm
         +f+eAlm9A6Fc99r4xZ1Trir43RheQnyoxysg6Lx0/sHUtlSKdNAuFospUhPr+6TMnVpF
         a3bnBXuMR8f4mJFujIgs1STR3CrgluS7GsXV9onlMsvihfdr6aMlNsKwvdSJOxbckSFN
         j/SbBPopgAUp7eLjkTh0kZP4mJ+Df7O9zcT4DXyNEalMkbhhFLaWO0n/3c/fLNM+JLxn
         B4GnkqImuu2rali/vsLzr/3cCklgd0M1tLFQX5FoGK6kfaV/9NSl6Xsc4GjFdUDq3E8Z
         uiUQ==
X-Forwarded-Encrypted: i=1; AJvYcCVplRwnW2OhBiFCG/BmmksnQvev2xTkpaE+/9veh1mB2AqPmJ1wvmcHRjmSvky/vdZgFv0qcsNv/aL55r81@lists.linaro.org
X-Gm-Message-State: AOJu0YzwauzJIO/887LmsD3AAaTiD3icFr7VEHZS7LSetaEjWp0A75T1
	PDAW1Xcm7wEdLt5GSUWaN5cQSVqnmQ7N2yLeLKJZ2ia88FgHpOOzCMGC0r3L/NW2QYKB0SE/PNb
	8sBxmQIlou17j/TXJTGa5vy9FJCc7mccEgz/195g=
X-Gm-Gg: AZuq6aJc/ks9q8LQwmfu9bfxb/dvXZs7LOLTd1OWWL/vhtW1yafFvPQkjcrdI1eHxtL
	AMqYmi8/bEi9XGSUxDJH5UYuwpM7mv/UpSGHHe/TaCaaFmgoQmC2qTZCtr99Ri5iubVzY0fw4he
	/dCjF0DX+ezoFAL+z1/GCbkjko6jshzarq0NpbyggSBV6wEemeA2+YHDXJ3tUJldqaNKZ5ToYVs
	OKtoIEJQcxQan9Laj9hVNLbqpmES/Bv429R1mABV41QGigCsiFmvnlAE2+fJ/sPPo2rnr0kbota
	VsHzGlrIMjRg9pHaCa8=
X-Received: by 2002:a17:907:6d0f:b0:b74:984c:a3de with SMTP id
 a640c23a62f3a-b8edf25a954mr696952366b.28.1770667695453; Mon, 09 Feb 2026
 12:08:15 -0800 (PST)
MIME-Version: 1.0
References: <20260209153809.250835-1-jiri@resnulli.us> <20260209153809.250835-5-jiri@resnulli.us>
In-Reply-To: <20260209153809.250835-5-jiri@resnulli.us>
From: John Stultz <jstultz@google.com>
Date: Mon, 9 Feb 2026 12:08:03 -0800
X-Gm-Features: AZwV_QgqaltPSA0q99dWV0j2auNF_GQoTvkX0OemEzMtzBNfhVP0pPFcsDiXkzY
Message-ID: <CANDhNCoHEZsNRmU+3z5AbeAy05H7PTtUdTq1apNd5k0f9hWW8A@mail.gmail.com>
To: Jiri Pirko <jiri@resnulli.us>
X-Spamd-Bar: -----
Message-ID-Hash: 2XO5EIWXWE6NIOKYONUKL25SH4KZHNH4
X-Message-ID-Hash: 2XO5EIWXWE6NIOKYONUKL25SH4KZHNH4
X-MailFrom: jstultz@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, jgg@ziepe.ca, leon@kernel.org, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, aneesh.kumar@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 4/5] dma-buf: heaps: allow heap to specify valid heap flags
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2XO5EIWXWE6NIOKYONUKL25SH4KZHNH4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[google.com:s=20230601];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[24];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[44.210.186.118:from];
	DKIM_TRACE(0.00)[google.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jstultz@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[209.85.218.46:received];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,nvidia.com:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 6FFE0114554
X-Rspamd-Action: no action

T24gTW9uLCBGZWIgOSwgMjAyNiBhdCA3OjM44oCvQU0gSmlyaSBQaXJrbyA8amlyaUByZXNudWxs
aS51cz4gd3JvdGU6DQo+DQo+IEZyb206IEppcmkgUGlya28gPGppcmlAbnZpZGlhLmNvbT4NCj4N
Cj4gQ3VycmVudGx5IHRoZSBmbGFncywgd2hpY2ggYXJlIHVudXNlZCwgYXJlIHZhbGlkYXRlZCBm
b3IgYWxsIGhlYXBzLg0KPiBTaW5jZSB0aGUgZm9sbG93LXVwIHBhdGNoIGludHJvZHVjZXMgYSBm
bGFnIHZhbGlkIGZvciBvbmx5IG9uZSBvZiB0aGUNCj4gaGVhcHMsIGFsbG93IHRvIHNwZWNpZnkg
dGhlIHZhbGlkIGZsYWdzIHBlci1oZWFwLg0KDQpJJ20gbm90IHJlYWxseSBpbiB0aGlzIHNwYWNl
IGFueW1vcmUsIHNvIHRha2UgbXkgZmVlZGJhY2sgd2l0aCBhIGdyYWluIG9mIHNhbHQuDQoNCldo
aWxlIHRoZSBoZWFwIGFsbG9jYXRlIGZsYWdzIGFyZ3VtZW50IGlzIHVudXNlZCwgaXQgd2FzIGlu
dGVuZGVkIHRvDQpiZSB1c2VkIGZvciBnZW5lcmljIGFsbG9jYXRpb24gZmxhZ3MgdGhhdCB3b3Vs
ZCBhcHBseSB0byBhbGwgb3IgYXQNCmxlYXN0IGEgd2lkZSBtYWpvcml0eSBvZiBoZWFwcy4NCg0K
SXQgd2FzIGRlZmluaXRlbHkgbm90IGFkZGVkIHRvIGFsbG93IGZvciBwZXItaGVhcCBvciBoZWFw
IHNwZWNpZmljDQpmbGFncyAoYXMgdGhpcyBwYXRjaCB0cmllcyB0byB1dGlsaXplIGl0KS4gVGhh
dCB3YXMgdGhlIG1lc3Mgd2UgaGFkDQp3aXRoIElPTiBkcml2ZXIgdGhhdCB3ZSB3ZXJlIHRyeWlu
ZyB0byBhdm9pZC4NCg0KVGhlIGludGVudCBvZiBkbWEtYnVmIGhlYXBzIGlzIHRvIHRyeSB0byBh
YnN0cmFjdCBhbGwgdGhlIGRpZmZlcmVudA0KZGV2aWNlIG1lbW9yeSBjb25zdHJhaW50cyBzbyB0
aGVyZSBvbmx5IG5lZWRzIHRvIGJlIGEgW3VzYWdlXSAtPg0KW2hlYXBdIG1hcHBpbmcsIGFuZCBv
dGhlcndpc2UgdXNlcmxhbmQgY2FuIGJlIGdlbmVyYWxpemVkIHNvIHRoYXQgaXQNCmRvZXNuJ3Qg
bmVlZCB0byBiZSByZS13cml0dGVuIHRvIHdvcmsgd2l0aCBkaWZmZXJlbnQgZGV2aWNlcy9tZW1v
cnkNCnR5cGVzLiAgQWRkaW5nIGhlYXAtc3BlY2lmaWMgYWxsb2NhdGlvbiBmbGFncyBwcmV2ZW50
cyB0aGF0DQpnZW5lcmFsaXphdGlvbi4NCg0KU28gaW5zdGVhZCBvZiBhZGRpbmcgaGVhcCBzcGVj
aWZpYyBmbGFncywgdGhlIGdlbmVyYWwgYWR2aWNlIGhhcyBiZWVuDQp0byBhZGQgYSBzZXBhcmF0
ZSBoZWFwIG5hbWUgZm9yIHRoZSBmbGFnIHByb3BlcnR5Lg0KDQpOb3csIHRoZXJlIGhhcyBiZWVu
IG1hbnkgZGlzY3Vzc2lvbnMgYXJvdW5kICJwcm90ZWN0ZWQgYnVmZmVycyIgKHdoaWNoDQpkb2Vz
bid0IHNlZW0gdG8gbWFwIGV4YWN0bHkgdG8gdGhpcyBjb25maWRlbnRhbCBjb21wdXRpbmcgcHJp
bWl0aXZlLA0KYnV0IHNvdW5kcyBsaWtlIGl0IG1pZ2h0IGJlIHJlbGF0ZWQpICwgd2hpY2ggaGF2
ZSBib3VuY2VkIGJldHdlZW4NCmJlaW5nIGEgYWxsb2NhdGlvbiBmbGFnIG9yIGEgZGV2aWNlIHNw
ZWNpZmljIGhlYXAgd2l0aG91dCBtdWNoDQpyZXNvbHV0aW9uLiBJIGFwcHJlY2lhdGUgaW4gdGhp
cyBwYXRjaCBzZWlyZXMgeW91J3ZlIHB1c2hlZCB5b3VyDQpjb25jZXB0IGRvd24gaW50byBhIERN
QV9BVFRSXywgYXMgSSBkbyBmZWVsIHRoZSBrZXJuZWwgc2hvdWxkIGhhdmUgYQ0KZGVlcGVyIHNl
bnNlIG9mIHByb3RlY3RlZCBidWZmZXJzIChvciBhbnkgZ2VuZXJhbCBwcm9wZXJ5IGxpa2UgdGhp
cykNCmFzIGEgY29uY2VwdCBpZiBpdCBpcyBnb2luZyB0byBiZSBhIGdlbmVyaWMgYWxsb2NhdGlv
biBmbGFnLCBpbnN0ZWFkDQpvZiBpdCBiZWluZyBhIHNvbWV3aGF0IHRoaW4gY3JlYXRpb24gb2Yg
dGhlIG91dGVyIGhlYXAtZHJpdmVyIGxheWVyLg0KDQpCdXQsIGl0IHNlZW1zIGxpa2UgdGhlIHVz
ZSBjYXNlIGhlcmUgaXMgc3RpbGwgZmFyIHRvbyBuYXJyb3cgZm9yIGEgdG9wDQpsZXZlbCBhbGxv
Y2F0aW9uIGZsYWcuDQoNClNvIEknZCBhZHZvY2F0ZSBhZ2FpbnN0IGludHJvZHVjaW5nIGhlYXAt
c3BlY2lmaWMgZmxhZ3MgbGlrZSB0aGlzLg0KDQp0aGFua3MNCi1qb2huDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
