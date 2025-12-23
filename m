Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 03B67CDA55D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Dec 2025 20:20:32 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CA33A40143
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Dec 2025 19:20:30 +0000 (UTC)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	by lists.linaro.org (Postfix) with ESMTPS id AFC703F9AD
	for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Dec 2025 19:20:24 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=iQGGb2h7;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.49 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	dmarc=pass (policy=reject) header.from=google.com;
	arc=pass ("google.com:s=arc-20240605:i=1")
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4779a4fb9bfso266895e9.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Dec 2025 11:20:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1766517624; cv=none;
        d=google.com; s=arc-20240605;
        b=K3wDJojTRGwxAA6+FzY46RUNSjlUwTh9is8/WWm1IFCYbhXur8RBgYibi52aEU5o4k
         R2AiI6ujfAelm+JFMSZbtPQLVRwShHs1IOsLrgaJ3imG9wK24nIeQIijO2F+fw0zpDKF
         DyM6wj0IWSCC0SqW1csESpjivp1yMpmpVQZKOHG2HxheC1yT4Vgy83w1qdIr+PS5UbMW
         q424iekap1zVX/Uay8FhoBnezcpSdN8H4/ne+5ck9l5WbVeJwg6olfySeHOyfND1iQgx
         9TCrKhujUqgwO8ERqR/YNAZ0wdD6lQWLkgH9NCT/ND4wm9amTscrYsa+ENw7ujp5jhOq
         nG/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=a5+xgM/+DEzFbXxJOlaWSbNM7nqa8vatKp2y4g04VfM=;
        fh=NS3UDcvRBUhefVDAEgrwZvzvOA3/ZLGM5X5V67tgFfA=;
        b=Qc+HfmNsbfmCJbDhdw15o4QSMWybHoxxKwIiJOi3t9RyZY+XtCUVg1ZU4UMMmDPN8i
         pwhl+4Ryw2ehK99TA6jguYgH+Z3KlKH6SqbLwly6Go0OScA+UHKDzR0/YGUOLk4ZHe77
         bYpI4ShE+qt4XG3019Q5kviErzu/h5EMrJrwFvI1+yJhJ2kkP0ly1o7HTSk4AWujJh+s
         c7RvutULmZqQErvS7EPFUK8SEc+TAWSlydx1K7lYlkomXRmhZoGdNEdFx+W19JK1ZgRW
         u5CmrTBas3pPVkAQTNk7Sgia0bJW2+YRvw0hebtSjyRBbM/Kp061z224rUhDl7NUknCH
         E19w==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1766517624; x=1767122424; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a5+xgM/+DEzFbXxJOlaWSbNM7nqa8vatKp2y4g04VfM=;
        b=iQGGb2h7opZUVQ/CSUJ5BSG5oAauj7u1v9r+0ANnu5ULDFPXiMYnqnATabNz4ckFJZ
         YnVrxIyezt/euxYyw2+OAe8Wct8X/7wkHArw3UhgPuXXwtzc6LA0RpU1Nu6/lXX354n2
         nG+juqbmGEMADy86pv1tYzXhoDcpHLUw0sPTpXPdJxR+iOdgS33WAnluZ2Bk+ZYIA4uq
         E8rmEYT57n/xcdCkziI/4AtgfvKHKrVgzQxee8phWNNUibff8MDih9t/td/u7M2fplQ+
         bT7hN8or2w0IMQr3Ax88/Ynpuhc83GTTBLY52kU7gXpQQvpx2qcCKBRqYDVtELKsPNWp
         OSmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766517624; x=1767122424;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=a5+xgM/+DEzFbXxJOlaWSbNM7nqa8vatKp2y4g04VfM=;
        b=cbmIQXA02fJ19ZNZTlwXGQYO5Xeo/QHQEP3LC0IMTECdEyoM6t7quy27tvdjZspzCI
         ZhLL1SmpGWoZ4fMBLw+lkWv4ijva+0q6AV2kNSaFBcY9wo/HmdyfNX+j3EJPmi/SupeA
         9XB/tl+PYV0/LJFydi6KsKSZB78TxnJ36iOzjl9Zr+RIooX40rJ6sISrFPI4StCEv6fH
         /WOzBo8l2EaLEASK4wHnlQHs5hWJDWwChLaCHyXjL9hAXfNFV5Br0ve4JAHUukhstuph
         +syqCKVipyFXfkVFYJGlDsB5qndFYfzmJ49R00nPy/7ZI3s7lVr+Vha8lAHwFVAX9H3/
         uA1A==
X-Forwarded-Encrypted: i=1; AJvYcCVV7tzrJGatv/OJTn7jGCm9Q+vomYsB2neDiubnshlMNWNZrAQEILdxS91Y6k3MpG0IUdL+S69vayfk2Cpd@lists.linaro.org
X-Gm-Message-State: AOJu0Yzo/FNz9n8/hbpqMCA7/uyu2GlkmFyfz9cjUs4quLMrzuzcV0zC
	A8MoDgVm9agLciZiUk0eoIi8YT2l/QtXZPhjNF7wSdy9rYeVwMbxvxE/3u/d+Uyi/DqU1Dhal1o
	vMctHoSlvev98V4O4ihbVwHwxPD9+Of+bFZzw9PgL
X-Gm-Gg: AY/fxX6htG47T9CjTY7DBsZ8Ay4VF4hQXNRYoLQPy8bRqUwV7Pj3dmU+18dwj30B93N
	iLk7tPQQdR7Z64J8KN7uos7UnlHUU0lHi3aVNpqkoaXwtp+s+AW14f42VAyYE0B3FK/2w6HjJY+
	h9EdLMCUfrY3NF+hsHQhwjN3W7A4J7CtejsFaim9sZ6Pi0lB7l0eMsKOVNyitZU2E+9Yp1XlFAg
	OHEWA3kzGYHlJ3lM+lV625kev7u6lMmvbbsVU+3sydd3Z3ztmhqjs5huztMEXrBtG2BWPu50RJL
	bHdhRGua/ZvCqKJa7asZLVDnDXbiKYOVZduFJw==
X-Google-Smtp-Source: AGHT+IEG4L2KtlFmlxwH8tyJw8U1LD9lfHo+uuj+XTeCuha19uVEvcigX9Mg2ksFjQLFcEDqzYU+ZZ2oCFS9tE7vZu8=
X-Received: by 2002:a05:600c:6013:b0:477:b358:c0cd with SMTP id
 5b1f17b1804b1-47d3c6f23e0mr76385e9.18.1766517623353; Tue, 23 Dec 2025
 11:20:23 -0800 (PST)
MIME-Version: 1.0
References: <20251211193106.755485-2-echanude@redhat.com> <CABdmKX2MPhw121ZG8V+f-XoOReUsCdmcug-cWDg=3WZcJ=NHHA@mail.gmail.com>
 <20251215-sepia-husky-of-eternity-ecf0ce@penduick> <CABdmKX1HgSzUPS1Ot93tpctgunfHt_F_XNROB6zzpu_u0oH2=A@mail.gmail.com>
 <20251219-precise-tody-of-fortitude-5a3839@houat>
In-Reply-To: <20251219-precise-tody-of-fortitude-5a3839@houat>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Wed, 24 Dec 2025 04:20:11 +0900
X-Gm-Features: AQt7F2rw01H7QxvGsejUIuV_ynmYDaCiSn7pNjMDztmbKKwMiJ0pZlidXREqHoc
Message-ID: <CABdmKX2_UOENujpW0dXe0Z0x+4V3onfGDmHf1DMOXfDha6ddOA@mail.gmail.com>
To: Maxime Ripard <mripard@redhat.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[google.com:s=arc-20240605:i=1];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_ONE(0.00)[1];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.49:from];
	URIBL_BLOCKED(0.00)[mail-wm1-f49.google.com:rdns,mail-wm1-f49.google.com:helo];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: AFC703F9AD
X-Spamd-Bar: ----
Message-ID-Hash: 6OQKZOZMVBOJQPYZRGVLODZLKDSLOZLB
X-Message-ID-Hash: 6OQKZOZMVBOJQPYZRGVLODZLKDSLOZLB
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Eric Chanudet <echanude@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, Christian Koenig <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, "open list:MEMORY MANAGEMENT" <linux-mm@kvack.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: system_heap: account for system heap allocation in memcg
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6OQKZOZMVBOJQPYZRGVLODZLKDSLOZLB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gRnJpLCBEZWMgMTksIDIwMjUgYXQgNzoxOeKAr1BNIE1heGltZSBSaXBhcmQgPG1yaXBhcmRA
cmVkaGF0LmNvbT4gd3JvdGU6DQo+DQo+IEhpLA0KPg0KPiBPbiBUdWUsIERlYyAxNiwgMjAyNSBh
dCAxMTowNjo1OUFNICswOTAwLCBULkouIE1lcmNpZXIgd3JvdGU6DQo+ID4gT24gTW9uLCBEZWMg
MTUsIDIwMjUgYXQgNzo1MeKAr1BNIE1heGltZSBSaXBhcmQgPG1yaXBhcmRAcmVkaGF0LmNvbT4g
d3JvdGU6DQo+ID4gPiBPbiBGcmksIERlYyAxMiwgMjAyNSBhdCAwODoyNToxOUFNICswOTAwLCBU
LkouIE1lcmNpZXIgd3JvdGU6DQo+ID4gPiA+IE9uIEZyaSwgRGVjIDEyLCAyMDI1IGF0IDQ6MzHi
gK9BTSBFcmljIENoYW51ZGV0IDxlY2hhbnVkZUByZWRoYXQuY29tPiB3cm90ZToNCj4gPiA+ID4g
Pg0KPiA+ID4gPiA+IFRoZSBzeXN0ZW0gZG1hLWJ1ZiBoZWFwIGxldHMgdXNlcnNwYWNlIGFsbG9j
YXRlIGJ1ZmZlcnMgZnJvbSB0aGUgcGFnZQ0KPiA+ID4gPiA+IGFsbG9jYXRvci4gSG93ZXZlciwg
dGhlc2UgYWxsb2NhdGlvbnMgYXJlIG5vdCBhY2NvdW50ZWQgZm9yIGluIG1lbWNnLA0KPiA+ID4g
PiA+IGFsbG93aW5nIHByb2Nlc3NlcyB0byBlc2NhcGUgbGltaXRzIHRoYXQgbWF5IGJlIGNvbmZp
Z3VyZWQuDQo+ID4gPiA+ID4NCj4gPiA+ID4gPiBQYXNzIHRoZSBfX0dGUF9BQ0NPVU5UIGZvciBv
dXIgYWxsb2NhdGlvbnMgdG8gYWNjb3VudCB0aGVtIGludG8gbWVtY2cuDQo+ID4gPiA+DQo+ID4g
PiA+IFdlIGhhZCBhIGRpc2N1c3Npb24ganVzdCBsYXN0IG5pZ2h0IGluIHRoZSBNTSB0cmFjayBh
dCBMUEMgYWJvdXQgaG93DQo+ID4gPiA+IHNoYXJlZCBtZW1vcnkgYWNjb3VudGVkIGluIG1lbWNn
IGlzIHByZXR0eSBicm9rZW4uIFdpdGhvdXQgYSB3YXkgdG8NCj4gPiA+ID4gaWRlbnRpZnkgKGFu
ZCBwb3NzaWJseSB0cmFuc2Zlcikgb3duZXJzaGlwIG9mIGEgc2hhcmVkIGJ1ZmZlciwgdGhpcw0K
PiA+ID4gPiBtYWtlcyB0aGUgYWNjb3VudGluZyBvZiBzaGFyZWQgbWVtb3J5LCBhbmQgem9tYmll
IG1lbWNnIHByb2JsZW1zDQo+ID4gPiA+IHdvcnNlLiA6XA0KPiA+ID4NCj4gPiA+IEFyZSB0aGVy
ZSBub3RlcyBvciBhIHJlcG9ydCBmcm9tIHRoYXQgZGlzY3Vzc2lvbiBhbnl3aGVyZT8NCj4gPg0K
PiA+IFRoZSBMUEMgdmlkcyBoYXZlbid0IGJlZW4gY2xpcHBlZCB5ZXQsIGFuZCBhY3R1YWxseSBJ
IGNhbid0IGV2ZW4gZmluZA0KPiA+IHRoZSByZWNvcmRlZCBmdWxsIGxpdmUgc3RyZWFtIGZyb20g
SGFsbCBBMiBvbiB0aGUgZmlyc3QgZGF5LiBTbyBJDQo+ID4gZG9uJ3QgdGhpbmsgdGhlcmUncyBh
bnl0aGluZyB0byBsb29rIGF0LCBidXQgSSBiZXQgdGhlcmUncyBwcm9iYWJseQ0KPiA+IG5vdGhp
bmcgdGhlcmUgeW91IGRvbid0IGFscmVhZHkga25vdy4NCj4NCj4gQWNrLCB0aGFua3MgZm9yIGxv
b2tpbmcgYXQgaXQgc3RpbGwgOikNCj4NCj4gPiA+IFRoZSB3YXkgSSBzZWUgaXQsIHRoZSBkbWEt
YnVmIGhlYXBzICp0cml2aWFsKiBjYXNlIGlzIG5vbi1leGlzdGVudCBhdA0KPiA+ID4gdGhlIG1v
bWVudCBhbmQgdGhhdCdzIGRlZmluaXRlbHkgYnJva2VuLiBBbnkgYXBwbGljYXRpb24gY2FuIGJ5
cGFzcyBpdHMNCj4gPiA+IGNncm91cHMgbGltaXRzIHRyaXZpYWxseSwgYW5kIHRoYXQncyBhIHBy
ZXR0eSBiaWcgaG9sZSBpbiB0aGUgc3lzdGVtLg0KPiA+DQo+ID4gQWdyZWUsIGJ1dCBpZiB3ZSBv
bmx5IGNoYXJnZSB0aGUgZmlyc3QgYWxsb2NhdG9yIHRoZW4gbGltaXRzIGNhbiBzdGlsbA0KPiA+
IGVhc2lseSBiZSBieXBhc3NlZCBhc3N1bWluZyBhbiBhcHAgY2FuIGNhdXNlIGFuIGFsbG9jYXRp
b24gb3V0c2lkZSBvZg0KPiA+IGl0cyBjZ3JvdXAgdHJlZS4NCj4gPg0KPiA+IEknbSBub3Qgc3Vy
ZSB1c2luZyBzdGF0aWMgbWVtY2cgbGltaXRzIHdoZXJlIGEgc2lnbmlmaWNhbnQgcG9ydGlvbiBv
Zg0KPiA+IHRoZSBtZW1vcnkgY2FuIGJlIHNoYXJlZCBpcyByZWFsbHkgZmVhc2libGUuIEV2ZW4g
d2l0aCBqdXN0IHBhZ2VjYWNoZQ0KPiA+IGJlaW5nIGNoYXJnZWQgdG8gbWVtY2dzLCB3ZSdyZSBo
YXZpbmcgdHJvdWJsZSBkZWZpbmluZyBhIHN0YXRpYyBtZW1jZw0KPiA+IGxpbWl0IHRoYXQgaXMg
cmVhbGx5IHVzZWZ1bCBzaW5jZSBpdCBoYXMgdG8gYmUgaGlnaCBlbm91Z2ggdG8NCj4gPiBhY2Nv
bW9kYXRlIG9jY2FzaW9uYWwgc3Bpa2VzIGR1ZSB0byBzaGFyZWQgbWVtb3J5IHRoYXQgbWlnaHQg
b3IgbWlnaHQNCj4gPiBub3QgYmUgY2hhcmdlZCAoc2luY2UgaXQgY2FuIG9ubHkgYmUgY2hhcmdl
ZCB0byBvbmUgbWVtY2cgLSBpdCBtYXkgYmUNCj4gPiBzcHJlYWQgYXJvdW5kIG9yIGl0IG1heSBh
bGwgZ2V0IGNoYXJnZWQgdG8gb25lIG1lbWNnKS4gU28gZXhjZXNzaXZlDQo+ID4gYW5vbnltb3Vz
IHVzZSBoYXMgdG8gZ2V0IHJlYWxseSBiYWQgYmVmb3JlIGl0IGdldHMgcHVuaXNoZWQuDQo+ID4N
Cj4gPiBXaGF0IEkndmUgYmVlbiBoZWFyaW5nIGxhdGVseSBpcyB0aGF0IGZvbGtzIGFyZSBwb2xs
aW5nIG1lbW9yeS5zdGF0IG9yDQo+ID4gUFNJIG9yIG90aGVyIG1ldHJpY3MgYW5kIHVzaW5nIHRo
YXQgdG8gdGFrZSBhY3Rpb25zIChtZW1vcnkucmVjbGFpbSAvDQo+ID4ga2lsbGluZyAvIGFkanVz
dCBtZW1vcnkuaGlnaCkgYXQgcnVudGltZSByYXRoZXIgdGhhbiByZWx5aW5nIG9uDQo+ID4gbWVt
b3J5LmhpZ2gvbWF4IGJlaGF2aW9yIHdpdGggYSBzdGF0aWMgbGltaXQuDQo+DQo+IEJ1dCB0aGF0
J3Mgb25seSBzaWRlIGVmZmVjdHMgb2YgYSBidWZmZXIgYmVpbmcgc2hhcmVkLCByaWdodD8gKHdo
aWNoLA0KPiBmb3IgYSBidWZmZXIgc2hhcmluZyBtZWNoYW5pc20gaXMgc3RpbGwgcHJldHR5IGlt
cG9ydGFudCwgYnV0IHN0aWxsKQ0KPg0KPiA+ID4gVGhlIHNoYXJlZCBvd25lcnNoaXAgaXMgaW5k
ZWVkIGJyb2tlbiwgYnV0IGl0J3Mgbm90IG1vcmUgb3IgbGVzcyBicm9rZW4NCj4gPiA+IHRoYW4s
IHNheSwgbWVtZmQgKyB1ZG1hYnVmLCBhbmQgSSdtIHN1cmUgcGxlbnR5IG9mIG90aGVycy4NCj4g
Pg0KPiA+IE9uZSB0aGluZyB0aGF0J3Mgd29yc2UgYWJvdXQgc3lzdGVtIGhlYXAgYnVmZmVycyBp
cyB0aGF0IHVubGlrZSBtZW1mZA0KPiA+IHRoZSBtZW1vcnkgaXNuJ3QgcmVjbGFpbWFibGUuIFNv
IHdpdGhvdXQga2lsbGluZyBhbGwgdXNlcnMgdGhlcmUncw0KPiA+IGN1cnJlbnRseSBubyB3YXkg
dG8gZGVhbCB3aXRoIHRoZSB6b21iaWUgaXNzdWUuIEhhcnJ5J3MgcHJvcG9zaW5nDQo+ID4gcmVw
YXJlbnRpbmcsIGJ1dCBJIGRvbid0IHRoaW5rIG91ciBjdXJyZW50IGludGVyZmFjZXMgc3VwcG9y
dCB0aGF0DQo+ID4gYmVjYXVzZSB3ZSdkIGhhdmUgdG8gbWVzcyB3aXRoIHRoZSBwYWdlIHN0cnVj
dHMgYmVoaW5kIHN5c3RlbSBoZWFwDQo+ID4gZG1hYnVmcyB0byBjaGFuZ2UgdGhlIG1lbWNnIGR1
cmluZyByZXBhcmVudGluZy4NCj4gPg0KPiA+IEFoLi4uIGJ1dCB1ZG1hYnVmIHBpbnMgdGhlIG1l
bWZkIHBhZ2VzLCBzbyB5b3UncmUgcmlnaHQgdGhhdCBtZW1mZCArDQo+ID4gdWRtYWJ1ZiBpc24n
dCB3b3JzZS4NCj4gPg0KPiA+ID4gU28gd2UgcmVhbGx5IGltcHJvdmUgdGhlIGNvbW1vbiBjYXNl
LCBidXQgb25seSBtYWtlIHRoZSAiYWR2YW5jZWQiDQo+ID4gPiBzbGlnaHRseSBtb3JlIGJyb2tl
biB0aGFuIGl0IGFscmVhZHkgaXMuDQo+ID4gPg0KPiA+ID4gV291bGQgeW91IGRpc2FncmVlPw0K
PiA+DQo+ID4gSSB0aGluayBtZW1jZyBsaW1pdHMgaW4gdGhpcyBjYXNlIGp1c3Qgd291bGRuJ3Qg
YmUgdXNhYmxlIGJlY2F1c2Ugb2YNCj4gPiB3aGF0IEkgbWVudGlvbmVkIGFib3ZlLiBJbiBvdXIg
Y29tbW9uIGNhc2UgdGhlIGFsbG9jYXRvciBpcyBpbiBhDQo+ID4gZGlmZmVyZW50IGNncm91cCB0
cmVlIHRoYW4gdGhlIHJlYWwgdXNlcnMgb2YgdGhlIGJ1ZmZlci4NCj4NCj4gU28sIG15IGlzc3Vl
IHdpdGggdGhpcyBpcyB0aGF0IHdlIHdhbnQgdG8gZml4IG5vdCBvbmx5IGRtYS1idWYgaXRzZWxm
LA0KPiBidXQgZXZlcnkgZGV2aWNlIGJ1ZmZlciBhbGxvY2F0aW9uIG1lY2hhbmlzbSwgc28gYWxz
byB2NGwyLCBkcm0sIGV0Yy4NCj4NCj4gU28gd2UnbGwgbmVlZCBhIGxvdCBvZiBpbmZyYXN0cnVj
dHVyZSBhbmQgcmV3b3JrIG91dHNpZGUgb2YgZG1hLWJ1ZiB0bw0KPiBnZXQgdGhlcmUsIGFuZCBm
aWd1cmluZyBvdXQgaG93IHRvIHNvbHZlIHRoZSBzaGFyZWQgYnVmZmVyIGFjY291bnRpbmcgaXMN
Cj4gaW5kZWVkIG9uZSBvZiB0aGVtLCBidXQgd2FzIHNvIGZhciBjb25zaWRlcmVkIGtpbmQgdGhl
IHRoaW5nIHRvIGRvIGxhc3QNCj4gbGFzdCB0aW1lIHdlIGRpc2N1c3NlZC4NCj4NCj4gV2hhdCBJ
IGdldCBmcm9tIHRoYXQgZGlzY3Vzc2lvbiBpcyB0aGF0IHdlIG5vdyBjb25zaWRlciBpdCBhDQo+
IHByZXJlcXVpc2l0ZSwgYW5kIGdpdmVuIGhvdyB0aGF0IHRvcGljIGhhcyBiZWVuIGFkdmFuY2lu
ZyBzbyBmYXIsIG9uZQ0KPiB0aGF0IHdvdWxkIHRha2UgYSBjb3VwbGUgb2YgeWVhcnMgYXQgYmVz
dCB0byBtYXRlcmlhbGl6ZSBpbnRvIHNvbWV0aGluZw0KPiB1c2VmdWwgYW5kIHVwc3RyZWFtLg0K
Pg0KPiBUaHVzLCBpdCBibG9ja3MgYWxsIHRoZSB3b3JrIGFyb3VuZCBpdCBmb3IgeWVhcnMuDQo+
DQo+IFdvdWxkIHlvdSBiZSBvcGVuIHRvIG1lcmdpbmcgcGF0Y2hlcyB0aGF0IHdvcmsgb24gaXQg
YnV0IG9ubHkgZW5hYmxlZA0KPiB0aHJvdWdoIGEga2VybmVsIHBhcmFtZXRlciBmb3IgZXhhbXBs
ZSAoYW5kIHBvc3NpYmx5IHRhaW50IHRoZSBrZXJuZWw/KT8NCj4gVGhhdCB3b3VsZCBhbGxvdyB0
byB3b3JrIHRvd2FyZHMgdGhhdCBnb2FsIHdoaWxlIG5vdCBiZWluZyBibG9ja2VkIGJ5DQo+IHRo
ZSBzaGFyZWQgYnVmZmVyIGFjY291bnRpbmcsIGFuZCBub3QgYWZmZWN0aW5nIHRoZSBnZW5lcmFs
IGNhc2UgZWl0aGVyLg0KPg0KPiBNYXhpbWUNCg0KSGkgTWF4aW1lLA0KDQpBIGtlcm5lbCBwYXJh
bSBvciBhIENPTkZJRyBzb3VuZCBsaWtlIGEgZ29vZCBjb21wcm9taXNlIHRvIGFsbG93IHdvcmsN
CnRvIHByb2dyZXNzLiBJJ2QgYmUgaGFwcHkgdG8gYWRkIG15IFItQiB0byB0aGF0Lg0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBt
YWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2Ny
aWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3Jn
Cg==
