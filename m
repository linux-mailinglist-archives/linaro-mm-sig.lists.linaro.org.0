Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eAbMAEcC+ml1HAMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 05 May 2026 16:44:23 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A9F24CFA42
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 05 May 2026 16:44:22 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 63E88409B6
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 May 2026 14:44:21 +0000 (UTC)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	by lists.linaro.org (Postfix) with ESMTPS id 0F6A23F72F
	for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2026 14:44:18 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20251104 header.b=G8wpwCnb;
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.49 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	arc=pass ("google.com:s=arc-20240605:i=1")
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-488940ccfa6so96745e9.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 05 May 2026 07:44:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1777992257; cv=none;
        d=google.com; s=arc-20240605;
        b=R1QqB+1fCfmGJBt7enDYrachZECHvH7z6G+JmQWD8pBPzkQoBMh3MARXKPq8156DQ7
         SuA0KOH3ONOEQX+CWw24Pg1/ITJbYE4KJ4e36RxXv830OUwpPzg+tEdKBcZ4kD76ddkf
         OOKmn560SRGjOtEfVwuU0aFRRR4wOOgisAXSqZKXTJ4tAfMZMPEIMpCUmJuPJObBqAEE
         Jv/J5CzE/LF16CCmZc9s54cJvcA4V01svl/UJb2qumlzRwer1evhPnKzzFSNg/LmkZaU
         Qmkd8tdG0NQvN8zgd9y5Kc2/odBjB+HNWD2VQikOMa2I5WDD8Ha1B7/scL/qjxGJRcl0
         YPWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=xImKjLpphistWNUhM/BMGUgvs4K16/nDs7wCf3O5gxg=;
        fh=qlHoB0V+0RJ5BH9CNxdnNZ5fzXw02pq/t+l8xinhiqU=;
        b=PZZarlhjU4GUnWQ/YUeO900WLG8MzdKc3IokpE5PxuZbPaJOjzR749xlNnRDEQ1sp5
         H6MQr5uekzg28uDZvHq5YwtxaK0iPgkfZypDsPra5InhDYWsLZXXnco3OZDJ2RqLyi6x
         KGij7+Ge5bkfX0hkA4bt0GsJ9irxIt8m9vshvVz2v826c4VeuT79oln7DE1w5RcTin8u
         KRmeBj59+L5BBiohYedb2HwPvHu0P4NLRQnR2XPrwjfogO8HXjZHPsmFvXxqAVDl2vlo
         MYl7pHMP/rMWttTYO2EuDxRgBlWqIwoyW3SHGzRAoWAlSA/TgmBjOgj3feSJstUIOY+x
         FB6A==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1777992257; x=1778597057; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xImKjLpphistWNUhM/BMGUgvs4K16/nDs7wCf3O5gxg=;
        b=G8wpwCnbrtlha6EbHr2fzDVSCpyW3Vs39B0ANOv+lUgwcKsHKlvNpyI/Y10kqR/HNK
         6UZ4G3fzw6DwV/9/77De2XIReOQQgw2RiY9yEAkz3miP/2Qu2BF9Ropj/2e4tggwvnfV
         NKfDU3df8VCtb+ZJpx4cFwmb2CKd2hx5FjFHi2BNg6ErzLMPEPwk94I98WvoEQgq2+lP
         Yhgtf04AAzVvpWWFVPhwhxgU2dn09AsjOchUI8CO1kMn6PHzrq+PCS1nmZOhnvK/o1ic
         7p0hn7JxezWHhUxx9seXgkgPUqHbsN172ki1miLQQM80Awg0KIjEVMw1+lAqC/Yrvw5J
         68PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777992257; x=1778597057;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=xImKjLpphistWNUhM/BMGUgvs4K16/nDs7wCf3O5gxg=;
        b=LXx8RYCZXUNj7tDp7FuQrzERayncnfbMYb/LBKvH4Go8/KW8SJulha1NPAhU+qeIVL
         RVrGPBTEtYYxUsF8/PeoyXoV/j8CeFza118s2J8rlsfk2yENJ27sJDri+Zsm7z5TJZrp
         URiASDwT8Q6xO50yEL/m9Hg//GQbUfYWEgECbgteaBz48vGx+T3xtvOqRzePg/scOghV
         JjJFMK5fCGTDK+pgkqpO4nluSFjMAeBIqXVkorMKbeJkWf4PSFcqR0Vn47jxLMLgaWaC
         PwXqUnB+M4zQvLDdiky+Zuy+7UiKYnnrv3cBeyuV9ePxl0HILBrUnAeYk0udpYZHUzyR
         0Fiw==
X-Forwarded-Encrypted: i=1; AFNElJ8zuKQ6LQlPToJJTdFzjSe1Fb2GZ329Pfr7H1Zv+BgzWSmOemNHsA4jh4eE0lHiNe8kMbepBcgUi9KT4fVr@lists.linaro.org
X-Gm-Message-State: AOJu0Ywt1Nyn3GmE+/SPLXw8tDvsZDv73/zrP9zkEES1VVr0/EYMufGU
	2umSUbIveL9Wdin4o285p1lC8h8Bu2D31Q2i7s0cd+MCNPthrdo34qrzjOI8jxzDMNfiU5sAmeq
	TzMVpxcHs6/yUDK1icFNM6E4K4s9Iq4lqYpXGIJDe
X-Gm-Gg: AeBDiesMidmVpSbtpXnqbIYbz7OK/vkHuUMZsWzIuA4UhNLEIymTntJbrjZ2Ax5WZyA
	GI6e5NwsE8RmtuQ1CboozNYJQdBnIhgu6Yc3k6Htx/s24ZNfNW4o85YtxEaGziBwIyt5/2XQmpm
	uIcdrMpIWuGgbcunyF7MO0ooJw4l/2WAdpkb4cO0m6TfRj/JXg4Sb1ezKv26eYzwNbyGkXJaZHZ
	VgR0QYFaFVbmt1ezdob16HkbF8DhmZcjqNvGFArXjjQ48dMypKyweh1v6MNMLmSxv0yZI5Baho+
	VFtp+WyLWbElA7RU7HYPvuKu95DEIN0IBXraQu6pQy4Z8cnGnU/9Alf1HZSh
X-Received: by 2002:a05:600c:4fd3:b0:485:1a54:9407 with SMTP id
 5b1f17b1804b1-48d14696188mr1306875e9.0.1777992256465; Tue, 05 May 2026
 07:44:16 -0700 (PDT)
MIME-Version: 1.0
References: <20260406214938.24142-1-baohua@kernel.org> <a6d1c89a-3c71-4e06-adcb-56595071dcc2@amd.com>
 <CAGsJ_4xquCzQLbvpkC8arAN=9KhrAkdPdxnB=v85GvvQu23Xyg@mail.gmail.com>
 <9034246e-3971-4fad-94b7-80f4ad0e29db@amd.com> <CAGsJ_4z5EZoNMBVnu6sCkThyi9VTCeCH29buVecuySuv_Ry8fw@mail.gmail.com>
 <CABdmKX3baqmBkZxMB6PTG6Sj5S9qi+RwVvwpmkLqKkqvfeZAUw@mail.gmail.com> <bc74694b-9cbc-4cbb-9dcd-9e25960d3b97@amd.com>
In-Reply-To: <bc74694b-9cbc-4cbb-9dcd-9e25960d3b97@amd.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Tue, 5 May 2026 07:44:03 -0700
X-Gm-Features: AVHnY4KKm8ChPu7Yq7OfV6LJFs9X7Wuvyr_qOd_TfzJJJ5G91zdYSk83n0ma0pE
Message-ID: <CABdmKX39gWcPy2PWxZ-bJBgXEQrk8Y7JWdFhkcS=LkOmU2v4zA@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Spamd-Bar: ----
Message-ID-Hash: BBODLIEIZOH2QD3IWGIIXZTT37VWDIEA
X-Message-ID-Hash: BBODLIEIZOH2QD3IWGIIXZTT37VWDIEA
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Barry Song <baohua@kernel.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Xueyuan Chen <Xueyuan.chen21@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: system_heap: Optimize sg_table-to-pages conversion in vmap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BBODLIEIZOH2QD3IWGIIXZTT37VWDIEA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: 6A9F24CFA42
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [5.09 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed),reject];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_REJECT(1.00)[google.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[google.com:-];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.574];
	FROM_NEQ_ENVFROM(0.00)[tjmercier@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,gmail.com,linaro.org,collabora.com,arm.com,google.com];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,linaro.org:email,mail.gmail.com:mid]

T24gTW9uLCBNYXkgNCwgMjAyNiBhdCAxMjo0OeKAr0FNIENocmlzdGlhbiBLw7ZuaWcNCjxjaHJp
c3RpYW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOg0KPg0KPiBPbiA1LzEvMjYgMTc6NTQsIFQuSi4g
TWVyY2llciB3cm90ZToNCj4gPiBPbiBUaHUsIEFwciAzMCwgMjAyNiBhdCA5OjE14oCvUE0gQmFy
cnkgU29uZyA8YmFvaHVhQGtlcm5lbC5vcmc+IHdyb3RlOg0KPiA+Pg0KPiA+PiBPbiBXZWQsIEFw
ciAyMiwgMjAyNiBhdCAzOjEw4oCvUE0gQ2hyaXN0aWFuIEvDtm5pZw0KPiA+PiA8Y2hyaXN0aWFu
LmtvZW5pZ0BhbWQuY29tPiB3cm90ZToNCj4gPj4+DQo+ID4+PiBPbiA0LzcvMjYgMTM6MjksIEJh
cnJ5IFNvbmcgd3JvdGU6DQo+ID4+Pj4gT24gVHVlLCBBcHIgNywgMjAyNiBhdCAzOjU44oCvUE0g
Q2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToNCj4gPj4+
Pj4NCj4gPj4+Pj4gT24gNC82LzI2IDIzOjQ5LCBCYXJyeSBTb25nIChYaWFvbWkpIHdyb3RlOg0K
PiA+Pj4+Pj4gRnJvbTogWHVleXVhbiBDaGVuIDxYdWV5dWFuLmNoZW4yMUBnbWFpbC5jb20+DQo+
ID4+Pj4+Pg0KPiA+Pj4+Pj4gUmVwbGFjZSB0aGUgaGVhdnkgZm9yX2VhY2hfc2d0YWJsZV9wYWdl
KCkgaXRlcmF0b3IgaW4gc3lzdGVtX2hlYXBfZG9fdm1hcCgpDQo+ID4+Pj4+PiB3aXRoIGEgbW9y
ZSBlZmZpY2llbnQgbmVzdGVkIGxvb3AgYXBwcm9hY2guDQo+ID4+Pj4+Pg0KPiA+Pj4+Pj4gSW5z
dGVhZCBvZiBpdGVyYXRpbmcgcGFnZSBieSBwYWdlLCB3ZSBub3cgaXRlcmF0ZSB0aHJvdWdoIHRo
ZSBzY2F0dGVybGlzdA0KPiA+Pj4+Pj4gZW50cmllcyB2aWEgZm9yX2VhY2hfc2d0YWJsZV9zZygp
LiBCZWNhdXNlIHBhZ2VzIHdpdGhpbiBhIHNpbmdsZSBzZyBlbnRyeQ0KPiA+Pj4+Pj4gYXJlIHBo
eXNpY2FsbHkgY29udGlndW91cywgd2UgY2FuIHBvcHVsYXRlIHRoZSBwYWdlIGFycmF5IHdpdGgg
YSBpbiBhbg0KPiA+Pj4+Pj4gaW5uZXIgbG9vcCB1c2luZyBzaW1wbGUgcG9pbnRlciBtYXRoLiBU
aGlzIHNhdmUgYSBsb3Qgb2YgdGltZS4NCj4gPj4+Pj4+DQo+ID4+Pj4+PiBUaGUgV0FSTl9PTiBj
aGVjayBpcyBhbHNvIHB1bGxlZCBvdXQgb2YgdGhlIGxvb3AgdG8gc2F2ZSBicmFuY2gNCj4gPj4+
Pj4+IGluc3RydWN0aW9ucy4NCj4gPj4+Pj4+DQo+ID4+Pj4+PiBQZXJmb3JtYW5jZSByZXN1bHRz
IG1hcHBpbmcgYSAyR0IgYnVmZmVyIG9uIFJhZHhhIE82Og0KPiA+Pj4+Pj4gLSBCZWZvcmU6IH4x
NDQwMDAwIG5zDQo+ID4+Pj4+PiAtIEFmdGVyOiAgfjIzMjAwMCBucw0KPiA+Pj4+Pj4gKH44NCUg
cmVkdWN0aW9uIGluIGl0ZXJhdGlvbiB0aW1lLCBvciB+Ni4yeCBmYXN0ZXIpDQo+ID4+Pj4+DQo+
ID4+Pj4+IFdlbGwgcmVhbCBxdWVzdGlvbiBpcyB3aHkgZG8geW91IGNhcmUgYWJvdXQgdGhlIHZt
YXAgcGVyZm9ybWFuY2U/DQo+ID4+Pj4+DQo+ID4+Pj4+IFRoYXQgc2hvdWxkIGJhc2ljYWxseSBv
bmx5IGJlIHVzZWQgZm9yIGZiZGV2IGVtdWxhdGlvbiAoZXhjZXB0IGZvciBWTUdGWCkgYW5kIHdl
IGFic29sdXRlbHkgZG9uJ3QgY2FyZSBhYm91dCBwZXJmb3JtYW5jZSB0aGVyZS4NCj4gPj4+Pg0K
PiA+Pj4+IEkgYWdyZWUgdGhhdCBpbiBtYWlubGluZSwgZG1hX2J1Zl92bWFwIGlzIG5vdCB1c2Vk
IHZlcnkgb2Z0ZW4uDQo+ID4+Pj4gSGVyZeKAmXMgd2hhdCBJIHdhcyBhYmxlIHRvIGZpbmQ6DQo+
ID4+Pj4NCj4gPj4+PiAgIDEgICAxNjM4ICBkcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jIDw8ZG1h
X2J1Zl92bWFwX3VubG9ja2VkPj4NCj4gPj4+PiAgICAgICAgICAgICAgcmV0ID0gZG1hX2J1Zl92
bWFwKGRtYWJ1ZiwgbWFwKTsNCj4gPj4+PiAgICAyICAgIDM3NiAgZHJpdmVycy9ncHUvZHJtL2Ry
bV9nZW1fc2htZW1faGVscGVyLmMNCj4gPj4+PiA8PGRybV9nZW1fc2htZW1fdm1hcF9sb2NrZWQ+
Pg0KPiA+Pj4+ICAgICAgICAgICAgICByZXQgPSBkbWFfYnVmX3ZtYXAob2JqLT5pbXBvcnRfYXR0
YWNoLT5kbWFidWYsIG1hcCk7DQo+ID4+Pj4gICAgMyAgICAgODUgIGRyaXZlcnMvZ3B1L2RybS9l
dG5hdml2L2V0bmF2aXZfZ2VtX3ByaW1lLmMNCj4gPj4+PiA8PGV0bmF2aXZfZ2VtX3ByaW1lX3Zt
YXBfaW1wbD4+DQo+ID4+Pj4gICAgICAgICAgICAgIHJldCA9IGRtYV9idWZfdm1hcChldG5hdml2
X29iai0+YmFzZS5pbXBvcnRfYXR0YWNoLT5kbWFidWYsICZtYXApOw0KPiA+Pj4+ICAgIDQgICAg
NDMzICBkcml2ZXJzL2dwdS9kcm0vdm13Z2Z4L3Ztd2dmeF9ibGl0LmMgPDxtYXBfZXh0ZXJuYWw+
Pg0KPiA+Pj4+ICAgICAgICAgICAgICByZXQgPSBkbWFfYnVmX3ZtYXAoYm8tPnRiby5iYXNlLmRt
YV9idWYsIG1hcCk7DQo+ID4+Pj4gICAgNSAgICAgODggIGRyaXZlcnMvZ3B1L2RybS92bXdnZngv
dm13Z2Z4X2dlbS5jIDw8dm13X2dlbV92bWFwPj4NCj4gPj4+PiAgICAgICAgICAgICAgcmV0ID0g
ZG1hX2J1Zl92bWFwKG9iai0+aW1wb3J0X2F0dGFjaC0+ZG1hYnVmLCBtYXApOw0KPiA+Pj4+DQo+
ID4+Pj4gSG93ZXZlciwgaW4gdGhlIEFuZHJvaWQgZWNvc3lzdGVtLCBzeXN0ZW1faGVhcCBhbmQg
c2ltaWxhciBoZWFwcw0KPiA+Pj4+IGFyZSB3aWRlbHkgdXNlZCBhY3Jvc3MgY2FtZXJhLCBOUFUs
IGFuZCBtZWRpYSBkcml2ZXJzLiBNYW55IG9mIHRoZXNlDQo+ID4+Pj4gZHJpdmVycyBhcmUgbm90
IGluIG1haW5saW5lIGJ1dCBkbyB1c2Ugdm1hcCgpIGluIHJlYWwgY29kZSBwYXRocy4NCj4gPj4+
DQo+ID4+PiBXZWxsIG91dCBvZiB0cmVlIGRyaXZlcnMgYXJlIG5vdCBhIGp1c3RpZmljYXRpb24g
dG8gbWFrZSBhbiB1cHN0cmVhbSBjaGFuZ2VzLg0KPiA+Pj4NCj4gPj4+IEFwYXJ0IGZyb20gYSBo
YW5kZnVsIG9mIHdvcmthcm91bmRzIHdoaWNoIG5lZWQgdG8gQ1BVIGFjY2VzcyBhcyBmYWxsYmFj
ayBETUEtYnVmIHZtYXAgaXMgb25seSB1c2VkIHRvIHByb3ZpZGUgZmIgZGV2IGVtdWxhdGlvbi4N
Cj4gPj4+DQo+ID4+PiBUaGUgdm1hcCBpbnRlcmZhY2UgaGFzIGFscmVhZHkgZ2l2ZW4gdXMgcXVp
dGUgYSBoZWFkYWNoZSBpbiB0aGUgZmlyc3QgcGxhY2UgYW5kIHRoZXJlIGFyZSBhIGNvdXBsZSBv
ZiB1bnJlc29sdmVkIHByb2JsZW1zIHJlZ2FyZGluZyBzeW5jaHJvbml6YXRpb24gYW5kIGNvaGVy
ZW5jeS4NCj4gPj4+DQo+ID4+PiBXaGVuIGEgZHJpdmVyIHdvdWxkIGJlIHB1c2hlZCB1cHN0cmVh
bSB3aGljaCBtYWtlcyBzbyBmcmVxdWVudCB1c2Ugb2YgdGhlIGRtYV9idWZfdm1hcCBmdW5jdGlv
biB0aGF0IGl0IG1hdHRlcnMgZm9yIHRoZSBwZXJmb3JtYW5jZSBJIHRoaW5rIHRoZXJlIHdvdWxk
IGJlIHB1c2ggYmFjayBvbiB0aGF0IGFuZCB0aGUgZHJpdmVyIGRldmVsb3BlciB3b3VsZCByZXF1
aXJlIGEgdmVyeSBnb29kIGV4cGxhbmF0aW9uIHdoeSB0aGF0IGlzIG5lY2Vzc2FyeS4NCj4gPj4+
DQo+ID4+PiBTbyBmb3Igbm93IEkgaGF2ZSB0byByZWplY3QgdGhhdCBwYXRjaC4NCj4gPj4NCj4g
Pj4gV2VsbCwgaXQgZG9lc27igJl0IHNlZW0gdG8gaW5jcmVhc2UgY29tcGxleGl0eSwgYW5kIHRo
ZSBjb2RlIGlzIHF1aXRlIGVhc3kNCj4gPj4gdG8gdW5kZXJzdGFuZC4NCj4gPg0KPiA+IEkgYWdy
ZWUgd2l0aCB0aGlzLiBUaGlzIGNoYW5nZSBpbnRyb2R1Y2VzIGJhc2ljYWxseSBubyBkb3duc2lk
ZXMgZm9yDQo+ID4gdXBzdHJlYW0sIGV2ZW4gaWYgaXQgcHJpbWFyaWx5IGJlbmVmaXRzIGEgcmFy
ZSB1c2UgY2FzZS4gU2luY2UNCj4gPiBkbWFfYnVmX3ZtYXAgaXMgZXhwb3J0ZWQgZm9yIGRyaXZl
ciB1c2UsIHdoeSBub3QgZW5oYW5jZSB0aGUNCj4gPiBwZXJmb3JtYW5jZSBmb3IgYWxsIGNhbGxl
cnM/DQo+DQo+IEJlY2F1c2Ugd2UgZXNzZW50aWFsbHkgd2FudCB0byByZXN0cmljdCB0aGUgdm1h
cCBpbnRlcmZhY2UgdG8gb25seSB0aGUgZmIgZGV2IGVtdWxhdGlvbiB1c2UgY2FzZSBhbmQgbm90
IHByb21vdGUgb3IgZXZlbiBleHBhbmQgaXQuDQo+DQo+IFdoZW4gdGhpcyBtYXR0ZXJzIHBlcmZv
cm1hbmNlIHdpc2UgdGhlIGNhbGxlciBpcyBjbGVhcmx5IGRvaW5nIHNvbWV0aGluZyB3cm9uZyBh
bmQgYnkgaW1wcm92aW5nIHRoZSBwZXJmb3JtYW5jZSB3ZSBqdXN0IHBhcGVyIG92ZXIgdGhlIGlz
c3VlIGluc3RlYWQgb2YgZml4aW5nIGl0Lg0KDQpBY2ssIEkgdW5kZXJzdGFuZCB5b3VyIHBvc2l0
aW9uLg0KDQo+IFJlZ2FyZHMsDQo+IENocmlzdGlhbi4NCj4NCj4gPg0KPiA+IC1ULkouDQo+ID4N
Cj4gPj4gSXQgd291bGQgYmUgZ3JlYXQgaWYgdGhlIGNvbW11bml0eSBjb3VsZCBiZSBtb3JlIHdl
bGNvbWluZw0KPiA+PiB0byBkZXZlbG9wZXJzIHdobyBhcmUganVzdCBnZXR0aW5nIGludm9sdmVk
LCByYXRoZXIgdGhhbiBkaXNjb3VyYWdpbmcgdGhlbS4NCj4gPj4NCj4gPj4gQXBwYXJlbnRseSwg
bm8gb25lIGNhbiBjb250cm9sIHdoZXRoZXIgdGhlIHNvdXJjZSBjb2RlIG9mIHRob3NlIGtlcm5l
bA0KPiA+PiBtb2R1bGVzIHdpbGwgYmUgdXBzdHJlYW1lZCBleGNlcHQgdGhlIHZlbmRvcnMgdGhl
bXNlbHZlcywgYnV0IHByb2R1Y3RzDQo+ID4+IGNhbiBzdGlsbCBiZW5lZml0IGZyb20gdGhlIGNv
bW1vbiBrZXJuZWwuDQo+ID4+DQo+ID4+IEJlc3QgUmVnYXJkcw0KPiA+PiBCYXJyeQ0KPg0KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNp
ZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vi
c2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8u
b3JnCg==
