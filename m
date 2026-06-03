Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LU1oA3z1H2oGtQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 03 Jun 2026 11:35:56 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 9082D636348
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 03 Jun 2026 11:35:55 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=google.com header.s=20251104 header.b=R+ykd5zw;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=google.com (policy=reject);
	arc=reject ("signature check failed: fail, {[1] = sig:google.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B016D409FF
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Jun 2026 09:35:54 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	by lists.linaro.org (Postfix) with ESMTPS id 85B9840981
	for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Jun 2026 09:35:44 +0000 (UTC)
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-490af320e2aso25601545e9.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 03 Jun 2026 02:35:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1780479343; cv=none;
        d=google.com; s=arc-20240605;
        b=AaGdnMG6uPBQxW7Cj+xqCiLE1NnMTlHHshGUy71UYCMvpDEknNdE2/5vFcwmK76U5h
         ExbkM/uioTmKDNW44ddDy/BU9WyCPnuhdfbyLgmK4S2orr3ZZ1d39slw3XPHqSO5bxz8
         upOpndRg+B0GofgvlSoKos0svmAzShz2A1uqXyVL62nQsrw6yyRQajX2SZu+slBwSHdS
         aEBjPkuPNmGbjHuB4sFDVrvHt3Bc8QdHBvGmoF4IebRyu54TH/BnZ/96VO9AZ3gKe28J
         q8IUbLGXFq1fkLinAr2ekZFPtaSd4nFuDU2PeqhL4r23jECo9RLHqDEwW1/WRBuC2tXz
         pStw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=qnmLv29VDM7TDLA9eKCDywEk/4kIQYPIoZRxiHYqPdE=;
        fh=/kPg9KDUx9yfwsR2E7dd4J9baKa1ASuXTiZskuRtuL8=;
        b=KwtMoDZesIIKYh7lOeGZKKyHwwSxFexD34L/p0MLd+tyBYf2yiw1TdLvAgRqZDvnPu
         iWn8za5TIG3LrNey/90CNkB1F99jGiBxb4EazbvqrdcZcFlE3BjQlCatgvciEgdwZvTk
         FyU6FP4N+4nqTSLp+zv1wkn2qVAfIS6mzgdzld4NBqrclte9E8K5nbkMwkK8Anal5Tm9
         UFGWxsgi4sVZcyx8ZQdwa0mgs3oZktjcyIg6LE5FsbOOszIO9IS+uOSx7cFqCwRfoLMg
         CZR1dNcHOJzSxZMCRPE6CgOK4lUnbumRMmXXKMLiHnpLXUfnyhYPo+Rha/okxk+QCZn2
         OhzA==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1780479343; x=1781084143; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qnmLv29VDM7TDLA9eKCDywEk/4kIQYPIoZRxiHYqPdE=;
        b=R+ykd5zwsmilzc5xp4HA1vcB4E/zaTSfeKgr2nFS/EbXYyNTeNJVAZ2V8IlH/r9cud
         0a9vli4uPFCA4fRfdPl2FNvdUZ9i7uiMuWxH2JrYw8OFt4WTwwGa6dyqmvQ/as+vph6W
         c1+ipsoifha02bFaQPwc3/iP8wyyMCcT9IXf82X5QcUv6QzVBirYeCbs2GAdcr+pOsQj
         MJhr0yNPYZIzXlW7eGXVwgetEacLM1Ib1hHJ44cqw3Opi5WKNxSLzZWyZO1UMAPzvzYn
         6xEf/ZA9KXpjv74l4+EAJiuzSv4EvVBY/7QMaNOEMP7sfvjdkWI7fsdXd2V6VStg9e/K
         WwXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780479343; x=1781084143;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=qnmLv29VDM7TDLA9eKCDywEk/4kIQYPIoZRxiHYqPdE=;
        b=b6EDk8aceq29dgYJkes14CzQRtGcLNrMBBMzoeP1xx1ufQNf/T8zdfs+Zodf03B/TR
         vdMMFTUkNDHxRZoIO/FJnftr7/Zj+3EBzk7S4TcXMCp+c7q8hiLDNYga70o/zkgwGy4a
         5dAkWUj7y+yEUAwgvLeH0ZO2rASF7JEQ+/sON42SL4m5WzMzVTNvQqbIkzuMQK7rm7p/
         ZY1hncYxKZmTSdrU+GEOVDKFxR7YMI8abIcV8d4Kv/TpC0sDTKTljwkqBEBaeR3KFGvl
         hUQQQWx06aqS+0HJTjAeQ6FHTde9XQTJIfoQp6LhU+36Dp6kMVeyx2H3RlTkvuwmkIJf
         2e8A==
X-Forwarded-Encrypted: i=1; AFNElJ9uqQfwSDC80ruwjupEbtgo9szmZBd8hEoOcElWr7bubHfqeGJgNLVb7ZUqjXXW6P/O2yfdP1eM3ascL+dp@lists.linaro.org
X-Gm-Message-State: AOJu0Yz7WtMXud6eeIiKRLi0rW+xDVNNQ6Cg7hCyKr5xbG66E4dcfqO2
	UrC7ZLUi0Xph0nYwVgkljORc0PvMLfL+vuI1ZxmTC0Lo7iGym2TU8vQOnkyqLlxbLm0DzkS2Ef9
	fCis0/VdppS+YtjS3A5hdR6mcWLZsv8rDzkq+kSsC
X-Gm-Gg: Acq92OHOV4/XenMMYRB58fY0TKFtiyR9Cakuom6U/IYgL1NNYHujY8lUXB1dRGeqt0+
	PR/G/IfZa3ypZV8YOzDu4ZODmf0AMCcETEd8It01kPewOFBWnANhhWkGqoqkvAu17oUYbtFGGqx
	I4vhohDubKAe3nnQutUdXQO2r/yWMTdeenLMClU46o7OESHB8EwxgO0NyEnUq6I4gdLdcm3a4SM
	HQPhwij85dLUvph0bk/s8rb4TibUjDyIZd1Fkf/ZdEBbPaQNpHelgWA/F6N/CJolvwta9lRyQkW
	cvJ4AFO6Nejfrvdgz0qL1sHUVKLET19Aqt/lUCXC1YA2PiYtWMlGObfXHAC3Js+E8nnxSe1mvxI
	VSZX+
X-Received: by 2002:a05:600c:8184:b0:490:5cd8:d213 with SMTP id
 5b1f17b1804b1-490b5eb44f8mr43679475e9.15.1780479343116; Wed, 03 Jun 2026
 02:35:43 -0700 (PDT)
MIME-Version: 1.0
References: <20260530143541.229628-2-phasta@kernel.org> <20260530143541.229628-4-phasta@kernel.org>
 <ahr9gtzQLSbPeBx_@tardis.local> <e8b16f3b40d42f3b0a8814180fa9b06f82c9d901.camel@mailbox.org>
 <ah2L-TMT5UHSd_Hs@tardis-2.local> <441fccce521857ab82b84bb8e5ab539ee3810a36.camel@mailbox.org>
In-Reply-To: <441fccce521857ab82b84bb8e5ab539ee3810a36.camel@mailbox.org>
From: Alice Ryhl <aliceryhl@google.com>
Date: Wed, 3 Jun 2026 11:35:28 +0200
X-Gm-Features: AVHnY4JfNUks84z0WqzXiLep0aUyPzGhK0pYIVWREZIpQzivqBZzfg4IE8o75iI
Message-ID: <CAH5fLghA5LfV+=r4-LbX+gaNo6v_-gSdcXOJHa76Lc74WCJ5JA@mail.gmail.com>
To: phasta@kernel.org
X-Spamd-Bar: ----
Message-ID-Hash: KYE5L52A6CXB3EYMABPEBOJPGGYH7NMU
X-Message-ID-Hash: KYE5L52A6CXB3EYMABPEBOJPGGYH7NMU
X-MailFrom: aliceryhl@google.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Boqun Feng <boqun@kernel.org>, Miguel Ojeda <ojeda@kernel.org>, Gary Guo <gary@garyguo.net>, =?UTF-8?Q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>, Trevor Gross <tmgross@umich.edu>, Danilo Krummrich <dakr@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, "Paul E. McKenney" <paulmck@kernel.org>, Frederic Weisbecker <frederic@kernel.org>, Neeraj Upadhyay <neeraj.upadhyay@kernel.org>, Joel Fernandes <joelagnelf@nvidia.com>, Josh Triplett <josh@joshtriplett.org>, Uladzislau Rezki <urezki@gmail.com>, Steven Rostedt <rostedt@goodmis.org>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, Lai Jiangshan <jiangshanlai@gmail.com>, Zqiang <qiang.zhang@linux.dev>, Daniel Almeida <daniel.almeida@collabora.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Igor Korotin <igor.korotin@linux.dev>, Lorenzo Stoakes <ljs@kernel.org>, Alexandre Courbo
 t <acourbot@nvidia.com>, FUJITA Tomonori <fujita.tomonori@gmail.com>, Krishna Ketan Rai <prafulrai522@gmail.com>, Shankari Anand <shankari.ak0208@gmail.com>, manos@pitsidianak.is, Boris Brezillon <boris.brezillon@collabora.com>, linux-kernel@vger.kernel.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, rcu@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/4] rust: rcu: add RcuBox type
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KYE5L52A6CXB3EYMABPEBOJPGGYH7NMU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [5.09 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed),reject];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[google.com:s=20251104];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[37];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:phasta@kernel.org,m:boqun@kernel.org,m:ojeda@kernel.org,m:gary@garyguo.net,m:bjorn3_gh@protonmail.com,m:lossin@kernel.org,m:a.hindborg@kernel.org,m:tmgross@umich.edu,m:dakr@kernel.org,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:paulmck@kernel.org,m:frederic@kernel.org,m:neeraj.upadhyay@kernel.org,m:joelagnelf@nvidia.com,m:josh@joshtriplett.org,m:urezki@gmail.com,m:rostedt@goodmis.org,m:mathieu.desnoyers@efficios.com,m:jiangshanlai@gmail.com,m:qiang.zhang@linux.dev,m:daniel.almeida@collabora.com,m:gregkh@linuxfoundation.org,m:igor.korotin@linux.dev,m:ljs@kernel.org,m:acourbot@nvidia.com,m:fujita.tomonori@gmail.com,m:prafulrai522@gmail.com,m:shankari.ak0208@gmail.com,m:manos@pitsidianak.is,m:boris.brezillon@collabora.com,m:linux-kernel@vger.kernel.org,m:rust-for-linux@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:rcu@vger.kernel.org,m:fujitatomonori@gmail.com,m:shankariak0208@gmai
 l.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[aliceryhl@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	GREYLIST(0.00)[pass,meta];
	FREEMAIL_CC(0.00)[kernel.org,garyguo.net,protonmail.com,umich.edu,linaro.org,amd.com,nvidia.com,joshtriplett.org,gmail.com,goodmis.org,efficios.com,linux.dev,collabora.com,linuxfoundation.org,pitsidianak.is,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	DKIM_TRACE(0.00)[google.com:-];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aliceryhl@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,mail.gmail.com:mid,mailbox.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9082D636348

T24gV2VkLCBKdW4gMywgMjAyNiBhdCAxMTozM+KAr0FNIFBoaWxpcHAgU3Rhbm5lciA8cGhhc3Rh
QG1haWxib3gub3JnPiB3cm90ZToNCj4NCj4gT24gTW9uLCAyMDI2LTA2LTAxIGF0IDA2OjQxIC0w
NzAwLCBCb3F1biBGZW5nIHdyb3RlOg0KPiA+IE9uIE1vbiwgSnVuIDAxLCAyMDI2IGF0IDA5OjU2
OjIzQU0gKzAyMDAsIFBoaWxpcHAgU3Rhbm5lciB3cm90ZToNCj4gPiA+IE9uIFNhdCwgMjAyNi0w
NS0zMCBhdCAwODowOCAtMDcwMCwgQm9xdW4gRmVuZyB3cm90ZToNCj4gPiA+ID4gT24gU2F0LCBN
YXkgMzAsIDIwMjYgYXQgMDQ6MzU6MTBQTSArMDIwMCwgUGhpbGlwcCBTdGFubmVyIHdyb3RlOg0K
PiA+ID4gPiA+IEZyb206IEFsaWNlIFJ5aGwgPGFsaWNlcnlobEBnb29nbGUuY29tPg0KPiA+ID4g
PiA+DQo+ID4gPiA+ID4gVGhpcyBhZGRzIGFuIFJjdUJveCBjb250YWluZXIsIHdoaWNoIGlzIGxp
a2UgS0JveCBleGNlcHQgdGhhdCB0aGUgdmFsdWUNCj4gPiA+ID4gPiBpcyBmcmVlZCB3aXRoIGtm
cmVlX3JjdS4NCj4gPiA+ID4gPg0KPiA+ID4gPiA+IFRvIGFsbG93IGNvbnRhaW5lcnMgdG8gcmVs
eSBvbiB0aGUgcmN1IHByb3BlcnRpZXMgb2YgUmN1Qm94LCBhbg0KPiA+ID4gPiA+IGV4dGVuc2lv
biBvZiBGb3JlaWduT3duYWJsZSBpcyBhZGRlZC4NCj4gPiA+ID4gPg0KPiA+ID4gPiA+IFNpZ25l
ZC1vZmYtYnk6IEFsaWNlIFJ5aGwgPGFsaWNlcnlobEBnb29nbGUuY29tPg0KPiA+ID4gPiA+IC0t
LQ0KPiA+ID4gPg0KPiA+ID4gPiBJIGhhdmUgdGhlIGZvbGxvd2luZyBvbiB0b3Agb2YgQWxpY2Un
cyBwYXRjaC4gQEFsaWNlLCBARGFuaWxvLCB0aG91Z2h0cz8NCj4gPiA+ID4NCj4gPiA+ID4gVGhl
biB3ZSBjYW4gaGF2ZToNCj4gPiA+ID4NCj4gPiA+ID4gdHlwZSBSY3VLQm94PFQ+ID0gUmN1Qm94
PFQsIEttYWxsb2M+Ow0KPiA+ID4gPiB0eXBlIFJjdVZCb3g8VD4gPSBSY3VCb3g8VCwgVm1hbGxv
Yz47DQo+ID4gPg0KPiA+ID4gTm8gb2JqZWN0aW9ucyBieSBtZS4NCj4gPiA+DQo+ID4gPiBJIGp1
c3QgdGhpbmsgd2UgaGF2ZSB0byBkZWNpZGUgaG93IHRoZSB0cmVhdCB0aGUgbmFtZXNwYWNlcywg
dGhvdWdoLg0KPiA+ID4gUHJvYmFibHkgQWxpY2Ugd3JvdGUgaXQgbGlrZSB0aGF0IHNvIHRoYXQg
aXQncyB2ZXJ5IGFwcGFyZW50IHRoYXQgdGhpcw0KPiA+ID4gaXMgbm90IGEgbm9ybWFsIGJveC4g
SXQgc3RpbGwgYnJlYWtzIHRoZSBuYW1pbmcgY29udmVudGlvbiBpbiBteQ0KPiA+ID4gb3Bpbmlv
bi4NCj4gPiA+DQo+ID4gPiByY3U6OkJveCB2cyByY3U6OlJjdUJveA0KPiA+ID4NCj4gPiA+IFdp
dGggYWxsIG90aGVyIHN1YnN5c3RlbXMsIG5hbWluZyBsaWtlIHRoYXQgc2VlbXMgbm90IGFsbG93
ZWQuDQo+ID4gPg0KPiA+ID4gZG1hOjpGZW5jZSB2cyBkbWE6OkRtYUZlbmNlDQo+ID4gPg0KPiA+
ID4NCj4gPiA+IEkgcHJvYmFibHkgd291bGQgYWxsb3cgdGhlIHVzZXIgdG8gZGVjaWRlIHdoZXRo
ZXIgaGUgd2FudHMgdG8ganVzdCB1c2UNCj4gPiA+IGl0IGFzIGByY3U6OkJveGAgaW4gYWxsIGhp
cyBjb2RlLg0KPiA+ID4NCj4gPiA+IEJ1dCBubyBoYXJkIGZlZWxpbmdzLg0KPiA+ID4NCj4gPg0K
PiA+IEZvciB0aGlzIEkgdGhpbmsgdGhhdCByY3U6OlJjdUJveCBpcyBhIGJpdCBkaWZmZXJlbnQg
dGhhbiBkbWE6OkZlbmNlLA0KPiA+IGJlY2F1c2UgQm94IGhhcyBpdHMgd2lkZWx5LWFjY2VwdGVk
IG1lYW5pbmcgdGhyb3VnaCBhbGwgUnVzdCBjb2RlLA0KPiA+IHdoaWxlIGBGZW5jZWAgZG9lc24n
dC4gSGVuY2UgbXkgY3VycmVudCB0aG91Z2h0IGlzIHJjdTo6UmN1Qm94IGFuZA0KPiA+IGRtYTo6
RmVuY2UuIE15IHBlcnNvbmFsIHByZWZlcmVuY2UgaXMgdXNpbmcgbmFtZXNwYWNlIGFzIG11Y2gg
YXMgd2UNCj4gPiBjb3VsZCB1bnRpbCB0aGVyZSBtaWdodCBiZSBzb21lIG1pc2xlYWRpbmcuDQo+
DQo+IFlvYWgsIHByb2JhYmx5IGJldHRlciB3ZSdyZSBzYWZlciByYXRoZXIgdGhhbiBoeXBlci1j
b25zaXN0ZW50Lg0KPg0KPiA+DQo+ID4gPg0KPiA+ID4NCj4gPiA+ID4NCj4gPiA+ID4gYW5kIFBo
aWxpcHAgY2FuIHVzZSB0aGUgYFJjdUtCb3hgIGluIHRoaXMgcGF0Y2hzZXQuIFdlIGFsc28gbmVl
ZCB0byBpbXBsDQo+ID4gPiA+IEluUGxhY2VJbml0IGZvciBSY3VCb3gsIGJ1dCB0aGF0IGNhbiBi
ZSBhZGRlZCBsYXRlci4NCj4gPiA+DQo+ID4gPiBTbyBzaGFsbCB3ZSBtZXJnZSBteSBzZXJpZXMg
d2l0aCBBbGljZSdzIHBhdGNoLCBhbmQgbGF0ZXIgd2UgYWRkIHlvdXINCj4gPiA+IHBhdGNoIGFu
ZCBvdGhlciBmZWF0dXJlcywgb3Igd291bGQgeW91IHByZWZlciB0byBoYXZlIHRoZSBhZGRpdGlv
bmFsDQo+ID4gPiBib3hlcyBmcm9tIHlvdXIgcGF0Y2ggZnJvbSB0aGUgZ2V0LWdvPw0KPiA+ID4N
Cj4gPg0KPiA+IEkgd291bGQgbGlrZSB0byBoYXZlIGl0IGZyb20gdGhlIGdldC1nbyBtYWlubHkg
YmVjYXVzZSBvZiBSY3VCb3ggdnMNCj4gPiBSY3VLQm94IG5hbWluZy4gVGhhbmsgeW91IQ0KPg0K
PiBGaW5lIGJ5IG1lLiBKdXN0IHByb2Nlc3Mtd2lzZTogaG93IHNob3VsZCB3ZSBkbyBpdD8NCj4N
Cj4gSSBjb3VsZCBpbmNsdWRlIHlvdXIgcGF0Y2ggb24gdG9wIG9mIEFsaWNlJ3MuIFdvdWxkIGJl
IGEgYml0IG1vcmUNCj4gY29uc2lzdGVudCByZWdhcmRpbmcgdGhlIGdpdC13b3JrZmxvdyBpZiB3
ZSdkIHNxdWFzaCB0aGUgdHdvIHBhdGNoZXMsDQo+IGJ1dCB0aGVuIHlvdSB0d28gd291bGQgaGF2
ZSB0byBhZ3JlZSBvbiBhdXRob3JzaGlwLg0KPg0KPiBBbGwgaXMgZmluZSBieSBtZSwgYnV0IEkg
d2FudGVkIHRvIGFzayBpbnN0ZWFkIG9mIGp1c3QgZG8gQSBvciBCLg0KDQpTcXVhc2hpbmcgaXMg
ZmluZSB3aXRoIG1lLCB0aGFua3MuDQoNCkFsaWNlDQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5h
cm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0
byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
