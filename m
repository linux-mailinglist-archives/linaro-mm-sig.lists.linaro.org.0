Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2FiSAAKnDGrskQUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 20:08:02 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 71098583703
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 20:08:01 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7B16D40705
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 18:08:00 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	by lists.linaro.org (Postfix) with ESMTPS id F14963F787
	for <linaro-mm-sig@lists.linaro.org>; Tue, 19 May 2026 18:07:49 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20251104 header.b=RKsZLuFJ;
	arc=pass ("google.com:s=arc-20240605:i=1");
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.50 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4891b4934ffso2135e9.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 19 May 2026 11:07:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1779214069; cv=none;
        d=google.com; s=arc-20240605;
        b=cS4BvKtxjvIeHpsUC26DvfDqfltPgaxak9/FuN9ynO6yp5Ii/2Vx+nIeKtx1O2OhGx
         8/XMODhz2LYsWYF58e4jMQe/T/7Qwr0Mp6BHjjWsTq+YkAydiwVX34TInJvBrbqvmVr2
         BRUCpDXp/CiP9/F5jXQWtrR7h0eFUA5FiTW0SI3R+SW8wuUrHJuo8SIEnCfrQcBw4Ov/
         GNSboylQWBwI2ax1FVuQdSsHG6Nx7C5edwNvGwqEIWAlO1EYTum7+RLD8lm6MdwOFUaL
         ARHXeAA3wwXhnYQayeYRxluZiymRTlOz+K64KK4acFLOuNM9aR0Qa4miUNp6ErgNlMn1
         AGrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=xssGkiKE0NLLgIm8hq0sx4z1JVWvwtNlxiDz+CYQuyY=;
        fh=LPAAq7PHaZ7C+WU1Gonz9ZHxM6NkD7Y4+LO7cDH1t0k=;
        b=MoCh6W/QrMc2twIhdvMTvvB1aMMXaYPDvI71XVOtBHOOAbHJaEXaeAAQGUa2CIYv01
         lo65IiNHNloc6PuAYurCuJQMjf+LLIVWVBKuAO6EnC4SLuJ+aDC2FWNBuLbeNUVx8k1M
         wYLCAh6Z8mHaRL/83vxcqqPzV960qSZanEKmPx6JDUPmosUGDwDvu4omrQFY6EC5xwth
         51hJ9XjH0Q6LklW+jHGecI1DgnTWaqjLBAh22xku1oJjGAwXZwSYJG6SICbab7d5bUsP
         gwKQjiEuh1Ko7zfXOZLV2yl0ooCwZHIuOx6zicWOenVI69UmoEE/MDFOxdfeqL8l1GcI
         doDw==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1779214069; x=1779818869; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xssGkiKE0NLLgIm8hq0sx4z1JVWvwtNlxiDz+CYQuyY=;
        b=RKsZLuFJGccN6PVmQHvlZnZ0fMqzgF852yStREqHXB0xr+Spi62MxSrATFkUdEiCpH
         TVS9Zpgcgh/rUA3qNlcOHRlUasg8G7y4uBmxev0iD/ftMFRnvp7g3YgHGCwnnflVGsNn
         MV0PrUl81hXaR9HMuzvwuJfPvtR/3wlTtdR1TopC5HF9q25luDxScZtGnXNBhsalK03d
         LlOqLp5+V5WDlMfoqs4slDSsjfkTbZCM2rsYd2VIjqim5N7Ib3qSFj9Er+yM6kt524IV
         T3fVlO6AQkhTx5s3szIUZ2LDZsZoj6MioUhJOBh5pBbPZl803d9wm0YUlrWYm9oemex6
         WTnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779214069; x=1779818869;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=xssGkiKE0NLLgIm8hq0sx4z1JVWvwtNlxiDz+CYQuyY=;
        b=kHXsO8QtzQuZWUpGvSs5ThUVEspFjs0bEIL/HhvaryQqcKv7osbLZyDlT3EAWXQ8DA
         3msKuEi1wvwK35TYj6D3z45cXLo/lC2clzlpEXB8cFT3cvKHnJXNp4VEt2WSgo+Xuezt
         IlkFE+8wwz18dncEbaKoKpPiPTgMy0EH/l5rWoo0BluiXdnP6aubn7RsPEOOEMj95azP
         EEwFcEtvhhqywQriTqnp9ZCfgJfjoRR8UnHsAEapRoenOOZmATKIsOPsNBICFa9Ll3AE
         Uj2lKWP2QX8ghzGptLIKG8wy0ETGgNt9mQ/Wz65aA7Ehvwe8nJgXQOQyXXmQKGf7dDJn
         UvFA==
X-Forwarded-Encrypted: i=1; AFNElJ9721xyCoTK1El1+w0KtqR7WdwISpdXZcJuhh312bZydFFJRsavHxOqcyEjBEp7h03B307k+607aQ0qcOlR@lists.linaro.org
X-Gm-Message-State: AOJu0Yx58G7qgHNXqii1E/Dy09KET3UrFQJE/G4LaChmooY3H6j4BzE7
	834WgiCj7OIU4dA9TrgZpVMdmd2H3V/3PyMpOW63zwI6RFQwq2UQjCv2PzicAuZ+U5CzoISQjqi
	3GWebgRuOQ5qgdoXQxMEheRLp0anHUn7YViGF3dVe
X-Gm-Gg: Acq92OF+PcVkA4f5VVmoOaI4QMeXZi8+K39xLxSZCPR4cqYOkZ8dzGtO/djPyBrby3M
	waEcEERNPR9zAvm8s2xGO2Q952PdgUCVS1M3S8TSoFXwBTEvGtFMQITGXqsKDD07mwkWJQjDJ2b
	NQzcawskRxTMl4gM1MClB79xdBO6D18R736pWAxfAzPrQ+ClH9Sp0/TwIxDdE9Y/DFcEgTLaIMz
	kaP75qRYaefR88sBJXP3S4bxbLUtEobc9Fn5UZB2Qzwv3JV58c1+LSJqXTekZmzPIMfd9/5WpZq
	kRllcY2bsZ/hk3dFt/XbGMYl4nKhR0n2WFwE0jGEWzikPzpx
X-Received: by 2002:a7b:cc8b:0:b0:48f:de33:777a with SMTP id
 5b1f17b1804b1-48ffd857abfmr3637845e9.11.1779214068422; Tue, 19 May 2026
 11:07:48 -0700 (PDT)
MIME-Version: 1.0
References: <20260512-v2_20230123_tjmercier_google_com-v1-0-6326701c3691@redhat.com>
 <20260512-v2_20230123_tjmercier_google_com-v1-2-6326701c3691@redhat.com>
 <20260515-hinschauen-effizient-9e3a05a94f2e@brauner> <CABdmKX0d6Zsg+_TxXjB80UZR23ZvXzxYoWzORgwmx=ZiuE+Nzw@mail.gmail.com>
 <208fb820-d8eb-4832-a343-ef8b360e8120@amd.com> <CADSE00Lh95ygoXGKJGsYvQGEsFV8sVmwEC3uvh8M6r3ERzaJwg@mail.gmail.com>
 <88efe10a-8b93-4a81-8279-4a5559d0f17c@amd.com> <CABdmKX3yZubjDKbVqwrjHAiKyj_ioHzOoxd0wzFbJK=PAGOqcQ@mail.gmail.com>
 <01b6eefc-c107-4f8c-9d7c-3b86f54cabaa@amd.com>
In-Reply-To: <01b6eefc-c107-4f8c-9d7c-3b86f54cabaa@amd.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Tue, 19 May 2026 11:07:36 -0700
X-Gm-Features: AVHnY4JsuFzXOj8AzAQ7jEDe53JgzbJyOG548qhgZV3zTdsbu0QldI49eMqYz9w
Message-ID: <CABdmKX1wLoLuWPUEY3D7afQhO0AUnOE7c3iE-VkPuKdeQixBxA@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Spamd-Bar: ----
Message-ID-Hash: TVTAX4KUM3FMZGJIRSSKHXL633YIZIR3
X-Message-ID-Hash: TVTAX4KUM3FMZGJIRSSKHXL633YIZIR3
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Albert Esteve <aesteve@redhat.com>, Christian Brauner <brauner@kernel.org>, Tejun Heo <tj@kernel.org>, Johannes Weiner <hannes@cmpxchg.org>, =?UTF-8?Q?Michal_Koutn=C3=BD?= <mkoutny@suse.com>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, Michal Hocko <mhocko@kernel.org>, Roman Gushchin <roman.gushchin@linux.dev>, Shakeel Butt <shakeel.butt@linux.dev>, Muchun Song <muchun.song@linux.dev>, Andrew Morton <akpm@linux-foundation.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, Paul Moore <paul@paul-moore.com>, James Morris <jmorris@namei.org>, "Serge E. Hallyn" <serge@hallyn.com>, Stephen Smalley <stephen.smalley.work@gmail.com>, Ondrej Mosnacek <omosnace@redhat.com>, Shuah Khan <shuah@kernel.org>, cgroups@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.o
 rg, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org, linux-security-module@vger.kernel.org, selinux@vger.kernel.org, linux-kselftest@vger.kernel.org, mripard@kernel.org, echanude@redhat.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 2/5] dma-heap: charge dma-buf memory via explicit memcg
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TVTAX4KUM3FMZGJIRSSKHXL633YIZIR3/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:rdns,lists.linaro.org:helo,mail.gmail.com:mid,amd.com:email]
X-Rspamd-Queue-Id: 71098583703
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVHVlLCBNYXkgMTksIDIwMjYgYXQgMTI6MTnigK9BTSBDaHJpc3RpYW4gS8O2bmlnDQo8Y2hy
aXN0aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToNCj4NCj4gT24gNS8xOS8yNiAwMTozOSwgVC5K
LiBNZXJjaWVyIHdyb3RlOg0KPiA+IE9uIE1vbiwgTWF5IDE4LCAyMDI2IGF0IDc6MDfigK9BTSBD
aHJpc3RpYW4gS8O2bmlnDQo+ID4gPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4gd3JvdGU6DQo+
ID4+DQo+ID4+IE9uIDUvMTgvMjYgMTQ6NTAsIEFsYmVydCBFc3RldmUgd3JvdGU6DQo+ID4+PiBP
biBNb24sIE1heSAxOCwgMjAyNiBhdCA5OjIw4oCvQU0gQ2hyaXN0aWFuIEvDtm5pZw0KPiA+Pj4g
PGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4gd3JvdGU6DQo+ID4+Pj4NCj4gPj4+PiBPbiA1LzE1
LzI2IDE5OjA2LCBULkouIE1lcmNpZXIgd3JvdGU6DQo+ID4+Pj4+IE9uIEZyaSwgTWF5IDE1LCAy
MDI2IGF0IDY6NTPigK9BTSBDaHJpc3RpYW4gQnJhdW5lciA8YnJhdW5lckBrZXJuZWwub3JnPiB3
cm90ZToNCj4gPj4+Pj4+DQo+ID4+Pj4+PiBPbiBUdWUsIE1heSAxMiwgMjAyNiBhdCAxMToxMDo0
NEFNICswMjAwLCBBbGJlcnQgRXN0ZXZlIHdyb3RlOg0KPiA+Pj4+Pj4+IE9uIGVtYmVkZGVkIHBs
YXRmb3JtcyBhIGNlbnRyYWwgcHJvY2VzcyBvZnRlbiBhbGxvY2F0ZXMgZG1hLWJ1Zg0KPiA+Pj4+
Pj4+IG1lbW9yeSBvbiBiZWhhbGYgb2YgY2xpZW50IGFwcGxpY2F0aW9ucy4gV2l0aG91dCBhIHdh
eSB0bw0KPiA+Pj4+Pj4+IGF0dHJpYnV0ZSB0aGUgY2hhcmdlIHRvIHRoZSByZXF1ZXN0aW5nIGNs
aWVudCdzIGNncm91cCwgdGhlDQo+ID4+Pj4+Pj4gY29zdCBsYW5kcyBvbiB0aGUgYWxsb2NhdG9y
LCBtYWtpbmcgcGVyLWNncm91cCBtZW1vcnkgbGltaXRzDQo+ID4+Pj4+Pj4gaW5lZmZlY3RpdmUg
Zm9yIHRoZSBhY3R1YWwgY29uc3VtZXJzLg0KPiA+Pj4+Pj4+DQo+ID4+Pj4+Pj4gQWRkIGNoYXJn
ZV9waWRfZmQgdG8gc3RydWN0IGRtYV9oZWFwX2FsbG9jYXRpb25fZGF0YS4gV2hlbiBzZXQgdG8N
Cj4gPj4+Pj4+DQo+ID4+Pj4+PiBQbGVhc2UgYmUgYXdhcmUgdGhhdCBwaWRmZHMgY29tZSBpbiB0
d28gZmxhdm9yczoNCj4gPj4+Pj4+DQo+ID4+Pj4+PiB0aHJlYWQtZ3JvdXAgcGlkZmRzIGFuZCB0
aHJlYWQtc3BlY2lmaWMgcGlkZmRzLiBNYWtlIHN1cmUgdGhhdCB5b3VyIEFQSQ0KPiA+Pj4+Pj4g
ZG9lc24ndCBpbXBsaWNpdGx5IGRlcGVuZCBvbiB0aGlzIGRpc3RpbmN0aW9uIG5vdCBleGlzdGlu
Zy4NCj4gPj4+Pj4NCj4gPj4+Pj4gSGkgQ2hyaXN0aWFuLA0KPiA+Pj4+Pg0KPiA+Pj4+PiBNZW1j
ZyBpcyBub3QgYSBjb250cm9sbGVyIHRoYXQgc3VwcG9ydHMgInRocmVhZCBtb2RlIiBzbyBhbGwg
dGhyZWFkcw0KPiA+Pj4+PiBpbiBhIGdyb3VwIHNob3VsZCBiZWxvbmcgdG8gdGhlIHNhbWUgbWVt
Y2cuDQo+ID4+Pj4NCj4gPj4+PiBCVFc6IEV4YWN0bHkgdGhhdCBpcyB0aGUgcmVxdWlyZW1lbnQg
YXV0b21vdGl2ZSBoYXMgd2l0aCB0aGVpciBuYXRpdmUgY29udGV4dCB1c2UgY2FzZS4NCj4gPj4+
Pg0KPiA+Pj4+IFRoZSB1c2UgY2FzZSBpcyB0aGF0IHlvdSBoYXZlIGEgZGVhbW9uIHdoaWNoIGhh
cyBtdWx0aXBsZSB0aHJlYWRzIHdlcmUgZWFjaCBvbmUgaXMgYWN0aW5nIG9uIGJlaGFsdmUgb2Yg
c29tZSBvdGhlciBwcm9jZXNzLg0KPiA+Pj4+DQo+ID4+Pj4gQXQgdGhlIG1vbWVudCB3ZSBiYXNp
Y2FsbHkgc2F5IHRoZXkgYXJlIHNpbXBseSBub3QgdXNpbmcgY2dyb3VwcyBmb3IgdGhhdCB1c2Ug
Y2FzZSwgYnV0IGl0IHdvdWxkIGJlIHJlYWxseSBuaWNlIGlmIHdlIGNvdWxkIGhhbmRsZSB0aGF0
IGFzIHdlbGwuDQo+ID4+Pj4NCj4gPj4+PiBTdW1tYXJpemluZyB0aGUgcmVxdWlyZW1lbnQgb2Yg
dGhhdCB1c2UgY2FzZTogWW91IG5lZWQgYSBkaWZmZXJlbnQgY2dyb3VwIGZvciBlYWNoIHRocmVh
ZCBvZiBhIHByb2Nlc3MuDQo+ID4+Pg0KPiA+Pj4gSGkgQ2hyaXN0aWFuLA0KPiA+Pj4NCj4gPj4+
IFRoYW5rcyBmb3Igc2hhcmluZyB0aGlzIGF0dW9tb3RpdmUgdXNlY2FzZS4gSWYgSSB1bmRlcnN0
YW5kIGNvcnJlY3RseSwNCj4gPj4+IHRoZSBhY3R1YWwgcmVxdWlyZW1lbnQgaXMgYXR0cmlidXRp
bmcgZG1hLWJ1ZiBjaGFyZ2VzIHRvIHRoZSByaWdodA0KPiA+Pj4gY2xpZW50LCBub3QgcHV0dGlu
ZyBlYWNoIGRhZW1vbiB0aHJlYWQgaW4gYSBkaWZmZXJlbnQgY2dyb3VwPw0KPiA+Pg0KPiA+PiBO
b3BlLCBleGFjdGx5IHRoYXQncyB0aGUgZGlmZmVyZW5jZS4NCj4gPj4NCj4gPj4gVGhlIHRocmVh
ZCBhY3RzIGFzIGEgZmlsdGVyaW5nIGFnZW50IGZvciBib3RoIG1lbW9yeSBhbGxvY2F0aW9uIGFu
ZCBjb21tYW5kIHN1Ym1pc3Npb24gZm9yIHNvbWVib2R5IGVsc2UsIHRoZSBwcm9jZXNzIG9uIHdo
aWNoIGJlaGFsdmUgdGhlIGRhZW1vbiBkb2VzIHRoaW5ncyBjYW4gZXZlbiBiZSBpbiBhIGNsaWVu
dCBWTSwgY29tcGxldGVseSByZW1vdGUgb3ZlciBzb21lIG5ldHdvcmsgb3IgZXZlbiBzb21ldGhp
bmcgbGlrZSBhIG1pY3JvY29udHJvbGxlci4NCj4gPj4NCj4gPj4gRXZlcnl0aGluZyB0aGUgdGhy
ZWFkIGRvZXMgcmVnYXJkaW5nIENQVSB0aW1lLCBHUFUgZHJpdmVyIG1lbW9yeSBhbGxvY2F0aW9u
IGFzIHdlbGwgYXMgcmVzb3VyY2VzIGxpa2UgR1BVIHByb2Nlc3NpbmcgYW5kIEkvTyB0aW1lIGV0
Yy4uIG5lZWRzIHRvIGJlIGFjY291bnRlZCB0byBvbmUgY2xpZW50IHdoaWNoIGNhbiBiZSBkaWZm
ZXJlbnQgZm9yIGVhY2ggdGhyZWFkIG9mIHRoZSBwcm9jZXNzLg0KPiA+Pg0KPiA+PiBUaGUgb25s
eSB0aGluZyB3aGljaCBpcyBzaGFyZWQgd2l0aCB0aGUgbWFpbiBwcm9jZXNzIHRocmVhZCBpcyBD
UFUgbWVtb3J5IHJlc291cmNlcywgZS5nLiBtYWxsb2MoKSBiZWNhdXNlIHRoYXQgaXMgYmFzaWNh
bGx5IGp1c3QgbmVlZGVkIGZvciBob3VzZWtlZXBpbmcgYW5kIHByZXR0eSBtdWNoIGlycmVsZXZh
bnQgZm9yIHRoaXMga2luZCBvZiB1c2UgY2FzZS4NCj4gPj4NCj4gPj4gVGhlIHByb2JsZW0gaXMg
bm93IHlvdSBjYW4ndCBkbyB0aGF0IHdpdGggY2dyb3VwcyBhdCB0aGUgbW9tZW50IGJ1dCB1bmZv
cnR1bmF0ZWx5IG9ubHkgdGhlIGtlcm5lbCBoYXMgdGhlIGluZm9ybWF0aW9uIHlvdSBuZWVkIHRv
IGtub3cgdG8gZG8gdGhpcy4NCj4gPj4NCj4gPj4gU28gd2hhdCB5b3UgZW5kIHVwIHdpdGggaXMg
dG8gZGVmaW5lIHRvbnMgb2YgaW50ZXJmYWNlcyBqdXN0IHRvIGdldCB0aGUgbmVjZXNzYXJ5IGlu
Zm9ybWF0aW9uIGZyb20gdGhlIGtlcm5lbCBpbnRvIHVzZXJzcGFjZSBhbmQgdGhlbiBlc3NlbnRp
YWxseSBkdXBsaWNhdGUgdGhlIHNhbWUgaW5mcmFzdHJ1Y3R1cmUgY2dyb3VwIHByb3ZpZGVzIGlu
IHRoZSBrZXJuZWwgaW4gdXNlcnNwYWNlIGFnYWluLg0KPiA+Pg0KPiA+Pj4gSWYgc28sDQo+ID4+
PiB0aGUgYGNoYXJnZV9waWRfZmRgIGFwcHJvYWNoIGFjaGlldmVzIHRoaXMgZGlyZWN0bHkgYnkg
cGFzc2luZyB0aGUNCj4gPj4+IGNsaWVudCdzIGBwaWRfZmRgLCB3aXRob3V0IG5lZWRpbmcgdG8g
YWRkIHBlci10aHJlYWQgY2dyb3VwDQo+ID4+PiBpbmZyYXN0cnVjdHVyZS4NCj4gPj4NCj4gPj4g
V2VsbCBpdCdzIGFscmVhZHkgYSBtYXNzaXZlIGltcHJvdmVtdCwgd2UgY291bGQgYmFzaWNhbGx5
IHN0b3AgZG9pbmcgdGhlIHdob2xlIGR1cGxpY2F0aW9uIHBhcnQgZm9yIHRoZSBHUFUgZHJpdmVy
IHN0YWNrIGFuZCBqdXN0IHVzZSBjZ3JvdXBzIGZvciB0aGlzIHBhcnQuDQo+ID4+DQo+ID4+IERv
aW5nIHRoYXQgYXV0b21hdGljYWxseSBmb3IgQ1BVIGFuZCBJL08gdGltZSB3b3VsZCBqdXN0IGJl
IG5pY2UgdG8gaGF2ZSBhZGRpdGlvbmFsbHkuDQo+ID4+DQo+ID4+IFJlZ2FyZHMsDQo+ID4+IENo
cmlzdGlhbi4NCj4gPg0KPiA+IEhvcGVmdWxseSBJJ20gZm9sbG93aW5nIGNvcnJlY3RseSBoZXJl
Li4uLiBTbyB5b3UgYXJlIGR1cGxpY2F0aW5nIHRoZQ0KPiA+IEdQVSBkcml2ZXIgc3RhY2sgdG8g
YWNoaWV2ZSByZW1vdGUgYWNjb3VudGluZyBvbiBhIHBlci10aHJlYWQgYmFzaXM/DQo+DQo+IE5v
dCBxdWl0ZSwgd2UgYXJlIGR1cGxpY2F0aW5nIHRoZSBoYW5kbGluZyBjZ3JvdXAgcHJvdmlkZXMg
aW4gdGhlIGtlcm5lbCBpbiB1c2Vyc3BhY2UuDQo+DQo+IEZvciB0aGlzIG1lbW9yeSB1c2FnZSBp
bmZvcm1hdGlvbiBhcyB3ZWxsIGFzIGV4ZWN1dGlvbiB0aW1lcyBvZiB0aGUgR1BVIGtlcm5lbCBk
cml2ZXIgaXMgZXhwb3NlZCBpbiBmZGluZm8gZm9yIGV4YW1wbGUuDQoNCk9oIEkgc2VlLCB0aGFu
a3MuDQoNCj4gPiBEb2VzIHRoaXMgbWVhbiBmb3IgR1BVIGFsbG9jYXRpb25zIHlvdSBjdXJyZW50
bHkgaGF2ZSBzb21lIEdGUF9BQ0NPVU5UDQo+ID4gbWFnaWMgaW4geW91ciBkcml2ZXIgdG8gYXR0
cmlidXRlIEdQVSBtZW1vcnkgdG8gdGhlIGNvcnJlY3QgcmVtb3RlDQo+ID4gY2xpZW50Pw0KPg0K
PiBObywgd2UganVzdCBleHBvc2Ugd2hhdCB0aGUga2VybmVsIGRyaXZlciBoYXMgYWxsb2NhdGVk
IGZvciBpdHNlbGYuIEUuZy4gcGFnZSB0YWJsZXMsIGJ1ZmZlcnMgZXRjLi4uDQo+DQo+IFdoZW4g
dXNlcnNwYWNlIGFsbG9jYXRlcyBzb21ldGhpbmcgdXNpbmcgbWVtZmRfY3JlYXRlKCkgZm9yIGV4
YW1wbGUgd2UganVzdCBpZ25vcmUgdGhhdC4NCj4NCj4gPiBTbyB0aGlzIHNlcmllcyB3b3VsZCBj
bG9zZSB0aGUgZ2FwIGZvciBkbWEtYnVmIGFsbG9jYXRpb25zLA0KPiA+IGJ1dCB3aGF0IGFib3V0
IHByaXZhdGUgR1BVIGRyaXZlciBtZW1vcnkgYWxsb2NhdGVkIG9uIGJlaGFsZiBvZiBhDQo+ID4g
Y2xpZW50Pw0KPg0KPiBXZWxsIHdlIHdvdWxkIG5lZWQgYSBjZ3JvdXAgd2hpY2ggaXNuJ3QgYXNz
b2NpYXRlZCB3aXRoIGFueSBwcm9jZXNzIHdlcmUgd2UgY291bGQgY2hhcmdlIHRoZSBHUFUgZHJp
dmVyIGFsbG9jYXRpb25zIGFnYWluc3QuDQo+DQo+IEJ1dCBnb29kIHBvaW50LCBjaGFyZ2luZyBh
Z2FpbnN0IGEgcGlkIHdvdWxkbid0IHdvcmsgaW4gdGhpcyB1c2UgY2FzZS4NCg0KSXQgd291bGQg
YmUgcHJldHR5IGxvdyBvdmVyaGVhZCB0byBwdXQgYSBwcm9jZXNzIGRvaW5nIHdoaWxlKDEpDQpw
YXVzZSgpOyBpbiBhIHNlcGFyYXRlIGNncm91cCBmb3IgdGhpcyBwdXJwb3NlLCBidXQgSSBndWVz
cyBhIGZkIGZvcg0KdGhlIGFjdHVhbCBjZ3JvdXAgd291bGQgYmUgYSBsaXR0bGUgY2xlYW5lciBp
biB0aGlzIGNhc2UuDQoNCj4gUmVnYXJkcywNCj4gQ2hyaXN0aWFuLg0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQg
YW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
