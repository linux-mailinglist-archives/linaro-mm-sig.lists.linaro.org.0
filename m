Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6ECLNzhWC2qYFgUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 20:11:04 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 68F90571F60
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 20:11:04 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 66B704095B
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 18:11:03 +0000 (UTC)
Received: from mail-dl1-f42.google.com (mail-dl1-f42.google.com [74.125.82.42])
	by lists.linaro.org (Postfix) with ESMTPS id 08D1C3F756
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 18:10:53 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20251104 header.b=svs4dbiQ;
	arc=pass ("google.com:s=arc-20240605:i=1");
	spf=pass (lists.linaro.org: domain of jstultz@google.com designates 74.125.82.42 as permitted sender) smtp.mailfrom=jstultz@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-dl1-f42.google.com with SMTP id a92af1059eb24-132830d8281so10169578c88.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 11:10:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1779127852; cv=none;
        d=google.com; s=arc-20240605;
        b=GY7sw8fgDDqxuUOiXC2Eo4Ozur9hxzlD7g6MWXApopGLfaHY6MA3A6eZxd4thIATyB
         9egJbXgE3mcLIGnYzqLEenK1B//oE6PIiAfSmBqBynTbDzAqUhUP6Jt8Hecp109C4TnG
         9Nj3MwjKROAuCYSuCgaZEdjoSu1GTu+JShwcXOiusXnS2nGqLO8J4r/NKutkf4zMwf4N
         tZEaSLufpygiW1zRo326DBhlVXkldyXTtpE3aLZpQuSCQyUsKc+I8CBSzH63oW0CNgBH
         V/z9qiLzEtiFkIvhH0xXMMS3NudLLbcmtVpNVw84DcB6SmOFWwPPXwbbhTapY5BGO726
         Gnbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=8Zh1uX+6g1iCyNuMr452Zg32sFLSdswHocLXkqvORIw=;
        fh=ydsu/R8pfmkKYe5QxuW26pCS9MZCLwD5O0zxdCVZXMM=;
        b=cBSAwwJ3ukec/O0dIiCIR011hPGhGpEccJl5YPLGCwR9oTVzxpBrIQK3uPubKQZmVc
         bjAID3z6EYAle8KGWdT/DDV9Pqmtd98eBLJMeVe9AB8WH9k3bnf2PnAkzM+cqMcl3ZQx
         vXilmb7zplU1nHQ1myXKJJz1ePydRhJsv+lIgb3O91xBbuFe6O9NiUwThCQmVPK3zwx4
         T021fBZchIOTFpFZH+bQNAsTII8gRiuUzCSxH1dZpkhB0q9pgn2Q13QbDxTsyL9Lnt+1
         O1qXuU08oAdW8PAr4LtLD2kjL34eqFrMknsehNkrqCNIxWZCD5bF8Ky3Oshw2t9Yd48w
         bNrQ==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1779127852; x=1779732652; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8Zh1uX+6g1iCyNuMr452Zg32sFLSdswHocLXkqvORIw=;
        b=svs4dbiQL9h8ZKYiEfkEoNYfM1cgNCqJ0YyMxJMOZqPrOR5BKREhvgiBCBnZ3xofUj
         k62PBCyDbLQU5BCKiiJ87pRN5nB2n2M3YmRnW8i5SWrgLb2Owqf0bFa82EgEQpNVsiWb
         NlaIb2WrI6A/vLmglRvX9EeXZS7PmM41xjs7VMiqa4fv+eZWeJfNgFml4taSitRwxgUA
         yp+m1+30b8R9OCn6h5r4BEsGSf1mDpPtccr/QB8s5cvr0eIsgxCi20t3yYPKsb+64fIa
         16VUl6pcCDSEbudswCklENf4hr/X6OzsS64bWngMzUi8O4tdchwD57IE1huBLodt0pWf
         aEwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779127852; x=1779732652;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=8Zh1uX+6g1iCyNuMr452Zg32sFLSdswHocLXkqvORIw=;
        b=odobXaZh9FJ4+wj3FS2f5j66/p+mb2rtAxPxYRC6NYWCjnd27RVmkxuc5M90STrcwn
         cuc5/IQ22wje/AWu68ifl0V5Xd7tfPzZXAbNzQfONYKVeeFRyPhRfdV94Ls2FENDfJUz
         yzR1r+rmTnuw0sM8FWgcCV3KbPct+noUAwqzhoj+RwPw3goV2CgbmMA+6EgSZGxN3jOH
         IqaFDmvhAO6FmYxW0fuhwWmmMPbjw4FManG/8PXve1y2CEQoOoZ5vBNCM3GNniKQ5gZ8
         +BnCtWeFDhscLxqA02FM/fud5tiOg0e2fKYlwKbNJir9meFZti8kNgJbagK2+YPPlnpU
         gs0g==
X-Forwarded-Encrypted: i=1; AFNElJ+LZ82RLa0AzshCTYKtPjNv4nYrWSYp/P3Xzw1j9eftZhA5JTRjE7jw/SG87h2oN9xX20uGbdGZ1CCBEJPG@lists.linaro.org
X-Gm-Message-State: AOJu0YywN/38n/8VmXS2/1b5niCcc5+Ffz+Rz9WE46TIpYG6mPO1Sjzw
	Xvrggz/laoZlEFTqNARcR7IUsVNk7+ItMGEF+03U4UhIZDLBaaROKo7XwfXt4DrOA9SEGXZlt57
	oWjLJboPKZjzubWe2ATMD2jlPgVYD/uE7dJGkf3c=
X-Gm-Gg: Acq92OE5Khg5OZqc85pN3jqDEu/cZxYM5J9X+RND0B7GPTxpCPubv2YZyGYaOOg/i5t
	NXfVcE5qlqo4SVnkB4UVf2XW8V9CjKHgqfk69k0JBD8wHlZ5/asJPjt/OE12dREpSdZtNG43p30
	DQY+ZtlUN8oxkyRXEHLWSRAUPMSy3BODqBom+bHuEvmMd6uKv8NUwyENK9yZhVzqoWtjWdFozce
	6OEhokTHEAlAYhfCy+1kOsN+Rv8CtNX20vvJ3/2nCcm9XHtmEHFJzGq0Qk8W1bOd5RsoJB1UYDT
	08cvUXQ0GvM1yN/4QmITXdlzFleZUeC69JrpZROj8clp0+c5TWhnFY+uE7ADmhpTPp24GFVzSe6
	SWpPRhZFM150lKfMe8RSDjSEREX9871Tvn6rokbPQPGMMRA==
X-Received: by 2002:a05:701a:c971:b0:12f:c7c3:f5ab with SMTP id
 a92af1059eb24-13504b5c729mr7498926c88.2.1779127851270; Mon, 18 May 2026
 11:10:51 -0700 (PDT)
MIME-Version: 1.0
References: <afXGeq1AvqFY76MY@stanley.mountain> <agsrBPXYXA2vZgj1@willie-the-truck>
In-Reply-To: <agsrBPXYXA2vZgj1@willie-the-truck>
From: John Stultz <jstultz@google.com>
Date: Mon, 18 May 2026 11:10:39 -0700
X-Gm-Features: AVHnY4JEPSawYOP6NYIZt62uD2ja2iT50yoFNPEGPnVnjR3u9oBDEzKTHYXWqs4
Message-ID: <CANDhNCrbbWf9CebcQjwiTWt_LiZ9NLUa5C84Fco1V_HumL_6bQ@mail.gmail.com>
To: Will Deacon <will@kernel.org>, Jiri Pirko <jiri@resnulli.us>
X-Spamd-Bar: -----
Message-ID-Hash: QSTHAPA3X3ZA5OZIQE2W5DVEBCIWW4LB
X-Message-ID-Hash: QSTHAPA3X3ZA5OZIQE2W5DVEBCIWW4LB
X-MailFrom: jstultz@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Dan Carpenter <error27@gmail.com>, tjmercier@google.com, Catalin Marinas <catalin.marinas@arm.com>, linux-mm@kvack.org, Sumit Semwal <sumit.semwal@linaro.org>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [bug report] dma-buf: heaps: Rework heap allocation hooks to return struct dma_buf instead of fd
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QSTHAPA3X3ZA5OZIQE2W5DVEBCIWW4LB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed),reject];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_REJECT(1.00)[google.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,google.com,arm.com,kvack.org,linaro.org,lists.freedesktop.org,lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jstultz@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[google.com:-];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,mail.gmail.com:mid,lists.linaro.org:rdns,lists.linaro.org:helo]
X-Rspamd-Queue-Id: 68F90571F60
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gTW9uLCBNYXkgMTgsIDIwMjYgYXQgODowNuKAr0FNIFdpbGwgRGVhY29uIDx3aWxsQGtlcm5l
bC5vcmc+IHdyb3RlOg0KPg0KPiBPbiBTYXQsIE1heSAwMiwgMjAyNiBhdCAxMjo0MDoxMFBNICsw
MzAwLCBEYW4gQ2FycGVudGVyIHdyb3RlOg0KPiA+IEknbSBub3Qgc3VyZSBleGFjdGx5IHdobyB0
byByZXBvcnQgdGhpcyBidWcgdG9vLiAgUHJvYmFibHkgdGhlIG1tDQo+ID4gZGV2cz8NCj4NCj4g
W0FkZGluZyBKb2huIGFuZCBUSiwgaW4gY2FzZSB0aGV5IGFyZSBpbnRlcmVzdGVkIC8gYWJsZSB0
byBoZWxwXQ0KPg0KPiBXaWxsDQo+DQo+IChvcmlnaW5hbCByZXBvcnQgZm9sbG93cykNCj4NCj4g
PiAgICAgICBkcml2ZXJzL2RtYS1idWYvaGVhcHMvc3lzdGVtX2hlYXAuYzo0OTkgc3lzdGVtX2hl
YXBfYWxsb2NhdGUoKQ0KPiA+ICAgICAgIHdhcm46IHBhc3NpbmcgcG9zaXRpdmUgZXJyb3IgY29k
ZSAnczMybWluLSgtMSksMScgdG8gJ0VSUl9QVFInDQo+ID4NCj4gPiBkcml2ZXJzL2RtYS1idWYv
aGVhcHMvc3lzdGVtX2hlYXAuYw0KPiA+ICAgICA0NTkgICAgICAgICBpZiAoY2Nfc2hhcmVkKSB7
DQo+ID4gICAgIDQ2MCAgICAgICAgICAgICAgICAgZm9yX2VhY2hfc2d0YWJsZV9zZyh0YWJsZSwg
c2csIGkpIHsNCj4gPiAgICAgNDYxICAgICAgICAgICAgICAgICAgICAgICAgIHJldCA9IHN5c3Rl
bV9oZWFwX3NldF9wYWdlX2RlY3J5cHRlZChzZ19wYWdlKHNnKSk7DQo+ID4gICAgIDQ2MiAgICAg
ICAgICAgICAgICAgICAgICAgICBpZiAocmV0KQ0KPiA+ICAgICA0NjMgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBnb3RvIGZyZWVfcGFnZXM7DQo+ID4NCj4gPiBJdCBraW5kIG9mIGxv
b2tzIGxpa2Ugc3lzdGVtX2hlYXBfc2V0X3BhZ2VfZGVjcnlwdGVkKCkgY2FuIHJldHVybiAxLg0K
PiA+DQo+ID4gICAgIDQ2NCAgICAgICAgICAgICAgICAgfQ0KPiA+ICAgICA0NjUgICAgICAgICB9
DQo+ID4gICAgIDQ2Ng0KPiA+ICAgICA0NjcgICAgICAgICAvKiBjcmVhdGUgdGhlIGRtYWJ1ZiAq
Lw0KPiA+ICAgICA0NjggICAgICAgICBleHBfaW5mby5leHBfbmFtZSA9IGRtYV9oZWFwX2dldF9u
YW1lKGhlYXApOw0KPiA+ICAgICA0NjkgICAgICAgICBleHBfaW5mby5vcHMgPSAmc3lzdGVtX2hl
YXBfYnVmX29wczsNCj4gPiAgICAgNDcwICAgICAgICAgZXhwX2luZm8uc2l6ZSA9IGJ1ZmZlci0+
bGVuOw0KPiA+ICAgICA0NzEgICAgICAgICBleHBfaW5mby5mbGFncyA9IGZkX2ZsYWdzOw0KPiA+
ICAgICA0NzIgICAgICAgICBleHBfaW5mby5wcml2ID0gYnVmZmVyOw0KPiA+ICAgICA0NzMgICAg
ICAgICBkbWFidWYgPSBkbWFfYnVmX2V4cG9ydCgmZXhwX2luZm8pOw0KPiA+ICAgICA0NzQgICAg
ICAgICBpZiAoSVNfRVJSKGRtYWJ1ZikpIHsNCj4gPiAgICAgNDc1ICAgICAgICAgICAgICAgICBy
ZXQgPSBQVFJfRVJSKGRtYWJ1Zik7DQo+ID4gICAgIDQ3NiAgICAgICAgICAgICAgICAgZ290byBm
cmVlX3BhZ2VzOw0KPiA+ICAgICA0NzcgICAgICAgICB9DQo+ID4gICAgIDQ3OCAgICAgICAgIHJl
dHVybiBkbWFidWY7DQo+ID4gICAgIDQ3OQ0KPiA+ICAgICA0ODAgZnJlZV9wYWdlczoNCj4gPiAg
ICAgNDgxICAgICAgICAgZm9yX2VhY2hfc2d0YWJsZV9zZyh0YWJsZSwgc2csIGkpIHsNCj4gPiAg
ICAgNDgyICAgICAgICAgICAgICAgICBzdHJ1Y3QgcGFnZSAqcCA9IHNnX3BhZ2Uoc2cpOw0KPiA+
ICAgICA0ODMNCj4gPiAgICAgNDg0ICAgICAgICAgICAgICAgICAvKg0KPiA+ICAgICA0ODUgICAg
ICAgICAgICAgICAgICAqIEludGVudGlvbmFsbHkgbGVhayBwYWdlcyB0aGF0IGNhbm5vdCBiZSBy
ZS1lbmNyeXB0ZWQNCj4gPiAgICAgNDg2ICAgICAgICAgICAgICAgICAgKiB0byBwcmV2ZW50IHNo
YXJlZCBtZW1vcnkgZnJvbSBiZWluZyByZXVzZWQuDQo+ID4gICAgIDQ4NyAgICAgICAgICAgICAg
ICAgICovDQo+ID4gICAgIDQ4OCAgICAgICAgICAgICAgICAgaWYgKGJ1ZmZlci0+Y2Nfc2hhcmVk
ICYmDQo+ID4gICAgIDQ4OSAgICAgICAgICAgICAgICAgICAgIHN5c3RlbV9oZWFwX3NldF9wYWdl
X2VuY3J5cHRlZChwKSkNCj4gPiAgICAgNDkwICAgICAgICAgICAgICAgICAgICAgICAgIGNvbnRp
bnVlOw0KPiA+ICAgICA0OTEgICAgICAgICAgICAgICAgIF9fZnJlZV9wYWdlcyhwLCBjb21wb3Vu
ZF9vcmRlcihwKSk7DQo+ID4gICAgIDQ5MiAgICAgICAgIH0NCj4gPiAgICAgNDkzICAgICAgICAg
c2dfZnJlZV90YWJsZSh0YWJsZSk7DQo+ID4gICAgIDQ5NCBmcmVlX2J1ZmZlcjoNCj4gPiAgICAg
NDk1ICAgICAgICAgbGlzdF9mb3JfZWFjaF9lbnRyeV9zYWZlKHBhZ2UsIHRtcF9wYWdlLCAmcGFn
ZXMsIGxydSkNCj4gPiAgICAgNDk2ICAgICAgICAgICAgICAgICBfX2ZyZWVfcGFnZXMocGFnZSwg
Y29tcG91bmRfb3JkZXIocGFnZSkpOw0KPiA+ICAgICA0OTcgICAgICAgICBrZnJlZShidWZmZXIp
Ow0KPiA+ICAgICA0OTgNCj4gPiAtLT4gNDk5ICAgICAgICAgcmV0dXJuIEVSUl9QVFIocmV0KTsN
Cj4gPiAgICAgNTAwIH0NCj4gPg0KPiA+IFRoZSBwcm9ibGVtIGlzIHRoYXQgYWRkX3RvX3BhZ2Vt
YXAoKSByZXR1cm5zIFBNX0VORF9PRl9CVUZGRVIgKDEpDQo+ID4gd2hpY2ggaXMgdXNlZCBieSBw
YWdlbWFwX3JlYWQoKSBhbmQgbm93aGVyZSBlbHNlLiAgVGhlIGNhbGwgdHJlZQ0KPiA+IGlzOg0K
PiA+DQo+ID4gc3lzdGVtX2hlYXBfYWxsb2NhdGUoKQ0KPiA+IHN5c3RlbV9oZWFwX3NldF9wYWdl
X2RlY3J5cHRlZCgpDQo+ID4gc2V0X21lbW9yeV9kZWNyeXB0ZWQoKQ0KPiA+IHJlYWxtX3NldF9t
ZW1vcnlfZGVjcnlwdGVkKCkNCj4gPiBfX3NldF9tZW1vcnlfZW5jX2RlYygpDQo+ID4gX19jaGFu
Z2VfbWVtb3J5X2NvbW1vbigpDQo+ID4gdXBkYXRlX3JhbmdlX3Byb3QoKQ0KPiA+IHdhbGtfa2Vy
bmVsX3BhZ2VfdGFibGVfcmFuZ2VfbG9ja2xlc3MoKQ0KPiA+IHdhbGtfcGdkX3JhbmdlKCkNCj4g
PiBwYWdlbWFwX3B0ZV9ob2xlKCkNCj4gPiBhZGRfdG9fcGFnZW1hcCgpDQo+ID4NCj4gPiBUaGlz
IGNvZGUgc2VlbXMgc29ydCBvZiBvbGQgYW5kIEkgZ3Vlc3Mgbm8gb25lIGhhcyByZXBvcnRlZCB0
aGUgYnVnDQo+ID4gc28gbWF5YmUgaXQncyBhIGZhbHNlIHBvc2l0aXZlLCBidXQgaXQgZmVlbHMg
bGlrZSBpdCdzIGFza2luZyBmb3INCj4gPiBwcm9ibGVtcyB0byByZXR1cm4gdGhlIFBNX0VORF9P
Rl9CVUZGRVIuICBUaGVyZSBhcmVuJ3QgYW55IGNvbW1lbnRzDQo+ID4gb24gYW55IG9mIHRob3Nl
IGZ1bmN0aW9ucyBhYm92ZSBleHBsYWluaW5nIHdoYXQgcmV0dXJuIHZhbHVlcyBhcmUNCj4gPiBl
eHBlY3RlZC4NCg0KU28sIGRvIHdlIGp1c3QgbmVlZCB0aGUgc3lzdGVtX2hlYXBfc2V0X3BhZ2Vf
ZGVjcnlwdGVkKCkgdG8gaGF2ZSBhIGlmDQoocmV0ID4gMCkgc3BlY2lhbCBjYXNlIG9uIHRoZSBy
ZXR1cm4gY2hlY2sgZnJvbQ0Kc2V0X21lbW9yeV9kZWNyeXB0ZWQoKT8NCg0KT3Igc2hvdWxkIHRo
aXMgZ2V0IGZpeGVkIGF0IGEgZGVlcGVyIGxldmVsPw0KDQp0aGFua3MNCi1qb2huDQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1h
aWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3Jp
YmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
