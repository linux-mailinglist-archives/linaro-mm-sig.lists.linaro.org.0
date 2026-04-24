Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SB8fCw4x62lfJwAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2026 10:59:58 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id BBF6F45BCE3
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2026 10:59:57 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 64AFB3F768
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2026 08:59:56 +0000 (UTC)
Received: from fhigh-b3-smtp.messagingengine.com (fhigh-b3-smtp.messagingengine.com [202.12.124.154])
	by lists.linaro.org (Postfix) with ESMTPS id 90F383F768
	for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Apr 2026 08:59:51 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=arndb.de header.s=fm2 header.b=VAwtGBDd;
	dkim=pass header.d=messagingengine.com header.s=fm2 header.b="D QKHbfZ";
	dmarc=pass (policy=none) header.from=arndb.de;
	spf=pass (lists.linaro.org: domain of arnd@arndb.de designates 202.12.124.154 as permitted sender) smtp.mailfrom=arnd@arndb.de
Received: from phl-compute-04.internal (phl-compute-04.internal [10.202.2.44])
	by mailfhigh.stl.internal (Postfix) with ESMTP id 92E997A025F;
	Fri, 24 Apr 2026 04:59:49 -0400 (EDT)
Received: from phl-imap-02 ([10.202.2.81])
  by phl-compute-04.internal (MEProxy); Fri, 24 Apr 2026 04:59:51 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arndb.de; h=cc
	:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm2; t=1777021189;
	 x=1777107589; bh=mlomHPrruE4T+ys87B/weKxrB+OMcheSKA7ybwHe8Os=; b=
	VAwtGBDdupJVNcGs4MDYlHN/jcjRLczK3kvxLgWoQdqSNpidCbOM34UZdtC47lPI
	3mzLU0zrlTFvKZ4ByH4LX9Kc74D/yZouVzPWdHMwcRR2I1feKTWewWA7tTWI+ZJn
	PrCivp8NoY5n6WX3mrTswbFq4VmW/SNE7TH8ixsNpRyhFWyWMFTL1KmtdlIq+YV4
	Kqd5RjvlVW8dM6YHO4uaay2H+g3/Hiwvkb+D9ydasIbOygdMJBl45LE1dQLMPNks
	e6uubMuXLbwSb53dOAF6N0Z68dFgeLj6Sr8wJEC5GhRXlY6SxMikVtgDQeLDHKcT
	a6xtaaVwbYWaDHF/GgPeYg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1777021189; x=
	1777107589; bh=mlomHPrruE4T+ys87B/weKxrB+OMcheSKA7ybwHe8Os=; b=D
	QKHbfZw7Q2sK5fyHnbXqxbgWESxL1nXYGxwluPhFn04CPG0ZBoNwIGyTlE2bmVOx
	AdU+JrNbqccmxNUNuf1Unuo3Y9MufNOoEOQUHzy/Dt0Fd1EUMAWkUy8g7wYkzTZk
	tHj6S0blQgtMsWFUzUXtS4X7Zb/ocS8a8QF/iF4O4Ff1YZL5wyy6+pWnRWUMD/qt
	6RslSA1fTW4t8AVYcxkj3Q1GOVC79Od4yVRo3O1HtUx0w7zq8/HWNi0pcd1fSOhr
	zPwSZ8Jr8MoCjwPosyG48F3HQ7x+w8nWRA6wOb4l1R5vVbrgunuKZd/1BLg5Y/O/
	PAZfYZ88A0es7wYw41N1w==
X-ME-Sender: <xms:AzHraaywWnncYS8tNhxu63w-pdBByhF1khzcFj2QqdnD_7zXkakFWg>
    <xme:AzHraRGVdgiwkNe1nvTP1k6zaX_wJ8ZkyqgdKXya6mgkEbVD7yti8eiOP4J83Qde8
    hva1xiaUorg-yfUdfieO-6I8coGh6k11H7kKx3As8c6Wb13HojPbxs>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgdeileeiudcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjug
    hrpefoggffhffvvefkjghfufgtgfesthhqredtredtjeenucfhrhhomhepfdetrhhnugcu
    uegvrhhgmhgrnhhnfdcuoegrrhhnugesrghrnhgusgdruggvqeenucggtffrrghtthgvrh
    hnpedvhfdvkeeuudevfffftefgvdevfedvleehvddvgeejvdefhedtgeegveehfeeljeen
    ucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrrhhnug
    esrghrnhgusgdruggvpdhnsggprhgtphhtthhopeefiedpmhhouggvpehsmhhtphhouhht
    pdhrtghpthhtohepjhgsrghrohhnsegrkhgrmhgrihdrtghomhdprhgtphhtthhopegthh
    hrihhsthhirghnrdhkohgvnhhighesrghmugdrtghomhdprhgtphhtthhopehmphgvsegv
    lhhlvghrmhgrnhdrihgurdgruhdprhgtphhtthhopehsihhmohhnrgdrvhgvthhtvghrse
    hffhiflhhlrdgthhdprhgtphhtthhopehgrghrhiesghgrrhihghhuohdrnhgvthdprhgt
    phhtthhopehmkhgthhgruhhrrghssehgmhgrihhlrdgtohhmpdhrtghpthhtohepnhhitg
    hkrdguvghsrghulhhnihgvrhhsodhlkhhmlhesghhmrghilhdrtghomhdprhgtphhtthho
    pehnphhighhgihhnsehgmhgrihhlrdgtohhmpdhrtghpthhtoheprhhoshhtvgguthesgh
    hoohgumhhishdrohhrgh
X-ME-Proxy: <xmx:AzHraU8PAM-pOR819TPN7Sy12OwyJa_bV3rrivQ1T8WeNaru67PLBQ>
    <xmx:AzHraYGd2u2SgOhQCAvkyX46Rn0Y5ChJvYTIHhv9DEn4DxxVWJHpyg>
    <xmx:AzHraTb8M-1Ggg45Cjrw2tGk-khaiCVKwHOQcW9e1jDzIcTeHgAb5w>
    <xmx:AzHracMu7nyMcdKc_oWpxYP_L21uEHKH1knniB8yVyBMOxpxXlfuYg>
    <xmx:BTHrafRJhrCm9AgwqxWvjH44g0NYZQpqxnlIVz9LfEM3RmBfYtPHuybK>
Feedback-ID: i56a14606:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
	id BE908700065; Fri, 24 Apr 2026 04:59:47 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
X-ThreadId: ADiin7Vigcc3
Date: Fri, 24 Apr 2026 10:59:27 +0200
From: "Arnd Bergmann" <arnd@arndb.de>
To: "Mukesh Kumar Chaurasiya (IBM)" <mkchauras@gmail.com>,
 "Madhavan Srinivasan" <maddy@linux.ibm.com>,
 "Michael Ellerman" <mpe@ellerman.id.au>,
 "Nicholas Piggin" <npiggin@gmail.com>,
 "Christophe Leroy" <chleroy@kernel.org>,
 "Peter Zijlstra" <peterz@infradead.org>,
 "Josh Poimboeuf" <jpoimboe@kernel.org>,
 "Jason Baron" <jbaron@akamai.com>, "Alice Ryhl" <aliceryhl@google.com>,
 "Steven Rostedt" <rostedt@goodmis.org>,
 "Ard Biesheuvel" <ardb@kernel.org>,
 "Sumit Semwal" <sumit.semwal@linaro.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 "Miguel Ojeda" <ojeda@kernel.org>, boqun@kernel.org,
 "Gary Guo" <gary@garyguo.net>,
 =?UTF-8?Q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>,
 "Benno Lossin" <lossin@kernel.org>,
 "Andreas Hindborg" <a.hindborg@kernel.org>,
 "Trevor Gross" <tmgross@umich.edu>, "Danilo Krummrich" <dakr@kernel.org>,
 "Nathan Chancellor" <nathan@kernel.org>,
 "Nick Desaulniers" <nick.desaulniers+lkml@gmail.com>,
 "Bill Wendling" <morbo@google.com>,
 "Justin Stitt" <justinstitt@google.com>, tamird@kernel.org,
 "Nicolas Schier" <nsc@kernel.org>, simona.vetter@ffwll.ch,
 linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, rust-for-linux@vger.kernel.org,
 llvm@lists.linux.dev
Message-Id: <b5e7c099-3a5a-44dc-bc7b-42429abe3aec@app.fastmail.com>
In-Reply-To: <20260424054742.45832-6-mkchauras@gmail.com>
References: <20260424054742.45832-1-mkchauras@gmail.com>
 <20260424054742.45832-6-mkchauras@gmail.com>
X-Spamd-Bar: ---
Message-ID-Hash: 3ESSZATBEAPM2I3YJ2USQPKLEMTBC2D4
X-Message-ID-Hash: 3ESSZATBEAPM2I3YJ2USQPKLEMTBC2D4
X-MailFrom: arnd@arndb.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Link Mauve <linkmauve@linkmauve.fr>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH V13 5/7] rust: Make __udivdi3() and __umoddi3() panic
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3ESSZATBEAPM2I3YJ2USQPKLEMTBC2D4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: BBF6F45BCE3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.20 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[arndb.de:s=fm2,messagingengine.com:s=fm2];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[arndb.de : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,linux.ibm.com,ellerman.id.au,kernel.org,infradead.org,akamai.com,google.com,goodmis.org,linaro.org,amd.com,garyguo.net,protonmail.com,umich.edu,ffwll.ch,lists.ozlabs.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[36];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DKIM_TRACE(0.00)[arndb.de:-,messagingengine.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[arnd@arndb.de,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[linaro-mm-sig,lkml];
	NEURAL_HAM(-0.00)[-0.080];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[app.fastmail.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns]

T24gRnJpLCBBcHIgMjQsIDIwMjYsIGF0IDA3OjQ3LCBNdWtlc2ggS3VtYXIgQ2hhdXJhc2l5YSAo
SUJNKSB3cm90ZToNCj4NCj4gVGhpcyBkb2VzbuKAmXQgeWV0IGZpeCBkcm1fcGFuaWNfcXIucnMs
IHdoaWNoIGFsc28gdXNlcyBfX3VkaXZkaTMgd2hlbg0KPiBDT05GSUdfQ0NfT1BUSU1JWkVfRk9S
X1NJWkU9eSwgYnV0IGF0IGxlYXN0IG1ha2VzIHRoZSByZXN0IG9mIHRoZSBrZXJuZWwNCj4gYnVp
bGQgb24gUFBDMzIuDQoNCkl0IGxvb2tzIGxpa2UgdGhlIHByb2JsZW0gaXMgY29tbWl0IDlhZjhm
MmI0NjljMCAoImRybS9wYW5pYzogQWRkIGENCnU2NCBkaXZpZGUgYnkgMTAgZm9yIGFybTMyIikg
ZGVzY3JpYmluZyB0aGlzIGFzIGFuIGFybTMyIHNwZWNpZmljDQppc3N1ZSByYXRoZXIgdGhhbiBz
b21ldGhpbmcgY29tbW9uIGZvciBhbnkgMzItYml0IGFyY2hpdGVjdHVyZS4NCg0KWW91IGNhbiBw
cm9iYWJseSBhZGQgYSBydXN0IHZlcnNpb24gb2YgZGl2X3U2NCgpIGFuZCB1c2UgdGhhdA0KdGhl
cmUuDQoNCiAgICAgQXJuZA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNp
Zy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
