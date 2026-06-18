Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id quTGAMgJNGosLwYAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2026 17:07:52 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 879CC6A11D2
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2026 17:07:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=linaro.org header.s=google header.b=FJH2tyWs;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=pass (policy=none) header.from=linaro.org;
	arc=reject ("signature check failed: fail, {[1] = sig:google.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6691E40AD0
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2026 15:07:50 +0000 (UTC)
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	by lists.linaro.org (Postfix) with ESMTPS id E13AE3F853
	for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2026 15:07:40 +0000 (UTC)
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-c07680fdd12so117187966b.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2026 08:07:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1781795260; cv=none;
        d=google.com; s=arc-20240605;
        b=HZUpCX4ltoNDYDBh9+iyIT+HMax7etJeICkloyuU6grlCrQCFmd5vhaiFxzmbYrc0D
         wcDsTuQo3OUTmgpiBRftcyA4G2MMk4wrZAtXbSk/LoB65D2HQeCCfyHMws3QKN3KDXUn
         Czlzpr7Hr3ci8dGyNEMysHjWcO95FdrR54VWd1uXGy8ZoXI9jo1Mek3R9jHv6gi7dLD8
         IXeCk4mS7sD/fh7EFqFZSxqZWjR+0dm2wpodQ2FybA2CrYTF8rV7Pff7iNtyv3fYblt1
         2gPNvc1fwrUZbgQY8s/p2wKg4ttE6Q9iTokvTe3vwrDRHeVzEcvlHblP4maqwxY8ynNE
         5dxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=NYfGyus+VhVBHeY1TmmYU+r9XB2t30QhuWaxH/6OPAg=;
        fh=sWZchXexkij+kPMJ9bXJv7H2NduCR9zIz4IHuvBF8s0=;
        b=fa7zQk6Kq9OYQSFoBTrGV2QN9Bq3ytZ3vEC54MiwbLz8BC1gvBr1BwsF7kM6QmLmME
         wps4Ue+NJoYDNAjUSUFlQiLjF38gpy974b3ks7OP4Vd9U9ND8Hy8tiiRk6sr3yMxotLG
         5F+zR6OOX/equ3EhSu13480OD+RX7YyEhWEKaPChPlRWGctAecWNQJd11zo+cwZaT4Nt
         Ec7vS+kfYumqCHR3W6k21wns+EZsm00ZwmCce76F20j7cUe2M43pd27xfRpkVdMHR5je
         4lU5rPzLHZNtZVzBWQnmWPgSJpG0Ad3Er45j0M89Yifb/nEqxVVzxrTcmpp5oNC1HoTO
         zTxA==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1781795260; x=1782400060; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NYfGyus+VhVBHeY1TmmYU+r9XB2t30QhuWaxH/6OPAg=;
        b=FJH2tyWsXJnbxEs+Dhzh4F6TQGDyJzFDtjqnGQs0b+ld7dElY5h6RJmIJJ2hw3RZk7
         9DFDZqW+9QZNQAfBnArOJKUp8hHjaSWaeIvai7aUaa93n3dLn9JG3Q1RFhOVhFLbmIuu
         coa7iPd5CF9sqO1ScWzLt+sM6roW8NnDaXAdFbmKU9JVpuUVfhIL7p5ldPG1ilSAapZX
         10rymNCbpK2ACnztP9F51EAcqpFNwpq5u8TXos8yXQTEwxHruPplGJgLS5/eE9xWQU9u
         7pjkmjI1o7x8f0ptNJ/5PED1utGRtazAbz2waoD2t9M58Eu7kQOIjYznk8cohE9AfqLZ
         JDdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781795260; x=1782400060;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=NYfGyus+VhVBHeY1TmmYU+r9XB2t30QhuWaxH/6OPAg=;
        b=NGAnZoPvqDU8hBWM0YvAI4Ak8w0UZXvAGNszxT1TzDWWJMbJRiEO4+xf4lnSycdtUy
         XIKh2wXN6D0NZVeVK2qNdWrfqjHHNJaiUdqUFg3IG6JO2HoOb7pIZF56xPj9dcPCSjQy
         lLiPpfBzll+VF24xIFQ2bSVJUuI5ssew1nN8UkmDo4wZZxa6o9FT0LDavOBLypdAR0Sz
         7P3m1ViadaI4qM9gp8jkHWEnZ6jYjjr0a6uhNCNq8LYVNc2fvGDCCXNNPaZTx4hww8CD
         ZN8Gx4u0i0uVHRpFLHR2S12JYM6oGeTjofcOTNTQ987klGUs26dRjR7xJ8o54BUgUaUR
         GLvg==
X-Forwarded-Encrypted: i=1; AFNElJ8dQ9cC07hLDkmqqb3ii8y7eOENe+RAiliLU9j3NUb9ISNar60J1RkKFxLAxSZrkjsLwa/yg75OS64zwNfz@lists.linaro.org
X-Gm-Message-State: AOJu0Yye+WuSsgIIyZSi4MrFkT1JqJEwPf6M9ztZDDhGTfJ5ffwqn920
	LWTsTffBD3/B8YDHiD6M3SHhBLGZElNRAJIQiWtVyq2wg0DmSDcN6TNmynpYOB1mHFk2bIs2j6s
	91bj2mKZKgiiFSiYX/eE+r+4xN+HqqkJsIIta0aDzEyNK
X-Gm-Gg: AfdE7cknBEMziDAqqvLg4uKGXsf569FTr5fCzxAyuZ3hVmasHQCfV5y4j8KfdYgMUGM
	u/8B5WP1qWAMgRtz4WZKuKk0DHg+MgCQMG5iW9iaBmdVz45cSz9F7QNyt9qnEGkHZ4nJTVgQQ8X
	chzNbHXAaLST43Qx07jvCmCkpRqXsg51CYHwO6OMyUXlMHmyZ2jJ7S2NtGsJegVqU2yU0UJRcam
	sJzzYuBLbwwTl8NpUNLGu6y3vW00iq0pZyQOr5/N0rlXLd7f89gG+FXGB/dHVae0NNTMklgBp75
	anbaE7ERnIjiTlt+AOeFF9QOdA==
X-Received: by 2002:a17:907:98c:b0:bfe:ed06:565f with SMTP id
 a640c23a62f3a-c05d2ebb73cmr565480566b.52.1781795259736; Thu, 18 Jun 2026
 08:07:39 -0700 (PDT)
MIME-Version: 1.0
References: <20260618132628.3811068-2-phasta@kernel.org> <20260618132628.3811068-6-phasta@kernel.org>
 <923343e7-1f11-4e29-8278-917fc65c75eb@amd.com>
In-Reply-To: <923343e7-1f11-4e29-8278-917fc65c75eb@amd.com>
From: Sumit Semwal <sumit.semwal@linaro.org>
Date: Thu, 18 Jun 2026 20:37:28 +0530
X-Gm-Features: AVVi8CdVSitERASSjLlXjGMzf8QWomu8u5eVZoymDD14ZtOhmnelZ1EXdDXW5pQ
Message-ID: <CAO_48GGKOGMr5bexkW3+d9AsF=RYkZeaU6+nWgnaJxzXVLft2Q@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Spamd-Bar: -----
Message-ID-Hash: KMRKBPMCD7LQQPKNA25K74ZCQBL7CSJ6
X-Message-ID-Hash: KMRKBPMCD7LQQPKNA25K74ZCQBL7CSJ6
X-MailFrom: sumit.semwal@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Philipp Stanner <phasta@kernel.org>, Miguel Ojeda <ojeda@kernel.org>, Boqun Feng <boqun@kernel.org>, Gary Guo <gary@garyguo.net>, =?UTF-8?Q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>, Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>, Danilo Krummrich <dakr@kernel.org>, Daniel Almeida <daniel.almeida@collabora.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Alexandre Courbot <acourbot@nvidia.com>, Asahi Lina <lina+kernel@asahilina.net>, Matthew Maurer <mmaurer@google.com>, Lorenzo Stoakes <ljs@kernel.org>, Joel Fernandes <joelagnelf@nvidia.com>, Burak Emir <bqe@google.com>, FUJITA Tomonori <fujita.tomonori@gmail.com>, Krishna Ketan Rai <prafulrai522@gmail.com>, Tamir Duberstein <tamird@kernel.org>, =?UTF-8?Q?Onur_=C3=96zkan?= <work@onurozkan.dev>, Eliot Courtney <ecourtney@nvidia.com>, Mirko Adzic <adzicmirko97@gmail.com>, Alistair Francis <alistair.francis@wdc.com>, Shanka
 ri Anand <shankari.ak0208@gmail.com>, linux-kernel@vger.kernel.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 4/4] MAINTAINERS: Add entry for Rust dma-buf
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KMRKBPMCD7LQQPKNA25K74ZCQBL7CSJ6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.59 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER(0.00)[sumit.semwal@linaro.org,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[32];
	FORGED_RECIPIENTS(0.00)[m:christian.koenig@amd.com,m:phasta@kernel.org,m:ojeda@kernel.org,m:boqun@kernel.org,m:gary@garyguo.net,m:bjorn3_gh@protonmail.com,m:lossin@kernel.org,m:a.hindborg@kernel.org,m:aliceryhl@google.com,m:tmgross@umich.edu,m:dakr@kernel.org,m:daniel.almeida@collabora.com,m:gregkh@linuxfoundation.org,m:acourbot@nvidia.com,m:lina+kernel@asahilina.net,m:mmaurer@google.com,m:ljs@kernel.org,m:joelagnelf@nvidia.com,m:bqe@google.com,m:fujita.tomonori@gmail.com,m:prafulrai522@gmail.com,m:tamird@kernel.org,m:work@onurozkan.dev,m:ecourtney@nvidia.com,m:adzicmirko97@gmail.com,m:alistair.francis@wdc.com,m:shankari.ak0208@gmail.com,m:linux-kernel@vger.kernel.org,m:rust-for-linux@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:lina@asahilina.net,m:fujitatomonori@gmail.com,m:shankariak0208@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[linaro.org,none];
	FREEMAIL_CC(0.00)[kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,collabora.com,linuxfoundation.org,nvidia.com,asahilina.net,gmail.com,onurozkan.dev,wdc.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sumit.semwal@linaro.org,linaro-mm-sig-bounces@lists.linaro.org];
	R_DKIM_REJECT(0.00)[linaro.org:s=google];
	TAGGED_RCPT(0.00)[linaro-mm-sig,kernel];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DKIM_TRACE(0.00)[linaro.org:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,linaro.org:from_mime,linaro.org:email,mail.gmail.com:mid,lists.freedesktop.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 879CC6A11D2

T24gVGh1LCAxOCBKdW4gMjAyNiBhdCAxOTowMCwgQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFu
LmtvZW5pZ0BhbWQuY29tPiB3cm90ZToNCj4NCj4gT24gNi8xOC8yNiAxNToyNiwgUGhpbGlwcCBT
dGFubmVyIHdyb3RlOg0KPiA+IFJ1c3QgZG9lcyBub3cgaGF2ZSBhYnN0cmFjdGlvbnMgZm9yIGRt
YV9mZW5jZS4gVGhlc2UgYWJzdHJhY3Rpb25zIGFyZQ0KPiA+IHF1aXRlIGNvbXBsaWNhdGVkIGFu
ZCByZXF1aXJlIGV4cGVydGlzZSB3aXRoIGJvdGggdGhlIEMgYW5kIHRoZSBSdXN0DQo+ID4gc2lk
ZS4gVGhlcmVmb3JlLCB1c2luZyB0aGUgZXhpc3RpbmcgZW50cnkgYWxzbyBmb3IgbWFpbnRlbmFu
Y2Ugb2YgdGhlDQo+ID4gUnVzdCBjb2RlIGFwcGVhcnMgcmVhc29uYWJsZS4NCj4gPg0KPiA+IFBo
aWxpcHAgdm9sdW50ZWVycyB0byBoZWxwIG1haW50YWluIHRoZSBkbWFfZmVuY2UgYWJzdHJhY3Rp
b25zLiBBZGQgYQ0KPiA+IGNvcnJlc3BvbmRpbmcgTUFJTlRBSU5FUlMgZW50cnkuDQo+ID4NCj4g
PiBTaWduZWQtb2ZmLWJ5OiBQaGlsaXBwIFN0YW5uZXIgPHBoYXN0YUBrZXJuZWwub3JnPg0KPg0K
PiBBY2tlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0K
ZndpdywNCkFja2VkLWJ5OiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPg0K
Pg0KPiA+IC0tLQ0KPiA+ICBNQUlOVEFJTkVSUyB8IDMgKysrDQo+ID4gIDEgZmlsZSBjaGFuZ2Vk
LCAzIGluc2VydGlvbnMoKykNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9NQUlOVEFJTkVSUyBiL01B
SU5UQUlORVJTDQo+ID4gaW5kZXggNGFlNjkxOTQ1NGMzLi44YjAzZWIyYzU3OGEgMTAwNjQ0DQo+
ID4gLS0tIGEvTUFJTlRBSU5FUlMNCj4gPiArKysgYi9NQUlOVEFJTkVSUw0KPiA+IEBAIC03NTM1
LDYgKzc1MzUsNyBAQCBGOiAgICAgIGZzL2RsbS8NCj4gPiAgRE1BIEJVRkZFUiBTSEFSSU5HIEZS
QU1FV09SSw0KPiA+ICBNOiAgIFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+
DQo+ID4gIE06ICAgQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0K
PiA+ICtNOiAgIFBoaWxpcHAgU3Rhbm5lciA8cGhhc3RhQGtlcm5lbC5vcmc+DQo+ID4gIEw6ICAg
bGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnDQo+ID4gIEw6ICAgZHJpLWRldmVsQGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZw0KPiA+ICBMOiAgIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZyAo
bW9kZXJhdGVkIGZvciBub24tc3Vic2NyaWJlcnMpDQo+ID4gQEAgLTc1NDgsNiArNzU0OSw4IEBA
IEY6ICAgICAgaW5jbHVkZS9saW51eC9kbWEtYnVmLmgNCj4gPiAgRjogICBpbmNsdWRlL2xpbnV4
L2RtYS1idWYvDQo+ID4gIEY6ICAgaW5jbHVkZS9saW51eC9kbWEtcmVzdi5oDQo+ID4gIEY6ICAg
cnVzdC9oZWxwZXJzL2RtYS1yZXN2LmMNCj4gPiArRjogICBydXN0L2hlbHBlcnMvZG1hX2ZlbmNl
LmMNCj4gPiArRjogICBydXN0L2tlcm5lbC9kbWFfYnVmLw0KPiA+ICBLOiAgIFxiZG1hXyg/OmJ1
ZnxmZW5jZXxyZXN2KVxiDQo+ID4NCj4gPiAgRE1BIEdFTkVSSUMgT0ZGTE9BRCBFTkdJTkUgU1VC
U1lTVEVNDQo+DQoNCg0KQmVzdCwNClN1bWl0Lg0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJv
LW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8g
bGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
