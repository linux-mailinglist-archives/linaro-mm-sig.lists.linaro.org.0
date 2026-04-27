Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cBTfD0yJ72kPCgEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Apr 2026 18:05:32 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id B6E36475F49
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Apr 2026 18:05:31 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AD0E3404B1
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Apr 2026 16:05:30 +0000 (UTC)
Received: from fout-a3-smtp.messagingengine.com (fout-a3-smtp.messagingengine.com [103.168.172.146])
	by lists.linaro.org (Postfix) with ESMTPS id 023D43F859
	for <linaro-mm-sig@lists.linaro.org>; Mon, 27 Apr 2026 16:05:25 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=arndb.de header.s=fm2 header.b=LM+1WQZb;
	dkim=pass header.d=messagingengine.com header.s=fm2 header.b="r cp5e0Y";
	dmarc=pass (policy=none) header.from=arndb.de;
	spf=pass (lists.linaro.org: domain of arnd@arndb.de designates 103.168.172.146 as permitted sender) smtp.mailfrom=arnd@arndb.de
Received: from phl-compute-04.internal (phl-compute-04.internal [10.202.2.44])
	by mailfout.phl.internal (Postfix) with ESMTP id D7ECAEC0FC1;
	Mon, 27 Apr 2026 12:05:24 -0400 (EDT)
Received: from phl-imap-02 ([10.202.2.81])
  by phl-compute-04.internal (MEProxy); Mon, 27 Apr 2026 12:05:24 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arndb.de; h=cc
	:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm2; t=1777305924;
	 x=1777392324; bh=ZCtou/cEXXCW2EAHTSeZgopr0M/VLaS4+NUan7nzjpo=; b=
	LM+1WQZbjg5FBMii6wK/sxZP2lOaFxRnk3u5Y3RPRDCzwUmZITJVrJYqecL2ip3a
	4zzSTLCelWjFhL013m4iJHoxS6Qryrlltr0l0KcnCsF0zd8QPA8q6pUln4acYa8M
	54nuREiojIbbaBaMFMLGNK8a5NR9/kuocofwyDkZm5DW7GuZ/jmqkNE5M3f46zKo
	5QaTkvQGYhoJdysVmGamXRQKrpuIz7P+dDEeMSCkxebmSIF11REtmkrF47cpziZe
	zenSKG9DiD44E7jJxT04sOGvo0Hmconj/mNLbJlmwwqDLCfLgJ3JyiScecfLsZYk
	HjdD77kIDYfokvaUaH6FTQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1777305924; x=
	1777392324; bh=ZCtou/cEXXCW2EAHTSeZgopr0M/VLaS4+NUan7nzjpo=; b=r
	cp5e0YzGwabDnLbX/xXlbtzzv9e8OX0XRwm69dlgxbBAO3PGQDnv+gLQ9iNaw41t
	wiog0CQMhPF+ACfM6DLMRENiyAYiJeJm1+ICJB+8quz+E31tQ6nPNQPc/XBiA0pw
	n/cJg9b/IcMhSBopBJbLrEhhxyEQYKBBRMOIyStsB49kW1o929ihCOJ9oxPJS4yR
	mklaN+1vMJ3XdBzCPiiHtUvU0bqlp9z4Q7AZjFEMVRW4SXSTRkvgkYb2ToIN4omR
	5t/JFUxGzDJDq0qYmldtbIqsLrBi89KCkPrVSmT1gzvgREkXP55VsmGOAjNpoHa2
	dL7fdzim8Bm97btgfIZ5Q==
X-ME-Sender: <xms:Q4nvabvgD-Y0-q21rj0xIevp3vYtWZ1cxKFvIuxKRHMaTtQTxjGz5A>
    <xme:Q4nvaXSFnWpwpLdH3gTHczIdKeqNIYEdHjDNHzryu4ch2F0apyFIXLg61RMHMZ-b3
    304p_cMmvtBQBKrtHOzNpIgGPl-vyiY4uum6i7My8pPO5wY649nPVo>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgdejleduvdcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjug
    hrpefoggffhffvvefkjghfufgtgfesthhqredtredtjeenucfhrhhomhepfdetrhhnugcu
    uegvrhhgmhgrnhhnfdcuoegrrhhnugesrghrnhgusgdruggvqeenucggtffrrghtthgvrh
    hnpedvhfdvkeeuudevfffftefgvdevfedvleehvddvgeejvdefhedtgeegveehfeeljeen
    ucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrrhhnug
    esrghrnhgusgdruggvpdhnsggprhgtphhtthhopeefjedpmhhouggvpehsmhhtphhouhht
    pdhrtghpthhtohepjhgsrghrohhnsegrkhgrmhgrihdrtghomhdprhgtphhtthhopegthh
    hrihhsthhirghnrdhkohgvnhhighesrghmugdrtghomhdprhgtphhtthhopehmphgvsegv
    lhhlvghrmhgrnhdrihgurdgruhdprhgtphhtthhopehsihhmohhnrgdrvhgvthhtvghrse
    hffhiflhhlrdgthhdprhgtphhtthhopehgrghrhiesghgrrhihghhuohdrnhgvthdprhgt
    phhtthhopegurghvihgurdhlrghighhhthdrlhhinhhugiesghhmrghilhdrtghomhdprh
    gtphhtthhopehmkhgthhgruhhrrghssehgmhgrihhlrdgtohhmpdhrtghpthhtohepnhhi
    tghkrdguvghsrghulhhnihgvrhhsodhlkhhmlhesghhmrghilhdrtghomhdprhgtphhtth
    hopehnphhighhgihhnsehgmhgrihhlrdgtohhm
X-ME-Proxy: <xmx:Q4nvacXMD2rgkFYfQT6xRfjCHHzuIur5ewWkYvLB3s1CPfPeONk9Yg>
    <xmx:Q4nvaY2Is8kGpnqdtzP_bEIxpw2iOsohNjjdyy0uXHi_Xq7T0TrmMg>
    <xmx:Q4nvaeM0ht2htEmAr3ZLvSR44Fg_2_9W52RbXTZcjuamGIomTUJOMg>
    <xmx:Q4nvaQS7xdW9MU6arMT9qKha7QhqS-7qn5T0fzYzrfcy_Nars0aFfg>
    <xmx:RInvaRzrTfYEHKqKGtWlisXUYFSpPribsTZQ5DAa5owond2lsXUold8G>
Feedback-ID: i56a14606:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
	id 3B6AE700065; Mon, 27 Apr 2026 12:05:23 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
X-ThreadId: ADiin7Vigcc3
Date: Mon, 27 Apr 2026 18:05:01 +0200
From: "Arnd Bergmann" <arnd@arndb.de>
To: "Link Mauve" <linkmauve@linkmauve.fr>,
 "David Laight" <david.laight.linux@gmail.com>
Message-Id: <21348763-ff78-46c6-b0eb-eedce69a839a@app.fastmail.com>
In-Reply-To: <aes7L3M1d_LvvGKa@luna>
References: <20260424054742.45832-1-mkchauras@gmail.com>
 <20260424054742.45832-6-mkchauras@gmail.com>
 <20260424101425.6bde0e17@pumpkin> <aes7L3M1d_LvvGKa@luna>
X-Spamd-Bar: ---
Message-ID-Hash: JS7GU37TIZYHPE6J2YMY4WV3DYWN2B6U
X-Message-ID-Hash: JS7GU37TIZYHPE6J2YMY4WV3DYWN2B6U
X-MailFrom: arnd@arndb.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Mukesh Kumar Chaurasiya (IBM)" <mkchauras@gmail.com>, Madhavan Srinivasan <maddy@linux.ibm.com>, Michael Ellerman <mpe@ellerman.id.au>, Nicholas Piggin <npiggin@gmail.com>, Christophe Leroy <chleroy@kernel.org>, Peter Zijlstra <peterz@infradead.org>, Josh Poimboeuf <jpoimboe@kernel.org>, Jason Baron <jbaron@akamai.com>, Alice Ryhl <aliceryhl@google.com>, Steven Rostedt <rostedt@goodmis.org>, Ard Biesheuvel <ardb@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Miguel Ojeda <ojeda@kernel.org>, boqun@kernel.org, Gary Guo <gary@garyguo.net>, =?UTF-8?Q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>, Trevor Gross <tmgross@umich.edu>, Danilo Krummrich <dakr@kernel.org>, Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <nick.desaulniers+lkml@gmail.com>, Bill Wendling <morbo@google.com>, Justin Stitt <justinstitt@google.com>, tamird@kerne
 l.org, Nicolas Schier <nsc@kernel.org>, simona.vetter@ffwll.ch, linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, rust-for-linux@vger.kernel.org, llvm@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH V13 5/7] rust: Make __udivdi3() and __umoddi3() panic
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JS7GU37TIZYHPE6J2YMY4WV3DYWN2B6U/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: B6E36475F49
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.20 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[arndb.de:s=fm2,messagingengine.com:s=fm2];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[arndb.de : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	XM_UA_NO_VERSION(0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FREEMAIL_TO(0.00)[linkmauve.fr,gmail.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[37];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,linux.ibm.com,ellerman.id.au,kernel.org,infradead.org,akamai.com,google.com,goodmis.org,linaro.org,amd.com,garyguo.net,protonmail.com,umich.edu,kerne,ffwll.ch,lists.ozlabs.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	DKIM_TRACE(0.00)[arndb.de:-,messagingengine.com:-];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[arnd@arndb.de,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.883];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig,lkml];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linkmauve.fr:email,app.fastmail.com:mid,linaro.org:email]

T24gRnJpLCBBcHIgMjQsIDIwMjYsIGF0IDExOjQzLCBMaW5rIE1hdXZlIHdyb3RlOg0KPiBPbiBG
cmksIEFwciAyNCwgMjAyNiBhdCAxMDoxNDoyNUFNICswMTAwLCBEYXZpZCBMYWlnaHQgd3JvdGU6
DQo+PiBPbiBGcmksIDI0IEFwciAyMDI2IDExOjE3OjQwICswNTMwDQo+PiAiTXVrZXNoIEt1bWFy
IENoYXVyYXNpeWEgKElCTSkiIDxta2NoYXVyYXNAZ21haWwuY29tPiB3cm90ZToNCj4+IA0KPj4g
PiBGcm9tOiBMaW5rIE1hdXZlIDxsaW5rbWF1dmVAbGlua21hdXZlLmZyPg0KPj4gPiANCj4+ID4g
VGhlIGNvcmUgY3JhdGUgY3VycmVudGx5IGRlcGVuZHMgb24gdGhlc2UgdHdvIGZ1bmN0aW9ucyBm
b3IgaTY0L3U2NC8NCj4+ID4gaTEyOC91MTI4L2NvcmU6OnRpbWU6OkR1cmF0aW9uIGZvcm1hdHRp
bmcsIGJ1dCB3ZSBzaG91bGRu4oCZdCB1c2UgdGhhdCBpbg0KPj4gPiB0aGUga2VybmVsIHNvIGxl
dOKAmXMgcGFuaWMgaWYgdGhleSBhcmUgZXZlciBjYWxsZWQuDQo+PiANCj4+IFVnZy4NCj4+IFN1
cmVseSB5b3UgY2FuIG1ha2UgaXQgYSBsaW5rLXRpbWUgZmFpbHVyZT8NCj4+IE9yIGNoYW5nZSB0
aGUgdW5kZXJseWluZyBjb2RlIHRvIGF2b2lkIHRoZSBkaXZpZGUuDQo+DQo+IFRoaXMgaXMgY3Vy
cmVudGx5IGEgbGluay10aW1lIGZhaWx1cmUsIHdoaWNoIG1lYW5zIGlmIGFueSBvZiB0aGUgY29y
ZQ0KPiBjcmF0ZSBvciBkcm1fcGFuaWNfcXIgYXJlIGxpbmtlZCBpbiwgdGhlIGtlcm5lbCB3aWxs
IGZhaWwgdG8gbGluay4NCj4NCj4gQW5kIHNpbmNlIHdlIHJlbHkgb24gY29yZSwgdGhhdCBtZWFu
cyBubyBrZXJuZWwgY2FuIGJlIGJ1aWx0IG9uIFBvd2VyUEMNCj4gd2l0aG91dCB0aGlzIHBhdGNo
Lg0KPg0KPiBBIHBvc3NpYmxlIHNvbHV0aW9uIHdvdWxkIGJlIHRvIGNoYW5nZSB0aGUgY29yZSBj
cmF0ZSB0byBub3QgZGl2aWRlDQo+IHU2NHMsIGJ1dCB0aGUgbGFzdCB0aW1lIEkgdHJpZWQgdG8g
ZG8gdGhhdCBJIGNvdWxkbuKAmXQgcXVpdGUgZmlndXJlIG91dA0KPiBob3cgdG8gZG8gZm9ybWF0
dGluZyB3aXRob3V0IGl0LCBtYXliZSBJIHdpbGwganVzdCBvcGVuIGFuIGlzc3VlIGFnYWluc3QN
Cj4gUnVzdC4NCg0KSSB0aGluayB5b3UganVzdCBuZWVkIHRvIHJld3JpdGUgdGhlIHBhdGNoIGRl
c2NyaXB0aW9uLCBpdCBhcHBlYXJzDQp0aGF0IGV2ZXJ5b25lIG1pc3VuZGVyc3RhbmRzIHdoYXQg
eW91IGFyZSBkb2luZyBpbiB0aGUgcGF0Y2g6DQoNCkxpa2Ugb24gYXJtMzIsIG5vcm1hbCBrZXJu
ZWwgY29kZSB3aWxsIGNvbnRpbnVlIHRvIGNhdXNlDQphIGxpbmsgZmFpbHVyZSB0aGUgc2FtZSB3
YXkgaW4gUnVzdCBhcyBpdCBkb2VzIGluIEMsIGFuZCB5b3VyDQpwYXRjaCBkb2VzIG5vdCBjaGFu
Z2UgdGhhdC4gV2hlbiB5b3UgKG9yIExpbmsgTWF1dmUpICJsZXQncyBwYW5pYyIsDQpJIGFzc3Vt
ZSB0aGlzIGlzIHdhcyBqdXN0IGEgbWlzdGFrZSBpbiBzdW1tYXJpemluZyB0aGUgbG9naWMNCnRo
YXQgdHVybnMgdGhlIHVucmVhY2hhYmxlIGNvZGUgZnJvbSB0aGUgUnVzdCBjb3JlIGNyYXRlDQpp
bnRvIGEgcnVudGltZSBhc3NlcnRpb24gc2luY2UgaXQgd291bGQgYmUgaW1wb3NzaWJsZSB0byBs
aW5rDQp0aGUga2VybmVsIG90aGVyd2lzZS4NCg0KU2lsZW50bHkgdHVybmluZyBhIDY0LWJpdCBk
aXZpc2lvbiBpbnRvIGEgcGFuaWMoKSBmb3Igbm9ybWFsDQpjb2RlIHdvdWxkIG9mIGNvdXJzZSBi
ZSB1bmFjY2VwdGFibGUsIGJ1dCB0aGF0J3Mgbm90IHdoYXQNCnlvdSBhcmUgZG9pbmcgaGVyZS4N
Cg0KICAgIEFybmQNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVh
dmVAbGlzdHMubGluYXJvLm9yZwo=
