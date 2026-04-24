Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mKFtJhhE62nZKAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2026 12:21:12 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A8CE45CF49
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2026 12:21:11 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 63E0F405D2
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2026 10:21:10 +0000 (UTC)
Received: from fhigh-b7-smtp.messagingengine.com (fhigh-b7-smtp.messagingengine.com [202.12.124.158])
	by lists.linaro.org (Postfix) with ESMTPS id 327593F768
	for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Apr 2026 10:21:07 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=arndb.de header.s=fm2 header.b=B+mbviNm;
	dkim=pass header.d=messagingengine.com header.s=fm2 header.b="E vjUS9v";
	dmarc=pass (policy=none) header.from=arndb.de;
	spf=pass (lists.linaro.org: domain of arnd@arndb.de designates 202.12.124.158 as permitted sender) smtp.mailfrom=arnd@arndb.de
Received: from phl-compute-04.internal (phl-compute-04.internal [10.202.2.44])
	by mailfhigh.stl.internal (Postfix) with ESMTP id 6530A7A0202;
	Fri, 24 Apr 2026 06:21:05 -0400 (EDT)
Received: from phl-imap-02 ([10.202.2.81])
  by phl-compute-04.internal (MEProxy); Fri, 24 Apr 2026 06:21:06 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arndb.de; h=cc
	:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm2; t=1777026065;
	 x=1777112465; bh=w2de/s2AwmjIkqgLfGJWj9+HNtcuQscOiCuhi0QGHvI=; b=
	B+mbviNmF9wq74f8/lvFylh2LL/ywyLUaboT2KdejP8+I+M57VP/d1HUt7AwypMq
	qaeOu1Xppm7uHREC6EuqmB4jQy0BchcaxNRJzQSqU8kMxsMxC8zj+FHAaMZd9HXN
	Le0vS+k4ZeVAPRSBwN+SZznIRJFMcYAjVB/HMnXZbvMBSLMvMXVvgnQ7K6jvCB2W
	1Ov4fAbacwhTJl1nFoXWx1UyViKeYs+/Y0XWxYaPjb8IpWHJBX0u6+irQDiNmSjN
	aVE8gd42KYQEw0HVVVFw3YOsBrotrRTZlrMeoW82y1XGRkVchLLJNDuRxAsFrlUI
	UfN/m7UDmtiXo2GiVmYdyA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1777026065; x=
	1777112465; bh=w2de/s2AwmjIkqgLfGJWj9+HNtcuQscOiCuhi0QGHvI=; b=E
	vjUS9vnPFGVt0akajaJyWtOEP3igkDnGryoMmKtC+4gJcYWCLkBaL5yF1rrOrgwy
	gXOtiWTIxCSKXYS/M3AFOJHDw4Bs421sbwuxJodC4BVzgIof9uAVXn7P+2tYOaOk
	CFxzWP8DCsGv9Kq58wtYzv39IcRC3z5eImSpwX9IWWZjNAiv19xarXqUMTWdP7c4
	Sjv4AHktsSJksuV9KiNSJrA/lJxTAyjND0zIz0Awgrtq1dmZ5CEyxUFkZuN9R+yu
	HVIfP7GP0FEF3XwDJoJcDXjWPPX9qLIqOzZPKAhTJy5OPIyuyAxQP890sPwvmJKY
	blSL+l+DF2KnTekchZDKg==
X-ME-Sender: <xms:D0Trae19MjTG_za4-q6tI3IYukIc3qi3IM-4gsy0ZI7NA0sIlvhZcQ>
    <xme:D0Trab5frQ6BPQUr6fQGYLUjtZxK2x-yKx1MZiA5iKL4ixvKLGbxrdzmcfoIMR8lQ
    U7W2GMHzzu6UP2SV595C6RuMeS1q1NZzSN5pa75raHKng3oJLedNcY>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgdeileejjecutefuodetggdotefrod
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
X-ME-Proxy: <xmx:EETrabWiu3Q4TKvBFiT-sC4gHXQTtatPtyMUsrhrNVGBzlFu-Yb58w>
    <xmx:EETraW4pyJGCDNQiU_FGAV1NORAvBgkhoz31Kuzm7HZA31Wp9TnvJQ>
    <xmx:EETraTNmbHOygZe1GbvWONAPt3n1uBYwe4Ukor476cerA33kURAYpw>
    <xmx:EETraZj_NAivBLsOtToh9Y2ogcA225k_V99MUmvMXWwNQU7wqhLDbQ>
    <xmx:EUTraRI7sgO1747jdWIkY_dPJ1VToHV6U6hOWdjaLuAyw7okPuTQVZnk>
Feedback-ID: i56a14606:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
	id DE31E700069; Fri, 24 Apr 2026 06:21:03 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
X-ThreadId: ADiin7Vigcc3
Date: Fri, 24 Apr 2026 12:20:31 +0200
From: "Arnd Bergmann" <arnd@arndb.de>
To: "Link Mauve" <linkmauve@linkmauve.fr>,
 "David Laight" <david.laight.linux@gmail.com>
Message-Id: <0a81f510-7b49-4879-b0bb-3b24dbfc0788@app.fastmail.com>
In-Reply-To: <aes7L3M1d_LvvGKa@luna>
References: <20260424054742.45832-1-mkchauras@gmail.com>
 <20260424054742.45832-6-mkchauras@gmail.com>
 <20260424101425.6bde0e17@pumpkin> <aes7L3M1d_LvvGKa@luna>
X-Spamd-Bar: ---
Message-ID-Hash: JMUN25F3RCX4MJEGBB6S2HEUW2RYDLXY
X-Message-ID-Hash: JMUN25F3RCX4MJEGBB6S2HEUW2RYDLXY
X-MailFrom: arnd@arndb.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Mukesh Kumar Chaurasiya (IBM)" <mkchauras@gmail.com>, Madhavan Srinivasan <maddy@linux.ibm.com>, Michael Ellerman <mpe@ellerman.id.au>, Nicholas Piggin <npiggin@gmail.com>, Christophe Leroy <chleroy@kernel.org>, Peter Zijlstra <peterz@infradead.org>, Josh Poimboeuf <jpoimboe@kernel.org>, Jason Baron <jbaron@akamai.com>, Alice Ryhl <aliceryhl@google.com>, Steven Rostedt <rostedt@goodmis.org>, Ard Biesheuvel <ardb@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Miguel Ojeda <ojeda@kernel.org>, boqun@kernel.org, Gary Guo <gary@garyguo.net>, =?UTF-8?Q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>, Trevor Gross <tmgross@umich.edu>, Danilo Krummrich <dakr@kernel.org>, Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <nick.desaulniers+lkml@gmail.com>, Bill Wendling <morbo@google.com>, Justin Stitt <justinstitt@google.com>, tamird@kerne
 l.org, Nicolas Schier <nsc@kernel.org>, simona.vetter@ffwll.ch, linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, rust-for-linux@vger.kernel.org, llvm@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH V13 5/7] rust: Make __udivdi3() and __umoddi3() panic
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JMUN25F3RCX4MJEGBB6S2HEUW2RYDLXY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: 9A8CE45CF49
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
	TAGGED_RCPT(0.00)[linaro-mm-sig,lkml];
	NEURAL_SPAM(0.00)[0.014];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,linkmauve.fr:email]

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
Cj4gUnVzdC4NCg0KSG93IGhhcmQgd291bGQgaXQgYmUgdG8gaGF2ZSBhIHByaXZhdGUgY29weSBv
ZiB0aGUgcGFydHMgb2YgdGhlIGNvcmUNCmNyYXRlIHRoYXQgdGhlIGtlcm5lbCBhY3R1YWxseSBu
ZWVkcz8gU2luY2UgTGludXggaXMgbmVpdGhlciBxdWl0ZQ0KaG9zdGVkICh1c2luZyBhIGZ1bGwg
bGliYykgbm9yIGVudGlyZWx5IGZyZWVzdGFuZGluZyAoc3RpbGwgdXNpbmcNCnNvbWUgbGlicmFy
eSBpbnRlcmZhY2VzKSwgdGhlIEMgaW1wbGVtZW50YXRpb24gb24gbW9zdCBhcmNoaXRlY3R1cmVz
DQpoYXMgYSBzbWFsbCBzdWJzZXQgb2YgdGhlIGxpYmdjYyB0aGF0IHdlIHNoaXAgd2l0aCB0aGUg
a2VybmVsLg0KDQpJIGFzc3VtZSB0aGUgY29yZSBjcmF0ZSBpcyBsYXJnZXIgdGhhbiBsaWJnY2Ms
IGJ1dCBJIGRvbid0IGtub3cgaG93DQptdWNoIG9mIGl0IGlzIGFjdHVhbGx5IG5lZWRlZCBoZXJl
Lg0KDQogICAgICAgQXJuZA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNp
Zy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
