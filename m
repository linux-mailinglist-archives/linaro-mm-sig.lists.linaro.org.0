Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kOxnNK8qDGq0XwUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 11:17:35 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D47157B11C
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 11:17:35 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 186DD40965
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 09:17:34 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id 22CF63F829
	for <linaro-mm-sig@lists.linaro.org>; Tue, 19 May 2026 09:17:24 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=cM3I3Mnc;
	spf=pass (lists.linaro.org: domain of aesteve@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=aesteve@redhat.com;
	dmarc=pass (policy=quarantine) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1779182243;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ahxcxmkOaihabfP2WFI6asNswH1uQirOjdb0LjAlcss=;
	b=cM3I3MncDkyLcYz6AJzTdkRXRAP6RNHfCCGRBIC9faN7rr64uQp0UGfln+TeYz54DzYDfR
	4vdLpw3eBCo1xGyA9KwVWpqblaJzqtgwkEWxmgniOhu4dhBVKR+XGqpCSBtcoFHL5ZzE+g
	aRE9HMdLjHsaS617kw/8wQEjVSnb4ow=
Received: from mail-yw1-f198.google.com (mail-yw1-f198.google.com
 [209.85.128.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-372-3NC15P3lMKutaSJUDRgrhA-1; Tue, 19 May 2026 05:17:22 -0400
X-MC-Unique: 3NC15P3lMKutaSJUDRgrhA-1
X-Mimecast-MFC-AGG-ID: 3NC15P3lMKutaSJUDRgrhA_1779182242
Received: by mail-yw1-f198.google.com with SMTP id 00721157ae682-7bd6f72e5aeso50123817b3.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 19 May 2026 02:17:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779182242; x=1779787042;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ahxcxmkOaihabfP2WFI6asNswH1uQirOjdb0LjAlcss=;
        b=kqsGFpDYzO0T6yJOge0C2bRhEsFfRw9snEXwccZmWBDeHfZ1gunNmklD/HxI8T/ZT4
         94dJqSQUdYmkURV3dWQx03v7bTYpXprBiQVENbmk8NBt9N6pBgZydlwrH/XCibPJd7Zn
         gJlTuvvTdZ2DSP7AvdCr9b9gNE41maulLYi4jPw4jx+dmOdjQ4oMgxPx0NsC2/VQ+9ur
         cgAXA5hzFdJLj8pPAH7G+l61RWSB/ir3/8xO82sDMn/62EXwAkjXGRvFs41XugCjAd94
         0GLIdFOm8/n8aTFicxxp77vtEn5gfF7mpebtq8I4/1vSZpnfNTzkskgrmtCk7lDvKCvI
         9zHg==
X-Forwarded-Encrypted: i=1; AFNElJ+UxRw5abnzdCTbzvhNcoinXeyXwcB8+Lcre5wmiNCwX3v+H9KgvYW+vfDKfbrDVMmEeLy90+yt5GPpQW25@lists.linaro.org
X-Gm-Message-State: AOJu0YyywVZf/xDUSeLTrYoYRSmPqG3Bk465C8BqvL8aunoYiRsUFOkc
	+EYCI5sR0Xv8PxLP3idDTBlgB4xYDt10L5arnSTSNRoqL8Kq1PJymPxlTVr9WAAhLT3vz1qQGkb
	lFqfEFUaliqJzQTZgAZlC3j+JzHI8tlrED7r/KIBjgFc2nBzhXeppcXy4mUkM6q2nIiXbJfOlDm
	/H+yGddFoZbSCWnH2j2rDll1Kx3Qoua7AvCcWKEUrI5v8=
X-Gm-Gg: Acq92OGTSn7nbuPSfYZ75qff4TO6gjGNpOEW/KKeNTxqBj/f8iBn1wOiXlhXG/wpHDk
	bk2aFv4AaH6Al5G03JeaYmIANmySt26Tktx9IvnS34zMVpAzth+Luw7qSgclhARo1Eu2L5J6/Iu
	IZaJ6i8T9qID+UE1UxsjUcOzIU/ttS/E6ycRB76B76gs3hAqNyY9MlgScjb6tj0HaTTqFX6S1Sx
	drSdg==
X-Received: by 2002:a05:690c:c513:b0:7b4:f43f:1a23 with SMTP id 00721157ae682-7c95d1d5de1mr201683087b3.34.1779182241784;
        Tue, 19 May 2026 02:17:21 -0700 (PDT)
X-Received: by 2002:a05:690c:c513:b0:7b4:f43f:1a23 with SMTP id
 00721157ae682-7c95d1d5de1mr201682637b3.34.1779182241263; Tue, 19 May 2026
 02:17:21 -0700 (PDT)
MIME-Version: 1.0
References: <20260512-v2_20230123_tjmercier_google_com-v1-0-6326701c3691@redhat.com>
 <20260512-v2_20230123_tjmercier_google_com-v1-2-6326701c3691@redhat.com>
 <8ef38815-6ae9-4359-86d4-042554357639@amd.com> <CABdmKX2uwZ12kYJYPJGfWxuMBOJS=64b1GRj72tfB5D=NKM22w@mail.gmail.com>
 <CADSE00Jq_uvNgvxgPze0mEdUd+hF4-DPZkHy0KroWHZzygf4WA@mail.gmail.com>
 <CABdmKX3DhejYBis9htLDnzPrG7vuF3R3URLVNEbnyd61SSsx=g@mail.gmail.com>
 <CAGsJ_4zyecY6E-=Tm4_couT7uoM9LMcFdTMUPkZAjj4zUKE-dQ@mail.gmail.com>
 <cb84c2ee-9de1-4565-b2e0-60984721228f@amd.com> <CADSE00Lc42s2bzXzV5D7t1Enf56u4BVj-yXLp3Yxhm0=qMPvuw@mail.gmail.com>
 <9cc79977-9a42-40eb-bfa7-460881c1e10f@amd.com>
In-Reply-To: <9cc79977-9a42-40eb-bfa7-460881c1e10f@amd.com>
From: Albert Esteve <aesteve@redhat.com>
Date: Tue, 19 May 2026 11:17:09 +0200
X-Gm-Features: AVHnY4IPueDokk-vXqsRnZz3u8JK7NQGe3IxviX_AiFOJ3NwW-K39W0igYKchDQ
Message-ID: <CADSE00Lxti-MabrZq9KWijRxTHX49NOAV=hMdfLdqKrj-C=Jug@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: BEXKCrEEZPTFn1ecLjR4b50d0pfc97Pp8PaVizMk7oA_1779182242
X-Mimecast-Originator: redhat.com
X-Spamd-Bar: ----
Message-ID-Hash: RZ5GOPQ5YNGZZSK3TDEOLOSTWKQLHHTH
X-Message-ID-Hash: RZ5GOPQ5YNGZZSK3TDEOLOSTWKQLHHTH
X-MailFrom: aesteve@redhat.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Barry Song <baohua@kernel.org>, "T.J. Mercier" <tjmercier@google.com>, Tejun Heo <tj@kernel.org>, Johannes Weiner <hannes@cmpxchg.org>, =?UTF-8?Q?Michal_Koutn=C3=BD?= <mkoutny@suse.com>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, Michal Hocko <mhocko@kernel.org>, Roman Gushchin <roman.gushchin@linux.dev>, Shakeel Butt <shakeel.butt@linux.dev>, Muchun Song <muchun.song@linux.dev>, Andrew Morton <akpm@linux-foundation.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, Christian Brauner <brauner@kernel.org>, Paul Moore <paul@paul-moore.com>, James Morris <jmorris@namei.org>, "Serge E. Hallyn" <serge@hallyn.com>, Stephen Smalley <stephen.smalley.work@gmail.com>, Ondrej Mosnacek <omosnace@redhat.com>, Shuah Khan <shuah@kernel.org>, cgroups@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel
 .org, dri- <devel@lists.freedesktop.org>, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org, linux-security-module@vger.kernel.org, selinux@vger.kernel.org, linux-kselftest@vger.kernel.org, mripard@kernel.org, echanude@redhat.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 2/5] dma-heap: charge dma-buf memory via explicit memcg
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RZ5GOPQ5YNGZZSK3TDEOLOSTWKQLHHTH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.59 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[redhat.com:s=mimecast20190719];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[36];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:-];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aesteve@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,google.com,cmpxchg.org,suse.com,lwn.net,linuxfoundation.org,linaro.org,linux.dev,linux-foundation.org,collabora.com,arm.com,paul-moore.com,namei.org,hallyn.com,gmail.com,redhat.com,vger.kernel.org,vger.kernel,lists.freedesktop.org,lists.linaro.org,kvack.org];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 3D47157B11C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVHVlLCBNYXkgMTksIDIwMjYgYXQgOTo1M+KAr0FNIENocmlzdGlhbiBLw7ZuaWcNCjxjaHJp
c3RpYW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOg0KPg0KPiBPbiA1LzE4LzI2IDE0OjA2LCBBbGJl
cnQgRXN0ZXZlIHdyb3RlOg0KPiA+Pj4+PiB1ZG1hYnVmcyBhcmUgYWxyZWFkeQ0KPiA+Pj4+PiBt
ZW1jZy1jaGFyZ2VkLCBzbyBhZGRpbmcgYSBzZXBhcmF0ZSBNRU1DR19ETUFCVUYgd291bGQgZG91
YmxlIGNvdW50Lg0KPiA+Pj4+PiBBcmUgdGhlcmUgYW55IG90aGVyIGV4cG9ydGVycyB5b3UgaGFk
IGluIG1pbmQgdGhhdCB3b3VsZCBiZW5lZml0IGZyb20NCj4gPj4+Pj4gdGhpcyBhcHByb2FjaD8N
Cj4gPj4NCj4gPj4gV2VsbCBhcGFydCBmcm9tIERNQS1idWYgbWVtZmRfY3JlYXRlKCkgaXMgb25l
IG9mIHRoZSB0aGluZ3Mgd2hpY2ggYXMgYnJva2VuIG91ciBuZWNrIGluIHRoZSBwYXN0IGEgY291
cGxlIG9mIHRpbWVzLg0KPiA+Pg0KPiA+PiBCdXQgdGhpbmtpbmcgbW9yZSBhYm91dCBpdCB3aGF0
IGlmIGluc3RlYWQgb2YgbWFraW5nIHRoaXMgRE1BLWJ1ZiBoZWFwcyBzcGVjaWZpYyB3aGF0IGlm
IHdlIGhhdmUgYSBnZW5lcmFsIGNncm91cHMgZnVuY3Rpb24gd2hpY2ggYWxsb3dzIHRvIGNoYW5n
ZSBhY2NvdW50aW5nIG9mIGEgYnVmZmVyIHJlZmVyZW5jZWQgYnkgYSBmaWxlIGRlc2NyaXB0b3Ig
dG8gYSBkaWZmZXJlbnQgcHJvY2Vzcz8NCj4gPj4NCj4gPj4gVGhhdCB3b3VsZCBjb3ZlciBub3Qg
b25seSB0aGUgRE1BLWJ1ZiBoZWFwcyB1c2UgY2FzZSwgYnV0IGFsc28gYWxsIG90aGVyIERNQS1i
dWYgd2l0aCBkbWVtIGFuZCB3aGF0ZXZlciB3ZSBjb21lIHVwIGluIHRoZSBmdXR1cmUgYXMgd2Vs
bC4NCj4gPg0KPiA+IEkgcmVtb3ZlZCBhIGRyYWZ0IGFkZGluZyBhbiBpb2N0bCBmb3IgY2hhcmdl
IHRyYW5zZmVyIGZyb20gdGhlIHNlcmllcw0KPiA+IGJlZm9yZSBzZW5kaW5nIGJlY2F1c2UgSSB3
YW50ZWQgdG8gZm9jdXMgb24gdGhlIGNoYXJnZV9waWRfZmQgYXBwcm9hY2gNCj4gPiBhbmQga2Vl
cCB0aGluZ3Mgc2ltcGxlLCBkZWZlcnJpbmcgdGhlIHJlY2hhcmdlIHBhdGggdG8gYSBmb2xsb3ct
dXANCj4gPiBkZXBlbmRpbmcgb24gZmVlZGJhY2suDQo+ID4NCj4gPiBUaGUgbWFpbiBkaWZmZXJl
bmNlIGJldHdlZW4gbXkgcmVtb3ZlZCBkcmFmdCBhbmQgd2hhdCB5b3UncmUNCj4gPiBkZXNjcmli
aW5nLCBpaXVjLCBpcyBzY29wZSBhbmQgbGF5ZXI6IG15IGRyYWZ0IHdhcyBhbiBleHBsaWNpdCBp
b2N0bA0KPiA+IG9uIHRoZSBkbWEtYnVmIGZkIHRoYXQgdGhlIGNvbnN1bWVyIGNhbGxzIHRvIGNs
YWltIHRoZSBjaGFyZ2UgKHNlZQ0KPiA+IGJlbG93KSwgd2hpbGUgeW91IHNlZW0gdG8gYmUgc3Vn
Z2VzdGluZyBhIG1vcmUgZ2VuZXJhbCBrZXJuZWwtaW50ZXJuYWwNCj4gPiBmdW5jdGlvbiB0aGF0
IGNvdWxkIHdvcmsgYWNyb3NzIGJ1ZmZlciB0eXBlcyBhbmQgY2dyb3VwIGNvbnRyb2xsZXJzLA0K
PiA+IHNvIG5vdCBuZWNlc3NhcmlseSB1c2Vyc3BhY2UtaW5pdGlhdGVkPyBBIGtlcm5lbC1pbnRl
cm5hbCBmdW5jdGlvbg0KPiA+IHdpbGwgbmVlZCBhIHdheSB0byBpZGVudGlmeSB0aGUgdGFyZ2V0
IHByb2Nlc3MsIHdoaWNoIHNvdW5kcyBzaW1pbGFyDQo+ID4gdG8gdGhlIGJpbmRlci1iYWNrZWQg
YXBwcm9hY2ggZnJvbSBUSiBbMV0uIEZvciBldmVyeXRoaW5nIGVsc2UsIHRoZQ0KPiA+IHJlY2Vp
dmVyIHN0aWxsIG5lZWRzIHRvIGRlY2xhcmUgaXRzZWxmLCB3aGljaCB0aGUgaW9jdGwgYWNjb21w
bGlzaGVzLg0KPiA+DQo+ID4gYGBgDQo+ID4gIyBXaGVuIGFuIGFwcCBpbXBvcnRzIGEgZGFlbW9u
LWFsbG9jYXRlZCBidWZmZXIsIGl0IGNhbiB0cmFuc2ZlciB0aGUNCj4gPiBjaGFyZ2UgdG8gaXRz
ZWxmOg0KPiA+IGludCBidWZfZmQgPSByZWNlaXZlX2RtYWJ1Zl9mcm9tX2RhZW1vbigpOw0KPiA+
IGlvY3RsKGJ1Zl9mZCwgRE1BX0JVRl9JT0NUTF9YRkVSX0NIQVJHRSk7IC8qIGNoYXJnZSBub3cg
YXR0cmlidXRlZCB0bw0KPiA+IGFwcHMncyBjZ3JvdXAgKi8NCj4NCj4gV2VsbCB0aGF0IHRoaW5r
aW5nIGdvZXMgaW50byB0aGUgcmlnaHQgZGlyZWN0aW9uLCBidXQgdGhlIHJlcXVpcmVtZW50cyBh
cmUgc3RpbGwgbm90IGNvbXBsZXRlbHkgY292ZXJlZCBhcyBmYXIgYXMgSSBjYW4gc2VlLg0KPg0K
PiBMZXQgbWUgZXhwbGFpbiBiZWxvdyBhIGJpdCBtb3JlLg0KPg0KPiA+DQo+ID4gWzFdIGh0dHBz
Oi8vbG9yZS5rZXJuZWwub3JnL2Nncm91cHMvMjAyMzAxMDkyMTM4MDkuNDE4MTM1LTEtdGptZXJj
aWVyQGdvb2dsZS5jb20vDQo+ID4NCj4gPj4NCj4gPj4gVGhlIG9ubHkgZHJhd2JhY2sgSSBjYW4g
c2VlIGlzIHRoYXQgRE1BLWJ1ZiBoZWFwIGFsbG9jYXRpb25zIHdvdWxkIGJlIHRlbXBvcmFyaWx5
IGFjY291bnRlZCB0byB0aGUgbWVtb3J5IGFsbG9jYXRpb24gZGFlbW9uLCBidXQgSSBkb24ndCB0
aGluayB0aGF0IHRoaXMgd291bGQgYmUgYSBwcm9ibGVtLg0KPiA+DQo+ID4gVGhlIG1haW4gcmVh
c29ucyB3ZSBtb3ZlZCBhd2F5IGZyb20gVEoncyB0cmFuc2Zlci1iYXNlZCBhcHByb2FjaA0KPiA+
IHRvd2FyZCBgY2hhcmdlX3BpZF9mZGAgYXJlOiBhdm9pZCB0aGUgdHJhbnNpZW50IGNoYXJnZSB3
aW5kb3cgb24gdGhlDQo+ID4gZGFlbW9uJ3MgY2dyb3VwOyBhbmQgdG8gZGVjb3VwbGUgZnJvbSBC
aW5kZXIsIGFsbG93aW5nIGFueSBhbGxvY2F0b3INCj4gPiB0byB1c2UgaXQuDQo+DQo+IFllYWgg
dGhvc2UgY29uY2VybnMgYXJlIGNvbXBsZXRlbHkgY29ycmVjdC4NCj4NCj4gVGhlIGFwcGxpY2F0
aW9uIHNob3VsZCBub3Qgdm9sdW50ZWVyaW5nIHNheXMgJ0NoYXJnZSB0aGF0IGJ1ZmZlciB0byBt
ZS4nLCBidXQgcmF0aGVyIHRoYXQgdGhlIGRhZW1vbiBzYXlzIGZvcmNlIGNoYXJnZSB0aGF0IGJ1
ZmZlciB0byB0aGlzIGFwcGxpY2F0aW9uIGFuZCB0ZWxsIG1lIHdoZW4gdGhlIGFwcGxpY2F0aW9u
IGlzIG92ZXIgaXRzIGxpbWl0Lg0KPg0KPiA+DQo+ID4gVGVjaG5pY2FsbHksIGJvdGggYXBwcm9h
Y2hlcyBjb3VsZCBjb2V4aXN0LCB0aG91Z2guIE9mIHRoZSB0aHJlZQ0KPiA+IHNjZW5hcmlvcyBU
SiBkZXNjcmliZWQ6DQo+ID4gLSBTY2VuYXJpbyAyIGlzIGRpcmVjdGx5IGFkZHJlc3NlZCBieSBj
aGFyZ2VfcGlkX2ZkIGFwcHJvYWNoIHdpdGhvdXQNCj4gPiBhbnkgdHJhbnNpZW50IGNoYXJnZSBv
biB0aGUgZGFlbW9uIGF0IHRoZSBjb3N0IG9mIG9uZSBleHRyYSBmaWVsZCBpbg0KPiA+IHRoZSBo
ZWFwIGlvY3RsIHVBUEkgc3RydWN0Lg0KPg0KPiBZZWFoIGV4dGVuZGluZyB0aGUgdUFQSSB0byBw
YXNzIGluIHRoZSBwaWQgb24gYWxsb2NhdGlvbiB0aW1lIGlzIG5vdCBtdWNoIG9mIGEgcHJvYmxl
bSwgYnV0IHlvdSBhbHNvIG5lZWQgdG8gbW9kaWZ5IHRoZSB3aG9sZSBzdGFjayBhYm92ZSBpdCBh
bmQgdGhhdCBpcyBhIGJpdCBtb3JlIHRyaWNraWVyLg0KPg0KPiA+IC0gU2NlbmFyaW8gMyBjYW4g
YmUgaGFuZGxlZCBieSB0aGUgY2hhcmdlIHRyYW5zZmVyIGZ1bmN0aW9uIHdpdGhvdXQNCj4gPiBj
aGFuZ2VzIHRvIFN1cmZhY2VGbGluZ2VyLiBUaGUgYXBwIG9yIGRlcXVldWVCdWZmZXIgY2xhaW1z
IHRoZSBjaGFyZ2UNCj4gPiBmb3IgaXRzZWxmIG9yIHRoZSBhcHAsIHJlc3BlY3RpdmVseSAoZGVw
ZW5kaW5nIG9uIHdoZXRoZXIgd2UgaW5jbHVkZSBhDQo+ID4gcGlkX2ZkIGZpZWxkIGluIHRoZSB0
cmFuc2ZlciBpb2N0bCkuIEl0IGFsc28gY292ZXJzIG5vbi1oZWFwDQo+ID4gZXhwb3J0ZXJzLiBU
aGUgY29uIGluIGJvdGggdmFyaWFudHMgaXMgdGhlIHRyYW5zaWVudCBjaGFyZ2Ugd2luZG93IG9u
DQo+ID4gdGhlIGRhZW1vbi4NCj4NCj4gSXQgc2hvdWxkIGJlIHRyaXZpYWwgZm9yIHRoZSBkZWFt
b24gdG8gY2hhcmdlIHRoZSBidWZmZXIgdG8gYW4gYXBwbGljYXRpb24gYmVmb3JlIGhhbmRpbmcg
aXQgb3V0Lg0KDQpZZWFoLCB0cnVlLg0KDQo+DQo+ID4gQm90aCBhcHByb2FjaGVzIHNoaWZ0IHRo
ZSByZXNwb25zaWJpbGl0eSBmb3IgY29ycmVjdCBjaGFyZ2luZw0KPiA+IGF0dHJpYnV0aW9uIHRv
IHVzZXJzcGFjZTogZmlyc3QsICdjaGFyZ2VfcGlkX2ZkYCBvbiB0aGUgYWxsb2NhdG9yJ3MNCj4g
PiBzaWRlLCBhbmQgdGhlIHRyYW5zZmVyIGNoYXJnZSBvbiB0aGUgY29uc3VtZXIncyBzaWRlLg0K
Pg0KPiBZZWFoIHRoYXQncyB3aHkgSSBzYWlkIGl0IHdvdWxkIGJlIGJldHRlciBpZiB3ZSBkbyB0
aGF0IHdpdGhvdXQgYW55IHVBUEkgY2hhbmdlLCBidXQgd2l0aCBhbGwgdGhlIHVBUEkgd2UgaGF2
ZSB0byB0cmFuc2ZlciBmaWxlIGRlc2NyaXB0b3JzIChkdXAoKSwgZm9yaygpLCBwYXNzaW5nIEZE
cyBvdmVyIHNvY2tldHMgZXRjLi4uKSBpdCBjb3VsZCBiZSByZWFsbHkgdHJpY2t5IHRvIGltcGxl
bWVudCB0aGF0Lg0KPg0KPiA+IERlY2lkaW5nIG9uIG9uZSwgdGhlIG90aGVyIG9yIGJvdGggZGVw
ZW5kcyBvbiBob3cgbXVjaCB3ZSB2YWx1ZQ0KPiA+IGF2b2lkaW5nIHRyYW5zaWVudCBhdHRyaWJ1
dGlvbiwgYW5kIGhvdyBtdWNoIHdlIG5lZWQgYSBub24taGVhcA0KPiA+IGdlbmVyaWMgc29sdXRp
b24uIFdpdGggdGhlIFhGRVJfQ0hBUkdFIHdlIGNhbiBjb3ZlciBib3RoLiBUaHVzLCB0aGUNCj4g
PiBgY2hhcmdlX3BpZF9mZGAgYXBwcm9hY2ggaW4gdGhpcyBSRkMgY2FuIGJlIHNlZW4gYXMgYQ0K
PiA+IHBlcmZvcm1hbmNlL3N0cmljdG5lc3Mgb3B0aW1pc2F0aW9uLCBlbGltaW5hdGluZyB0cmFu
c2llbnQgY2hhcmdlcyB0bw0KPiA+IHRoZSBkYWVtb24gYXQgdGhlIGNvc3Qgb2YgYSBwZXJtYW5l
bnQgdUFQSSBhZGRpdGlvbiB0byB0aGUgaGVhcCBpb2N0bA0KPiA+IHN0cnVjdCwgYnV0IG5vdCBz
dHJpY3RseSByZXF1aXJlZCBmb3IgY29ycmVjdG5lc3MuDQo+DQo+IFdlbGwgYWxsIHdlIG5lZWQg
aXMgYSB1QVBJIHdoaWNoIHNheXMgY2hhcmdlIHRoaXMgYnVmZmVyIChmaWxlIGRlc2NyaXB0b3Ip
IHRvIHRoYXQgY2dyb3VwIChwaWRmZCkuDQoNClNvIHlvdSBmYXZvciBoYXZpbmcgb25seSB0aGUg
WEZFUl9DSEFSR0UgdmFyaWFudC4gVGhhdCBpcyBmaW5lIHdpdGggbWUuDQpJZiB0aGF0IGlzIGZp
bmUgZm9yIG90aGVycyBhbHNvIHRoYXQgY291bGQgYmUgdGhlIHdheSBmb3J3YXJkLiBJZiB3ZQ0K
ZXh0ZW5kIGl0IHRvIGFjY2VwdCBlaXRoZXIgYSBwaWRmZCBvciBhIGNncm91cCBmZCAoYXMgY29t
bWVudGVkDQpwcmV2aW91c2x5KSwgd2UgY2FuIGNvdmVyIGFsbCBkbWEtYnVmIHVzZSBjYXNlcyB3
aXRoIGEgc2luZ2xlDQpwcmltaXRpdmU6DQpgYGANCmlvY3RsKGJ1Zl9mZCwgRE1BX0JVRl9JT0NU
TF9YRkVSX0NIQVJHRSwgY2hhcmdlX2ZkKTsNCmBgYA0KV2l0aCB0aGUgZGFlbW9uIGludm9raW5n
IHRoaXMgaW9jdGwgYmVmb3JlIGhhbmRpbmcgb3V0IHRoZSBidWZfZmQuDQoNClRoaXMgc2hvdWxk
IGNvdmVyIG1vc3QgdXNlY2FzZXM/IEV4Y2VwdCBmb3IgdGhlIG1lbWZkIGNhc2UsIHdoaWNoDQpy
ZXF1aXJlcyBhIHNlcGFyYXRlIG1lY2hhbmlzbS4gVGhhdCB3b3VsZCBiZSBmb2xsb3ctdXAgd29y
ay4NCg0KPg0KPiBXaXRoIHRoaXMgYXQgaGFuZCB3ZSBzaG91bGQgYmUgYWJsZSB0byBoYW5kbGUg
YWxsIHVzZSBjYXNlcyBhdCB0aGUgc2FtZSB0aW1lLg0KPg0KPiA+IE9uIHRoZSBvdGhlciBoYW5k
LA0KPiA+IGlmIHdlIGFncmVlIG9uIHRoZSBlbmQgZ29hbCBvZiBtaWdyYXRpbmcgb3RoZXIgZXhw
b3J0ZXJzIHRvIHVzZQ0KPiA+IGRtYS1idWYgaGVhcHMNCj4NCj4gVGhhdCB3b24ndCB3b3JrLiBE
TUEtYnVmIGhlYXBzIGlzIGFjdHVhbGx5IG9ubHkgYSByYXRoZXIgc21hbGwgYW5kIEFucm9pZCBz
cGVjaWZpYyB1c2UgY2FzZS4NCj4NCj4gV2UgaGF2ZSB0b25zIG9mIG90aGVyIGludGVyZmFjZXMg
dG8gYWxsb2NhdGUgRE1BLWJ1ZnMgd2hpY2ggbmVlZCB0byBzdGF5IGFyb3VuZCBiZWNhdXNlIG9m
IEhXIHJlc3RyaWN0aW9ucyBhbmQgd2UgZG8gbmVlZCBhIHNvbHV0aW9uIGZvciB0aGVtIGFzIHdl
bGwuDQo+DQo+IFJlZ2FyZHMsDQo+IENocmlzdGlhbi4NCj4NCj4gPiwgYW5kIHNjZW5hcmlvIDMg
aXMgYWRkcmVzc2VkIGJ5IGFkZGluZyB0aGUgYXBwJ3MgcGlkX2ZkDQo+ID4gdG8gU3VyZmFjZUZs
aW5nZXIsIHRoZW4gYGNoYXJnZV9waWRfZmRgIGFsb25lIGlzIGEgY29oZXJlbnQvc3VmZmljaWVu
dA0KPiA+IGFwcHJvYWNoIGRlc3BpdGUgdGhlIHVBUEkgY2hhbmdlLg0KPiA+DQo+ID4+DQo+ID4+
IFJlZ2FyZHMsDQo+ID4+IENocmlzdGlhbi4NCj4gPj4NCj4gPj4+DQo+ID4+PiBUaGFua3MNCj4g
Pj4+IEJhcnJ5DQo+ID4+DQo+ID4NCj4NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGlu
YXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
