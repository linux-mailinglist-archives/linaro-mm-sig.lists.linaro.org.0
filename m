Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YJsgKkujC2ooKQUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 01:39:55 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C2135750C5
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 01:39:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 83E9E40705
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 23:39:53 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	by lists.linaro.org (Postfix) with ESMTPS id 8D9C540475
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 23:39:30 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20251104 header.b=hIlFxatb;
	arc=pass ("google.com:s=arc-20240605:i=1");
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.47 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-48d1c670255so635e9.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 16:39:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1779147569; cv=none;
        d=google.com; s=arc-20240605;
        b=ibYWefFoWAg6fzLBncFzQ6ycBk0lx2C8k/0ApAYqJrnS+viS4kHn+/FPBOyTHjoKZt
         cbQ3WasZ071wNP2apoHiUUyWtCxpVc+o+K5p3bVWyzW18+IGfKVyPCEZSaBscr+CIt3x
         uz+rcNh6D9HEcjK081xd1M+r0h2J3g++OHn+SoUjXioDOmc21VSntlL6qCZ5gJCIvSUY
         N5wfLLYHVIipt36wduVpCrUEB4IMJfVjO5gw7r/hO5fNDwEe3mHwj+opsn+qUOWEsV9S
         Zb/BeQBOBk/rC0e8y2HvcutniUWvunmE0IRJ2h7mijI98Ubk25WKo1DdfSIKa/WzYWsZ
         GixQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=itOYKoJgfjMZD3HtReaYbMSuntrxVom1KXxY5d6gQNg=;
        fh=UikuQYIN3r9nx2++o1QT3XntdZ4NbEfcw9kurxdJT70=;
        b=P6hPQXL3g+gWV6UiadWuG+mt0lu9RqJUAeNMtU6QUR1SnZ2QQinvEaz25UcycLZ67v
         iefqn9m8yY/AlPjg0XzB8h7i55h9eOr2m6jiSqom1MjdLKbhcCot3mfrh+C6nhdgBQeN
         l6O6ZbjeO0XVXnaTDVijy9B9avXn1jOCvj9iEpRyetJN9J++usLFJEF+JwZTNfRuGpck
         89etys0FLXcoQ0jLH+6AK2N4X+yh7AKTnxEjx6ZEBJ/DHo21p1pLzd+clNCJsejwYYU1
         fqKddRciirkbp+7CgoH9bzkmfPaBEWD1Ofet0ePLARoEv/N/uVaEelazppW8yyOd+wds
         h0IA==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1779147569; x=1779752369; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=itOYKoJgfjMZD3HtReaYbMSuntrxVom1KXxY5d6gQNg=;
        b=hIlFxatbSq+JHmnHOOk+RaNniUDzJunz+Stk0t6+zh3WclVqfyRUHBzyMtddw+ouW3
         ZhOyWvmpEs6OSLmOkCZbpZlhPdeT2UHGH1iVt3GXygu1v0Q7XnTwSFEuC/VvZdzMmHTA
         0RybSgOqbIBVc+w97OTyEzCDQqV4Plb0+NUmotljxCoPDyULccxFKhMfHI2g7JckBbs0
         UV0G+SOafUvTWqLhrO397vBH/LTnx43sV3qEnEX1t93Ofyuv3EEWILtb+smmS/yHRz53
         6I3QX9SK7XpbkygpvYvOljBGbkgXoBTLtlrSPpSI+ZLR2jWiRiB5iEONtWYt3dhO1a2z
         dRMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779147569; x=1779752369;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=itOYKoJgfjMZD3HtReaYbMSuntrxVom1KXxY5d6gQNg=;
        b=msg767mj2fNpccU6TtNtL420eMe/NlLX/LFxfRX2x/WPBxx0mm/E7MyyOhqmtTWQAN
         +cIyo3uY7SxYtq4Tbk6yotw3AefJEti3d8mPR1XYh1sEo4FOR/GUDgsl2TBopRkGOG8P
         Uhf/vnUFBdclTOvn9l1lDs/8DVa4ahzfD8iyzmUIJLkEnbXggWqG/vW6xPP5051QOwrP
         kDCwzdjyPWRnt0+KsmPNrU02n4fB3LNOA2gTq+p2kC3nFXuGX8ys/d6XIieeHV89YNJ/
         nOcjQV+ZUDtAm6crF6CyUdnfscYLNzfdb3/aYC45bsgzMTkJv8e2URq7DwVMEb+Gw68L
         6zhw==
X-Forwarded-Encrypted: i=1; AFNElJ+RI8hPLxz/EouaEegS5pWFDqLETS4pumSd2CVppkrpj7I8QkkP076hi/GXHTvrHefny3qWJOUrqZehSc/7@lists.linaro.org
X-Gm-Message-State: AOJu0YypGm/c4824nKHE9VOqCp8/IUrW62zWFPmrc5U5KDdztEBn8jOu
	8m2ewvm/gycXLgk19Hyr1GrEm6pOPOEYCmSVa1JKWUE+9lUgkquKsDXJ9YnPMSoRF4Fxj2ZJYx/
	s8no8PfhTALkI9GmvqFaSBtlQaelsPqjWlmC8/3bE
X-Gm-Gg: Acq92OFQu145BkBmDXFwbfI90Fx/yS4NfHve50dp9WX3ttd4Fp0iVz5uIVcr37hLmwD
	b2RCfaGEAaQ+Q26wJHWYa2QM/OKU657OLmi0FWGNqzFiPjnxu2n2XdpKouFun4C5pTmdicmgcwp
	V51EP32dNQQ6pJ5YCvWGqRC2FbWVgM+w8CFPh7AMx/dEs/8aGltil2ksTobvqRJOZGzToOIiQcB
	eIqwmitimytojPMwfuDkMP4U7dEVLQ7QwCgvEuMS8PfinGunAq0ShXxVyqbjjyAvv0PcgkGgAmG
	mgXy3s9Y1+t7VnjC9TBGwtUyLekurP9wvvG88G6lfNWzKfRL
X-Received: by 2002:a05:600c:828f:b0:485:1a54:9407 with SMTP id
 5b1f17b1804b1-48ffa06d607mr3320695e9.0.1779147569161; Mon, 18 May 2026
 16:39:29 -0700 (PDT)
MIME-Version: 1.0
References: <20260512-v2_20230123_tjmercier_google_com-v1-0-6326701c3691@redhat.com>
 <20260512-v2_20230123_tjmercier_google_com-v1-2-6326701c3691@redhat.com>
 <CAGsJ_4xfznffbjOaNKwnN6oZk_H6pqOzYqd1zx4Q9XrocdzV8A@mail.gmail.com>
 <CADSE00LjJcL8P5M-UPEpzZijU70uEmUirnin29N8YR5W5D-oFg@mail.gmail.com> <CAGsJ_4xwJ7SAhKPJyRtMTw6psTO7H1EcFFpDw0po1W8PX4FE8g@mail.gmail.com>
In-Reply-To: <CAGsJ_4xwJ7SAhKPJyRtMTw6psTO7H1EcFFpDw0po1W8PX4FE8g@mail.gmail.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Mon, 18 May 2026 16:39:14 -0700
X-Gm-Features: AVHnY4JenMsTlW8PdrNyXvGhnvZE3E4HsfXXDBDrw2kB1e9N8h1WWqyjOLM9WZU
Message-ID: <CABdmKX2+PqZJc588dL7Yp7hYDnfXw7LRCKfLJ6n5=faKBvWBWg@mail.gmail.com>
To: Barry Song <baohua@kernel.org>
X-Spamd-Bar: ----
Message-ID-Hash: BMGFWGYBU4I7VYI4WOWUNPTRLU33KQZB
X-Message-ID-Hash: BMGFWGYBU4I7VYI4WOWUNPTRLU33KQZB
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Albert Esteve <aesteve@redhat.com>, Tejun Heo <tj@kernel.org>, Johannes Weiner <hannes@cmpxchg.org>, =?UTF-8?Q?Michal_Koutn=C3=BD?= <mkoutny@suse.com>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Michal Hocko <mhocko@kernel.org>, Roman Gushchin <roman.gushchin@linux.dev>, Shakeel Butt <shakeel.butt@linux.dev>, Muchun Song <muchun.song@linux.dev>, Andrew Morton <akpm@linux-foundation.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, Christian Brauner <brauner@kernel.org>, Paul Moore <paul@paul-moore.com>, James Morris <jmorris@namei.org>, "Serge E. Hallyn" <serge@hallyn.com>, Stephen Smalley <stephen.smalley.work@gmail.com>, Ondrej Mosnacek <omosnace@redhat.com>, Shuah Khan <shuah@kernel.org>, cgroups@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.or
 g, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org, linux-security-module@vger.kernel.org, selinux@vger.kernel.org, linux-kselftest@vger.kernel.org, mripard@kernel.org, echanude@redhat.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 2/5] dma-heap: charge dma-buf memory via explicit memcg
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BMGFWGYBU4I7VYI4WOWUNPTRLU33KQZB/>
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
	FREEMAIL_CC(0.00)[redhat.com,kernel.org,cmpxchg.org,suse.com,lwn.net,linuxfoundation.org,linaro.org,amd.com,linux.dev,linux-foundation.org,collabora.com,arm.com,google.com,paul-moore.com,namei.org,hallyn.com,gmail.com,vger.kernel.org,vger.kernel.or,lists.freedesktop.org,lists.linaro.org,kvack.org];
	DKIM_TRACE(0.00)[google.com:-];
	FROM_NEQ_ENVFROM(0.00)[tjmercier@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,linaro.org:email,lists.linaro.org:rdns,lists.linaro.org:helo]
X-Rspamd-Queue-Id: 4C2135750C5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gTW9uLCBNYXkgMTgsIDIwMjYgYXQgMzo0M+KAr1BNIEJhcnJ5IFNvbmcgPGJhb2h1YUBrZXJu
ZWwub3JnPiB3cm90ZToNCj4NCj4gT24gTW9uLCBNYXkgMTgsIDIwMjYgYXQgODoxNuKAr1BNIEFs
YmVydCBFc3RldmUgPGFlc3RldmVAcmVkaGF0LmNvbT4gd3JvdGU6DQo+ID4NCj4gPiBPbiBTYXQs
IE1heSAxNiwgMjAyNiBhdCA5OjM34oCvQU0gQmFycnkgU29uZyA8YmFvaHVhQGtlcm5lbC5vcmc+
IHdyb3RlOg0KPiA+ID4NCj4gPiA+IE9uIFR1ZSwgTWF5IDEyLCAyMDI2IGF0IDU6MTjigK9QTSBB
bGJlcnQgRXN0ZXZlIDxhZXN0ZXZlQHJlZGhhdC5jb20+IHdyb3RlOg0KPiA+ID4gPg0KPiA+ID4g
PiBPbiBlbWJlZGRlZCBwbGF0Zm9ybXMgYSBjZW50cmFsIHByb2Nlc3Mgb2Z0ZW4gYWxsb2NhdGVz
IGRtYS1idWYNCj4gPiA+ID4gbWVtb3J5IG9uIGJlaGFsZiBvZiBjbGllbnQgYXBwbGljYXRpb25z
LiBXaXRob3V0IGEgd2F5IHRvDQo+ID4gPiA+IGF0dHJpYnV0ZSB0aGUgY2hhcmdlIHRvIHRoZSBy
ZXF1ZXN0aW5nIGNsaWVudCdzIGNncm91cCwgdGhlDQo+ID4gPiA+IGNvc3QgbGFuZHMgb24gdGhl
IGFsbG9jYXRvciwgbWFraW5nIHBlci1jZ3JvdXAgbWVtb3J5IGxpbWl0cw0KPiA+ID4gPiBpbmVm
ZmVjdGl2ZSBmb3IgdGhlIGFjdHVhbCBjb25zdW1lcnMuDQo+ID4gPiA+DQo+ID4gPiA+IEFkZCBj
aGFyZ2VfcGlkX2ZkIHRvIHN0cnVjdCBkbWFfaGVhcF9hbGxvY2F0aW9uX2RhdGEuIFdoZW4gc2V0
IHRvDQo+ID4gPiA+IGEgdmFsaWQgcGlkZmQsIERNQV9IRUFQX0lPQ1RMX0FMTE9DIHJlc29sdmVz
IHRoZSB0YXJnZXQgdGFzaydzDQo+ID4gPiA+IG1lbWNnIGFuZCBjaGFyZ2VzIHRoZSBidWZmZXIg
dGhlcmUgdmlhIG1lbV9jZ3JvdXBfY2hhcmdlX2RtYWJ1ZigpDQo+ID4gPiA+IGluc2lkZSBkbWFf
aGVhcF9idWZmZXJfYWxsb2MoKS4gV2l0aG91dCBjaGFyZ2VfcGlkX2ZkLCBhbmQgd2l0aA0KPiA+
ID4gPiB0aGUgbWVtX2FjY291bnRpbmcgbW9kdWxlIHBhcmFtZXRlciBlbmFibGVkLCB0aGUgYnVm
ZmVyIGlzIGNoYXJnZWQNCj4gPiA+ID4gdG8gdGhlIGFsbG9jYXRvcidzIG93biBjZ3JvdXAuDQo+
ID4gPiA+DQo+ID4gPiA+IEFkZGl0aW9uYWxseSwgY29tbWl0IDNjMjI3YmU5MDY1OSAoImRtYS1i
dWY6IHN5c3RlbV9oZWFwOiBhY2NvdW50IGZvcg0KPiA+ID4gPiBzeXN0ZW0gaGVhcCBhbGxvY2F0
aW9uIGluIG1lbWNnIikgYWRkcyBfX0dGUF9BQ0NPVU5UIHRvIHN5c3RlbS1oZWFwDQo+ID4gPiA+
IHBhZ2UgYWxsb2NhdGlvbnMuIEtlZXBpbmcgX19HRlBfQUNDT1VOVCB3b3VsZCBjaGFyZ2UgdGhl
IHNhbWUgcGFnZXMNCj4gPiA+ID4gdHdpY2UgKG9uY2UgdG8ga21lbSwgb25jZSB0byBNRU1DR19E
TUFCVUYpLCB0aHVzIHJlbW92ZSBpdCBhbmQgcm91dGUNCj4gPiA+ID4gYWxsIGFjY291bnRpbmcg
dGhyb3VnaCBhIHNpbmdsZSBNRU1DR19ETUFCVUYgcGF0aC4NCj4gPiA+ID4NCj4gPiA+IFsuLi5d
DQo+ID4gPg0KPiA+ID4gPiAtICAgICAgICAgICAgICAgaWYgKG1lbV9hY2NvdW50aW5nKQ0KPiA+
ID4gPiAtICAgICAgICAgICAgICAgICAgICAgICBmbGFncyB8PSBfX0dGUF9BQ0NPVU5UOw0KPiA+
ID4NCj4gPiA+IEhpIEFsYmVydCwNCj4gPiA+DQo+ID4gPiB3b3VsZCBpdCBiZSBiZXR0ZXIgdG8g
bW92ZSB0aGlzIGFuZCBpdHMgZGVzY3JpcHRpb24gdG8gcGF0Y2ggMT8gSXQNCj4gPiA+IGxvb2tz
IGxpa2UgcGF0Y2ggMSBhbHJlYWR5IGludHJvZHVjZXMgdGhlIGRvdWJsZSBhY2NvdW50aW5nIGNo
YW5nZXMsDQo+ID4gPiBhbmQgcGF0Y2ggMiBpcyBtYWlubHkganVzdCBzdXBwb3J0aW5nIHJlbW90
ZSBjaGFyZ2luZy4NCj4gPg0KPiA+IEhpIEJhcnJ5LA0KPiA+DQo+ID4gVGhhbmtzIGZvciBsb29r
aW5nIGludG8gdGhpcyBzZXJpZXMhIFllcywgaW4gbXkgaGVhZCBJIHdhcyB0cnlpbmcgdG8NCj4g
PiBrZWVwIHBhdGNoIDEsIHdoaWNoIHdhcyB0YWtlbiBmcm9tIGEgcHJldmlvdXMsIGRpZmZlcmVu
dCBzZXJpZXMsIGFuZA0KPiA+IHRoZW4gZGl2ZXJnZSBmcm9tIGl0IHN0YXJ0aW5nIHdpdGggcGF0
Y2ggMi4gVGhpcyB3b3VsZCBjbGFyaWZ5IHRoZQ0KPiA+IGRpZmZlcmVuY2UgYmV0d2VlbiB0aGUg
dHdvLiBCdXQgSSBjYW4gc2VlIGl0IGp1c3QgYWRkZWQgc29tZSBjb25mdXNpb24NCj4gPiAoZm9y
IGV4YW1wbGUsIHBhdGNoIDEgY2hhcmdlcyBvbiBkbWFfYnVmX2V4cG9ydCgpIGFuZCB0aGVuIGl0
IGlzIG1vdmVkDQo+ID4gdG8gZG1hX2hlYXBfYnVmZmVyX2FsbG9jKCkgaW4gcGF0Y2ggMikuIEkg
d2lsbCByZW9yZ2FuaXplIGl0IGJldHRlcg0KPiA+IGZvciB0aGUgbmV4dCB2ZXJzaW9uLCBpbmNs
dWRpbmcgeW91ciBzdWdnZXN0aW9uLg0KPg0KPiBZZXAsIEkgdW5kZXJzdGFuZCB0aGUgc2l0dWF0
aW9uIG5vdy4gSSBhbHNvIHVuZGVyc3RhbmQNCj4gdGhhdCB5b3Ugd2VyZSByZWZlcnJpbmcgdG8g
VC5KLidzIHBhdGNoLCB3aGljaCBjYXVzZWQNCj4gc29tZSBiYWNrLWFuZC1mb3J0aCBjb25mdXNp
b24gZm9yIHJlYWRlcnMgd2hlbiByZWFkaW5nDQo+IHBhdGNoZXMgMSBhbmQgMi4NCg0KQWxiZXJ0
LCBwbGVhc2UgZG9uJ3QgZmVlbCBvYmxpZ2F0ZWQgdG8ga2VlcCBteSBwYXRjaCBpbnRhY3QgaWYN
CmludGVncmF0aW5nIGl0IGludG8gb3RoZXIgcGF0Y2hlcyBzaW1wbGlmaWVzIHRoZSBzZXJpZXMu
DQoNCj4gPiA+IEFsc28sIG1lbV9hY2NvdW50aW5nIGlzIG9ubHkgdXNlZCBieSBzeXN0ZW1faGVh
cC5jOyBoYXMgdGhpcyBwYXRjaHNldA0KPiA+ID4gYWxzbyBlbGltaW5hdGVkIGl0cyBuZWVkPw0K
PiA+DQo+ID4gTm8sIG1lbV9hY2NvdW50aW5nIGlzIHN0aWxsIGhhbmRsZWQgaW4gdGhpcyBwYXRj
aCBmb3IgdGhlIGdlbmVyYWwgY2FzZQ0KPiA+IHdoZXJlIG5vIGBjaGFyZ2VfcGlkX2ZkYCBpcyB1
c2VkLiBTZWUgZG1hX2hlYXBfYnVmZmVyX2FsbG9jKCkgY29kZToNCj4gPg0KPiA+ICsgICAgICAg
aWYgKG1lbWNnKQ0KPiA+ICsgICAgICAgICAgICAgICBjc3NfZ2V0KCZtZW1jZy0+Y3NzKTsNCj4g
PiArICAgICAgIGVsc2UgaWYgKG1lbV9hY2NvdW50aW5nKQ0KPiA+ICsgICAgICAgICAgICAgICBt
ZW1jZyA9IGdldF9tZW1fY2dyb3VwX2Zyb21fbW0oY3VycmVudC0+bW0pOw0KPg0KPiBJIHNlZS4g
V2hhdCBmZWVscyBhIGJpdCBvZGQgdG8gbWUgaXMgdGhhdCBtZW1fYWNjb3VudGluZw0KPiBjb3Vs
ZCBlaXRoZXIgYmUgZHJvcHBlZCAod2l0aCB1bmNvbmRpdGlvbmFsIGNoYXJnaW5nKSwgb3INCj4g
aXQgc2hvdWxkIGNvdmVyIGJvdGggcmVtb3RlIGFuZCBsb2NhbCBjaGFyZ2UgY2FzZXMuDQo+DQo+
IEkgZG9u4oCZdCBoYXZlIGEgc3Ryb25nIG9waW5pb24gaGVyZeKAlGl0IGp1c3QgZmVlbHMgYSBi
aXQNCj4gc3RyYW5nZSwgc2luY2UgaXRzIGRlc2NyaXB0aW9uIGlzIHF1aXRlIGdlbmVyaWMgZm9y
IG1lbWNnOg0KPg0KPiAiRW5hYmxlIGNncm91cC1iYXNlZCBtZW1vcnkgYWNjb3VudGluZyBmb3Ig
ZG1hLWJ1ZiBoZWFwDQo+IGFsbG9jYXRpb25zIChkZWZhdWx0PWZhbHNlKS4iDQo+DQo+IEJlc3Qg
UmVnYXJkcw0KPiBCYXJyeQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNp
Zy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
