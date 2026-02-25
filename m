Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0HHUNECJn2nMcgQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 26 Feb 2026 00:44:00 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 3350319EF3C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 26 Feb 2026 00:44:00 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3BD163F756
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 Feb 2026 23:43:59 +0000 (UTC)
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com [209.85.219.50])
	by lists.linaro.org (Postfix) with ESMTPS id 3A6133F781
	for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Feb 2026 23:43:56 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b="T74/QDdj";
	spf=pass (lists.linaro.org: domain of airlied@gmail.com designates 209.85.219.50 as permitted sender) smtp.mailfrom=airlied@gmail.com;
	arc=pass ("google.com:s=arc-20240605:i=1");
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-qv1-f50.google.com with SMTP id 6a1803df08f44-896fd2c5337so3352666d6.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Feb 2026 15:43:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772063036; cv=none;
        d=google.com; s=arc-20240605;
        b=gDtXz8z9p024JnYa54FUmlmCucTm+YmPKOykOs+q7DZE1dvrBuQU7EVBVJ4jBLYZlv
         5D9GJvU+Pk90qjiJWTwBVPUBgGu0d2fGrWijFVek4llI+NiBix0yLrofUjLRLA4QLIXE
         nhgpfqd+RKXsSQ81QF3/pcU8kJdRL60hPVP972jESyb8X4a72tsRusjlaAZBSit8XxU3
         a3AL3xgcT019sS89SzM96SkTiirHawzaAG42+krvJDUFP6gXh4QD8VgDoP+OFTreMKVy
         boq6Vp7Xqz6SPlfUmqx8YvTuwr7nVc2P77tp5YPy74Euh59WmFGVs+GOPckFFhqzaClr
         jGBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=uKa/vajBWOBwhcb6ZTw/N1BLKynDSWMpaPUdswW6428=;
        fh=JDVaTWJF1BQWU3bNZrHcIwIftkN2qkVUHjX8XPZse4g=;
        b=Fc9d/gYf1EYS6IDEn2/1aMPCKw04Djrtky0kehOHF6/mAbVdkKrKAVKuNYxNx0gywW
         LqGHy3JtWb2y04mh57Pba57uR4zw+3MZUVSlRKSHjUVp1s+8RRklMe5PwhLErxZDAjml
         7lloV6vacFBenGoQbZV9xLi3ql0IyBbo3kPzaeVN4HFyNJ7ipnOp69lRPhyPPRiuID5R
         zfxNGhEVWtoZ9rQ2Yz+GnWGZcJCf2Fu7tGoj7wKwepfjKRsFxAXVC21S1Cod/OFClmW8
         9S9ol9+svEc/8pMM8xmC66B73VG9RgIU4uBtXcrp/Jr7i9d6+PRYG50Eo+hjE/X8S/kw
         Bywg==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772063036; x=1772667836; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uKa/vajBWOBwhcb6ZTw/N1BLKynDSWMpaPUdswW6428=;
        b=T74/QDdjjqw3MrnaemkAz2hYfooGifQkc3bzLmt9PwCscVNATZShi8qk7WyXpJafB/
         ZrnXI4w67sbqNa4v4t6y7LdWyc8jhkrV1kNJDffHNBqJO+uFfQVmfUYTMEPYKRv312wY
         urgh7hfr1SWGxCjUog5dtwozcrQ+FvWWnyV6ytKzePvXag4U0z7SU6KCCktT9Jm/fzz9
         5vUdcagphZXoJQshPpWiVbBopmeGSioZjcDmuILQIjQoGmCLZfhhsZoPu2hufsAyYQNS
         YSxCzkK7IuxJR0aLQ5eM2/A+Z7mFEEfqXtN+bMgtNwovmaHY14EnIeFoVw+o91bGr+pT
         qYbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772063036; x=1772667836;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=uKa/vajBWOBwhcb6ZTw/N1BLKynDSWMpaPUdswW6428=;
        b=dQdAreAl5MGanbIHM3X2BVyB0qPP8eyfEL4eFZweLWKz4bLwM3gi/V81ehAu1SKLcO
         V7j7mKLsxChmhMqILY9N0QB4iFkVVOdhXt7NTOLLhX3JKPm/5w7VlZESV+N9iBGaXg9j
         /CIxb6+4AhKzD96xUt36/HkFyuW307Q5Tcu7DyWdsUcEGh48h0p9NhSh5RWz9vTrzOdW
         0dRKpLM1M6fYp1g/Qvc3qMj2fA6+Zje2UTwqFGiTUMxU0dDdgI0ychBsn8zaWLItkHf9
         tkIRgA7u+zaZJl+PjepB1KQwtuY/ylY3x1btMheEGxKljCtW0/BUmc/c0i94ARpwn+Ja
         9Prg==
X-Forwarded-Encrypted: i=1; AJvYcCXQN3t4jKDMC57bX3juIaH5RWzXczDZXWA0jmkI8PchBazVM2m281Pj+7r+uIeU7IgJ44ji70NX6UtL8aWo@lists.linaro.org
X-Gm-Message-State: AOJu0YyzxeUAi+YAjwDRRuna/i1wVUzu4xxFu/8ZLzNK+B4OoPLOjEmu
	QOK1fapRTLh9SJoN3ALZF2EHcxjuVTJfwIAbJ6FcPNmV7xJ3Cvm8pEDC8MrM11B7NfwbUiOfiDk
	5k4HGBr8f14zDBclDkGwsVH7q8+gTsMA=
X-Gm-Gg: ATEYQzxIh0rrkRXwm4QFr2lBWrdyvGw47p92rLpRqpahpW8KTk+0LRVwrI6TZXNlLOQ
	rJ122ebVrYd5rOUdP/dLiFil25zoWjUDhaMfnGLHPI2G7Xa5R5qn4Bt7gHqBmBsPwDluh1/f4l/
	e6M3B6vZEKtqyM05pli4zMoEvtVHXfKSvCfYSPrLNU6y5kRDhINcLpUbHATp7SDR6C2wHw1ze3p
	VxlVzhixKMq7auP1YG2WAny8O89YP9joqG5nnx+vDitJ51c6t1teSz/SmhCIWJKF69Aki8Vxfvp
	GyGuKUHcfL54atFTXQIojNhydGemTDP7kRc+zcIcFWwlwumt8VMCFqw2ltj7Ekp8qg4=
X-Received: by 2002:a05:6214:dc5:b0:899:ac2b:6ddc with SMTP id
 6a1803df08f44-899c8065c8emr3236056d6.62.1772063035679; Wed, 25 Feb 2026
 15:43:55 -0800 (PST)
MIME-Version: 1.0
References: <20260218-dmabuf-heap-cma-dmem-v2-0-b249886fb7b2@redhat.com>
 <CABdmKX0LpKJ9tw48oQh7=3CF0UR5uFtgo0OMwQhHBB40LnijyQ@mail.gmail.com>
 <a446b598-5041-450b-aaa9-3c39a09ff6a0@amd.com> <20260224-solemn-spider-of-serendipity-0d8b94@houat>
 <56400505-8a13-4cb2-864c-cb785e4b38d4@amd.com>
In-Reply-To: <56400505-8a13-4cb2-864c-cb785e4b38d4@amd.com>
From: Dave Airlie <airlied@gmail.com>
Date: Thu, 26 Feb 2026 09:43:43 +1000
X-Gm-Features: AaiRm50TeEvqc50OnpAEgaAX78C2joyWBAyYfH_ecZDl20ZLik30HZzrg2UNE4M
Message-ID: <CAPM=9ty5mbMAVHPO4mRy1jKGnpChr7gK6uMtco2=j7MMJGpZdg@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Spamd-Bar: ----
Message-ID-Hash: WKKKRH3PK5YYQDW4IVJCQQBCD22GFPT6
X-Message-ID-Hash: WKKKRH3PK5YYQDW4IVJCQQBCD22GFPT6
X-MailFrom: airlied@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Maxime Ripard <mripard@redhat.com>, "T.J. Mercier" <tjmercier@google.com>, Eric Chanudet <echanude@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@kernel.org>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, "Liam R. Howlett" <Liam.Howlett@oracle.com>, Vlastimil Babka <vbabka@suse.cz>, Mike Rapoport <rppt@kernel.org>, Suren Baghdasaryan <surenb@google.com>, Michal Hocko <mhocko@suse.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Albert Esteve <aesteve@redhat.com>, linux-mm@kvack.org, Yosry Ahmed <yosryahmed@google.com>, Shakeel Butt <shakeel.butt@linux.dev>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 0/3] dma-buf: heaps: cma: enable dmem cgroup accounting
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WKKKRH3PK5YYQDW4IVJCQQBCD22GFPT6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.69 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_REJECT(1.00)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.994];
	FROM_NEQ_ENVFROM(0.00)[airlied@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,amd.com:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 3350319EF3C
X-Rspamd-Action: no action

T24gVHVlLCAyNCBGZWIgMjAyNiBhdCAyMDozMiwgQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFu
LmtvZW5pZ0BhbWQuY29tPiB3cm90ZToNCj4NCj4gT24gMi8yNC8yNiAxMDo0MywgTWF4aW1lIFJp
cGFyZCB3cm90ZToNCj4gPiBIaSBDaHJpc3RpYW4sDQo+ID4NCj4gPiBPbiBGcmksIEZlYiAyMCwg
MjAyNiBhdCAxMDo0NTowOEFNICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPiA+PiBP
biAyLzIwLzI2IDAyOjE0LCBULkouIE1lcmNpZXIgd3JvdGU6DQo+ID4+PiBPbiBXZWQsIEZlYiAx
OCwgMjAyNiBhdCA5OjE14oCvQU0gRXJpYyBDaGFudWRldCA8ZWNoYW51ZGVAcmVkaGF0LmNvbT4g
d3JvdGU6DQo+ID4+Pg0KPiA+Pj4gSGkgRXJpYywNCj4gPj4+DQo+ID4+Pj4gQW4gZWFybGllciBz
ZXJpZXNbMV0gZnJvbSBNYXhpbWUgaW50cm9kdWNlZCBkbWVtIHRvIHRoZSBjbWEgYWxsb2NhdG9y
IGluDQo+ID4+Pj4gYW4gYXR0ZW1wdCB0byB1c2UgaXQgZ2VuZXJhbGx5IGZvciBkbWEtYnVmLiBS
ZXN0YXJ0IGZyb20gdGhlcmUgYW5kIGFwcGx5DQo+ID4+Pj4gdGhlIGNoYXJnZSBpbiB0aGUgbmFy
cm93ZXIgY29udGV4dCBvZiB0aGUgQ01BIGRtYS1idWYgaGVhcCBpbnN0ZWFkLg0KPiA+Pj4+DQo+
ID4+Pj4gSW4gbGluZSB3aXRoIGludHJvZHVjaW5nIGNncm91cCB0byB0aGUgc3lzdGVtIGhlYXBb
Ml0sIHRoaXMgYmVoYXZpb3IgaXMNCj4gPj4+PiBlbmFibGVkIGJhc2VkIG9uIGRtYV9oZWFwLm1l
bV9hY2NvdW50aW5nLCBkaXNhYmxlZCBieSBkZWZhdWx0Lg0KPiA+Pj4+DQo+ID4+Pj4gZG1lbSBp
cyBjaG9zZW4gZm9yIENNQSBoZWFwcyBhcyBpdCBhbGxvd3MgbGltaXRzIHRvIGJlIHNldCBmb3Ig
ZWFjaA0KPiA+Pj4+IHJlZ2lvbiBiYWNraW5nIGVhY2ggaGVhcC4gVGhlIGNoYXJnZSBpcyBvbmx5
IHB1dCBpbiB0aGUgZG1hLWJ1ZiBoZWFwIGZvcg0KPiA+Pj4+IG5vdyBhcyBpdCBndWFyYW50aWVz
IGl0IGNhbiBiZSBhY2NvdW50ZWQgYWdhaW5zdCBhIHVzZXJzcGFjZSBwcm9jZXNzDQo+ID4+Pj4g
dGhhdCByZXF1ZXN0ZWQgdGhlIGFsbG9jYXRpb24uDQo+ID4+Pg0KPiA+Pj4gQnV0IENNQSBtZW1v
cnkgaXMgc3lzdGVtIG1lbW9yeSwgYW5kIHJlZ3VsYXIgKG5vbi1DTUEpIG1vdmFibGUNCj4gPj4+
IGFsbG9jYXRpb25zIGNhbiBvY2N1ciBvdXQgb2YgdGhlc2UgQ01BIGFyZWFzLiBTbyB0aGlzIHNw
bGl0cyBzeXN0ZW0NCj4gPj4+IG1lbW9yeSBhY2NvdW50aW5nIGJldHdlZW4gbWVtY2cgKGZyb20g
WzJdKSBhbmQgZG1lbS4gSWYgSSB3YW50IHRvIHB1dA0KPiA+Pj4gYSBsaW1pdCBvbiBzeXN0ZW0g
bWVtb3J5IHVzZSBJIGhhdmUgdG8gYWRqdXN0IG11bHRpcGxlIGxpbWl0cyAobWVtY2cgKw0KPiA+
Pj4gZG1lbXMpIGFuZCBrbm93IGhvdyB0byBkaXZpZGUgdGhlIHRvdGFsIGJldHdlZW4gdGhlbSBh
bGwuDQo+ID4+Pg0KPiA+Pj4gSG93IGRvIHlvdSBlbnZpc2lvbiB1c2luZyB0aGlzIGNvbWJpbmF0
aW9uIG9mIGRpZmZlcmVudCBjb250cm9sbGVycz8NCj4gPj4NCj4gPj4gWWVhaCB3ZSBoYXZlIHRo
aXMgcHJvYmxlbSBwcmV0dHkgbXVjaCBldmVyeXdoZXJlLg0KPiA+Pg0KPiA+PiBUaGVyZSBhcmUg
Ym90aCB1c2UgY2FzZXMgd2hlcmUgeW91IHdhbnQgdG8gYWNjb3VudCBkZXZpY2UgYWxsb2NhdGlv
bnMNCj4gPj4gdG8gbWVtY2cgYW5kIHdoZW4geW91IGRvbid0IHdhbnQgdGhhdC4NCj4gPj4NCj4g
Pj4gRnJvbSB3aGF0IEkga25vdyBhdCB0aGUgbW9tZW50IGl0IHdvdWxkIGJlIGJlc3QgaWYgdGhl
IGFkbWluaXN0cmF0b3INCj4gPj4gY291bGQgc2F5IGZvciBlYWNoIGRtZW0gaWYgaXQgc2hvdWxk
IGFjY291bnQgYWRkaXRpb25hbGx5IHRvIG1lbWNnIG9yDQo+ID4+IG5vdC4NCj4gPj4NCj4gPj4g
VXNpbmcgbW9kdWxlIHBhcmFtZXRlcnMgdG8gZW5hYmxlL2Rpc2FibGUgaXQgZ2xvYmFsbHkgaXMg
anVzdCBhDQo+ID4+IHdvcmthcm91bmQgYXMgZmFyIGFzIEkgY2FuIHNlZS4NCj4gPg0KPiA+IFRo
YXQncyBhIHByZXR0eSBnb29kIGlkZWEhIEl0IHdvdWxkIGluZGVlZCBiZSBhIHNvbHV0aW9uIHRo
YXQgY291bGQNCj4gPiBzYXRpc2Z5IGV2ZXJ5b25lIChJIGFzc3VtZT8pLg0KPg0KPiBJIHRoaW5r
IHNvIHllYWguDQo+DQo+IEZyb20gd2hhdCBJIGhhdmUgc2VlbiB3ZSBoYXZlIHRocmVlIGRpZmZl
cmVudCB1c2UgY2FzZXM6DQo+DQo+IDEuIGxvY2FsIGRldmljZSBtZW1vcnkgKFZSQU0pLCBHVFQv
Q01BIGFuZCBtZW1jZyBhcmUgY29tcGxldGVseSBzZXBhcmF0ZSBkb21haW5zIGFuZCB5b3Ugd2Fu
dCB0byBoYXZlIGNvbXBsZXRlbHkgc2VwYXJhdGUgdmFsdWVzIGFzIGxpbWl0IGZvciB0aGVtLg0K
Pg0KPiAyLiBsb2NhbCBkZXZpY2UgbWVtb3J5IChWUkFNKSBpcyBzZXBhcmF0ZS4gR1RUL0NNQSBh
cmUgYWNjb3VudGVkIHRvIG1lbWNnLCB5b3UgY2FuIHN0aWxsIGhhdmUgc2VwYXJhdGUgdmFsdWVz
IGFzIGxpbWl0IHNvIHRoYXQgbm9ib2R5IG92ZXIgYWxsb2NhdGVzIENNQSAoZm9yIGV4YW1wbGUp
Lg0KPg0KPiAzLiBBbGwgdGhyZWUgYXJlIGFjY291bnRlZCB0byBtZW1jZyBiZWNhdXNlIHN5c3Rl
bSBtZW1vcnkgaXMgYWN0dWFsbHkgdXNlZCBhcyBmYWxsYmFjayBpZiBhcHBsaWNhdGlvbnMgb3Zl
ciBhbGxvY2F0ZSBkZXZpY2UgbG9jYWwgbWVtb3J5Lg0KPg0KPiBJdCdzIGRlYmF0YWJsZSB3aGF0
IHNob3VsZCBiZSB0aGUgZGVmYXVsdCwgYnV0IHdlIGNsZWFybHkgbmVlZCB0byBoYW5kbGUgYWxs
IHRocmVlIHVzZSBjYXNlcy4gUG90ZW50aWFsbHkgZXZlbiBvbiB0aGUgc2FtZSBzeXN0ZW0uDQoN
Cg0KR2l2ZSBtZSBjYXNlcyB3aGVyZSAxIG9yIDMgYWN0dWFsbHkgbWFrZSBzZW5zZSBpbiB0aGUg
cmVhbCB3b3JsZC4NCg0KSSBjYW4gbWF5YmUgdGFrZSAxIGlmIENNQSBpcyBqdXN0IG9sZCBzY2hv
b2wgQ01BIGNhcnZlZCBvdXQgcHJlYm9vdCBzbw0KaXQncyBub3QgaW4gdGhlIG1haW4gbWVtb3J5
IHBvb2wsIGJ1dCBpbiB0aGF0IGNhc2UgaXQncyBqdXN0IGVxdWl2IHRvDQpkZXZpY2UgbWVtb3J5
IHJlYWxseQ0KDQpJZiBzb21ldGhpbmcgaXMgaW4gdGhlIG1haW4gbWVtb3J5IHBvb2wsIGl0IHNo
b3VsZCBiZSBhY2NvdW50ZWQgZm9yDQp1c2luZyBtZW1jZy4gWW91IGNhbm5vdCByZW1vdmUgbWVt
b3J5IGZyb20gdGhlIG1haW4gbWVtb3J5IHBvb2wNCndpdGhvdXQgYWNjb3VudGluZyBmb3IgaXQu
IE5vdyB3ZSBjYW4gYWRkIGdwdSBsaW1pdHMgdG8gbWVtY2csIHRoYXQNCndhcyBnb2luZyB0byBt
ZSBhIG5leHQgc3RlcCBpbiBteSBzZXJpZXMuDQoNCldoZXRoZXIgd2UgaGF2ZSB0aGF0IGFzIGEg
cGVyY2VudGFnZSBvciBhIGhhcmQgbGltaXQsIHdlIHdvdWxkIGp1c3QNCnNheSBHUFUgY2FuIGNv
bnN1bWUgOTUlIG9mIHRoZSBjb25maWd1cmVkIG1heCBmb3IgdGhpcyBjZ3JvdXAuDQoNCjMgdG8g
bWUganVzdCBzb3VuZHMgbGlrZSB3ZSBoYXZlbid0IGZpZ3VyZWQgb3V0IGZhbGxiYWNrIG9yDQpz
dXNwZW5kL3Jlc3VtZSBhY2NvdW50aW5nIHlldCwgd2hpY2ggaXMgdHJ1ZSwgYnV0IEknbSBub3Qg
c3VyZSB0aGVyZQ0KaXMgYSByZWFzb24gZm9yIDMgdG8gZXhpc3Qgb3V0c2lkZSBvZiB0aGUgd2Ug
ZG9uJ3Qga25vdyBob3cgdG8gYWNjb3VudA0KZm9yIHRlbXBvcmFyeSBzdG9yYWdlIG9mIHN3YXBw
ZWQgb3V0IFZSQU0gb2JqZWN0cy4NCg0KTGlrZSBpdCBtaWdodCBiZSB3ZSBuZWVkIHRvIGhhdmUg
aXQgc28gd2UgaGF2ZSBhIGxpbWl0ZWQgdHJhbnNmZXIgcG9vbA0Kb2Ygc3lzdGVtIG1lbW9yeSBm
b3IgVlJBTSBvYmplY3RzIHRvICJsaXZlIGluIiBidXQgd2UgbW92ZSB0aGVtIHRvDQpzd2FwIGFz
IHNvb24gYXMgcG9zc2libGUgb25jZSB3ZSBnZXQgdG8gdGhlIGxpbWl0IG9uIHRoYXQuIE5vdyB3
aGF0IHdlDQpkbyBvbiBzeXN0ZW1zIHdoZXJlIG5vIHN3YXAgaXMgYXZhaWxhYmxlLCB0aGF0IGdl
dHMgaW50byBJJ3ZlIG5vIGlkZWENCnNwYWNlLg0KDQpTdGF0aWMgcGFydGl0aW9uaW5nIG1lbWNn
IHVwIGludG8gYSBkbWVtIGFuZCBtZW1jZyBpc24ndCBnb2luZyB0bw0Kc29sdmUgdGhpcywgd2Ug
c2hvdWxkIHNvbHZlIGl0IGluc2lkZSBtZW1jZy4NCg0KRGF2ZS4NCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
