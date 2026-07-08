Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id tFSiJEVxVmqM5gAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:26:29 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 06EF5757659
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:26:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=gmail.com header.s=20251104 header.b=VoojRxTt;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=gmail.com (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1F927401C9
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 17:26:28 +0000 (UTC)
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com [209.85.167.175])
	by lists.linaro.org (Postfix) with ESMTPS id 894B8404BB
	for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Jul 2026 20:35:52 +0000 (UTC)
Received: by mail-oi1-f175.google.com with SMTP id 5614622812f47-48751bd4abeso91685b6e.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 08 Jul 2026 13:35:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783542952; x=1784147752; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :content-type:mime-version:references:message-id:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=24xTmwwfHf8GGJ8ej4fMcb3MXrY9M9ELYMVJ6Iyw0KE=;
        b=VoojRxTtcsv6HHe4C0Lp0xbROaMJQQy7quQ0mD+rEkcb2W7s6dzp6lMDzEEqKu9bBe
         TNaLDwP6qpIBLM/OR2efqp8wBG/s+83nzWmB7RrjOV6dzWnMuRHNsJww0ESi06kD+gTa
         P6ynAszDH86cacUbFLaTwJj9E6p24NWEWBiNpYMWffKg9CVn5AOf/OeNCiOKm97v/IW3
         k2MrJfmlIjvfYLce/nCQ0LV4ShUFqR6wq5eF8e1maQBh2Vi+HAd6nzJd5V5p31vFj6kN
         Mmh/gAU90KHGr7m7jk5uVsCJm0T1k0fIvTwtK6fcbXYgYSbdWBMTgR+wJ6B5Jgfx7Xur
         BC+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783542952; x=1784147752;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :content-type:mime-version:references:message-id:subject:cc:to:from
         :date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=24xTmwwfHf8GGJ8ej4fMcb3MXrY9M9ELYMVJ6Iyw0KE=;
        b=TozRkKMEo7luHu7Aj3EV+9U3qCosGxnJdl1niLqJXfzrQWz4zHMMl99zZ5EUAurwHI
         pMbE2fGWHGJh9tl85gPQhif+PCSTh4zw7wBN7Y2hlGd5nR9BGPe/ujVwB09MiYy5/TzF
         d45fU+BvCoXwZ2R+vGe9cbIybIXSd7w833DqkniMsC/sxlL76TfIX13dI3p55MOTrSwQ
         ypX1YEcv1/swymALT9Yk9RuAyB0+nhuL/JOvJGvxlWz2OwbDWD7CDQ58Dwq4QhN6erG/
         DsX/i6mvvE50BF8foRyhwpBmzzZA82ySY9e1he567sD3vrB2WCdWSgp97vlIXkK+gsld
         4KWw==
X-Forwarded-Encrypted: i=1; AFNElJ9NPmlovpYuWVQd7jTx553vbVNF+RoMCE3sOY5ooa9xSQrfWaRfSNS7Z819gGoGMRsl83Hy3/J4gi+kIy0I@lists.linaro.org
X-Gm-Message-State: AOJu0YxskCZZhqH6f+9qU4a7kg5etNuzDvJxbOL2F1GpKKQJ8DYMIP6E
	wqpUy12zA/HWTob2u4ScsYCSANfVEaIXiz9P/FvE0/sZoP0ynMaHOoq0
X-Gm-Gg: AfdE7cmaxSoiHpv1YSViu5oRbXXLnVnH1K9/B2kXeXMLIEpgOvGlydORBVW+CqJhxSF
	tv06daJVBIh9gdToQxbO3VTyki2+1KgzQPtWLi/yLtPxAGBaRmyhJ4GngQWZKjWnzgfCD/JnDhC
	gsstCvFP7yE1rmeR+r5ZSGiOZBqEITE4iQ1Aq0QIGGI0SdZunoF021QcFhjwCObgbe89Yv+ctyy
	5VxMLr51iG3oKeDLrU1j8En1j6pw0iCBHCFaeuPzJbbSsI1sZZbnkC59VwohZ/nrxfG+wjaCiUk
	zxXzTs+n0GygwWidebspsQPGLcd+PToMPW4WGSBEuv9+NoZDw8JU8bV0vC5y1bK3SVrqHBFe2sL
	Qz6ZUQPMMeW5wlzrTIKrZV3mgfIJb3SYleNSUmL5PErg1uvlDhAapT8fYVg+oV448SAcQKOnBIT
	hNSZUp0zuB1G7XsZh8eOGUwoe4+L+nEofy
X-Received: by 2002:a05:6808:6d8a:b0:486:4212:d728 with SMTP id 5614622812f47-4a206116affmr3560063b6e.43.1783542951653;
        Wed, 08 Jul 2026 13:35:51 -0700 (PDT)
Received: from devvm29614.prn0.facebook.com ([2a03:2880:ff:a::])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-4a1afde6cffsm2535573b6e.11.2026.07.08.13.35.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jul 2026 13:35:49 -0700 (PDT)
Date: Wed, 8 Jul 2026 13:35:44 -0700
From: Bobby Eshleman <bobbyeshleman@gmail.com>
To: Paolo Abeni <pabeni@redhat.com>
Message-ID: <ak60menMXAbi/SCw@devvm29614.prn0.facebook.com>
References: <20260701-tcpdm-large-niovs-v4-0-ca4654f37570@meta.com>
 <20260701-tcpdm-large-niovs-v4-1-ca4654f37570@meta.com>
 <CAHS8izNdJ1LTOr_pLjXef6Yv-=JOFPe1GcZtcbStD93Tkpy1XQ@mail.gmail.com>
 <15e72c82-ca99-481b-bd53-744fabd503b0@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <15e72c82-ca99-481b-bd53-744fabd503b0@redhat.com>
X-Spamd-Bar: ---
X-MailFrom: bobbyeshleman@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: ZGLNTKPPWO6KJHCTDGJ6PFHCOSJEM5IT
X-Message-ID-Hash: ZGLNTKPPWO6KJHCTDGJ6PFHCOSJEM5IT
X-Mailman-Approved-At: Tue, 14 Jul 2026 17:19:48 +0000
CC: Mina Almasry <almasrymina@google.com>, Donald Hunter <donald.hunter@gmail.com>, Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Simon Horman <horms@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>, Gerd Hoffmann <kraxel@redhat.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Shuah Khan <shuah@kernel.org>, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kselftest@vger.kernel.org, sdf@fomichev.me, razor@blackwall.org, daniel@iogearbox.net, matttbe@kernel.org, skhawaja@google.com, dw@davidwei.uk, Joe Damato <joe@dama.to>, Bobby Eshleman <bobbyeshleman@meta.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH net-next v4 1/3] net: devmem: allow rx-buf-size > PAGE_SIZE per dmabuf binding
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZGLNTKPPWO6KJHCTDGJ6PFHCOSJEM5IT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[140];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[27];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:pabeni@redhat.com,m:almasrymina@google.com,m:donald.hunter@gmail.com,m:kuba@kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:horms@kernel.org,m:andrew+netdev@lunn.ch,m:kraxel@redhat.com,m:vivek.kasireddy@intel.com,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:shuah@kernel.org,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kselftest@vger.kernel.org,m:sdf@fomichev.me,m:razor@blackwall.org,m:daniel@iogearbox.net,m:matttbe@kernel.org,m:skhawaja@google.com,m:dw@davidwei.uk,m:joe@dama.to,m:bobbyeshleman@meta.com,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[bobbyeshleman@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bobbyeshleman@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[google.com,gmail.com,kernel.org,davemloft.net,lunn.ch,redhat.com,intel.com,linaro.org,amd.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,fomichev.me,blackwall.org,iogearbox.net,davidwei.uk,dama.to,meta.com];
	TAGGED_RCPT(0.00)[linaro-mm-sig,netdev];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DKIM_TRACE(0.00)[gmail.com:-];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,devvm29614.prn0.facebook.com:mid,lists.linaro.org:from_smtp,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 06EF5757659

T24gV2VkLCBKdWwgMDgsIDIwMjYgYXQgMTI6NTA6MDdQTSArMDIwMCwgUGFvbG8gQWJlbmkgd3Jv
dGU6DQo+IE9uIDcvNy8yNiAxMDozNiBQTSwgTWluYSBBbG1hc3J5IHdyb3RlOg0KPiA+IE9uIFdl
ZCwgSnVsIDEsIDIwMjYgYXQgMTI6MjLigK9QTSBCb2JieSBFc2hsZW1hbiA8Ym9iYnllc2hsZW1h
bkBnbWFpbC5jb20+IHdyb3RlOg0KPiA+Pg0KPiA+PiBGcm9tOiBCb2JieSBFc2hsZW1hbiA8Ym9i
Ynllc2hsZW1hbkBtZXRhLmNvbT4NCj4gPj4NCj4gPj4gRXZlcnkgZGV2bWVtIGRtYWJ1ZiBiaW5k
aW5nIHRvZGF5IGhhbmRzIHRoZSBwYWdlX3Bvb2wgUEFHRV9TSVpFIG5pb3ZzLg0KPiA+PiBUaGlz
IGNhcHMgYSBzaW5nbGUgUlggZGVzY3JpcHRvciBhdCBQQUdFX1NJWkUsIGJ1cm5pbmcgQ1BVIG9u
IGJ1ZmZlcg0KPiA+PiBjaHVybiBmb3IgbGFyZ2UgZmxvd3MuDQo+ID4+DQo+ID4+IEFkZCBhIGJp
bmQtdGltZSBuZXRsaW5rIGF0dHJpYnV0ZSwgTkVUREVWX0FfRE1BQlVGX1JYX0JVRl9TSVpFLCB0
aGF0DQo+ID4+IGxldHMgdXNlcnNwYWNlIHJlcXVlc3QgYSBsYXJnZXIgbmlvdiBzaXplLiBUaGUg
dmFsdWUgbXVzdCBiZSBhIHBvd2VyIG9mDQo+ID4+IHR3byA+PSBQQUdFX1NJWkUuDQo+ID4+DQo+
ID4+IE1lYXN1cmVtZW50cw0KPiA+PiAtLS0tLS0tLS0tLS0NCj4gDQo+IENoZWNrcGF0Y2ggY29t
cGxhaW5zIGFib3V0IHRoaXMgc2VwYXJhdG9yIHVzYWdlOg0KPiANCj4gRVJST1I6IEludmFsaWQg
Y29tbWl0IHNlcGFyYXRvciAtIHNvbWUgdG9vbHMgbWF5IGhhdmUgcHJvYmxlbXMgYXBwbHlpbmcg
dGhpcw0KPiAjMTU6DQo+IC0tLS0tLS0tLS0tLQ0KPiANCj4gUGxlYXNlIHJlcGxhY2Ugb3IgcmVt
b3ZlIGl0IGluIHRoZSBuZXh0IHJldmlzaW9uDQo+IA0KPiA+PiBAQCAtOTAsMTYgKzkwLDE3IEBA
IG5ldF9kZXZtZW1fYWxsb2NfZG1hYnVmKHN0cnVjdCBuZXRfZGV2bWVtX2RtYWJ1Zl9iaW5kaW5n
ICpiaW5kaW5nKQ0KPiA+PiAgICAgICAgIHN0cnVjdCBkbWFidWZfZ2VucG9vbF9jaHVua19vd25l
ciAqb3duZXI7DQo+ID4+ICAgICAgICAgdW5zaWduZWQgbG9uZyBkbWFfYWRkcjsNCj4gPj4gICAg
ICAgICBzdHJ1Y3QgbmV0X2lvdiAqbmlvdjsNCj4gPj4gLSAgICAgICBzc2l6ZV90IG9mZnNldDsN
Cj4gPj4gLSAgICAgICBzc2l6ZV90IGluZGV4Ow0KPiA+PiArICAgICAgIHNpemVfdCBvZmZzZXQ7
DQo+ID4+ICsgICAgICAgc2l6ZV90IGluZGV4Ow0KPiA+Pg0KPiA+IA0KPiA+IG5pdDogSSB3b3Vs
ZCBrZWVwIHRoaXMgc2lnbmVkLiBTb21lIG9mIHRoZSBtb3N0IGZydXN0cmF0aW5nIGlzc3VlcyBJ
DQo+ID4gcmFuIGludG8gaXMgc29tZSBvZiB0aGUgdW5kZXJmbG93aW5nIGFuZCB0aGVuIHBhc3Np
bmcgYSA+IGNoZWNrIG9yDQo+ID4gc29tZXRoaW5nLiBBbHRob3VnaCBpZiB0aGUgTExNIGlzIG5v
dCBjb21wbGFpbmluZyBhYm91dCB0aGlzDQo+ID4gcGFydGljdWxhciBjYXNlLCB0aGVyZSBpcyBw
cm9iYWJseSBubyBpc3N1ZSB3aXRoIGl0LiBJIGFsc28gbm90aWNlIGENCj4gPiBsb3Qgb2YgZXhp
c3RpbmcgY29kZSB0aGF0IGRlYWxzIHdpdGggaW5kZXhlcyBhbmQgb2Zmc2V0cyBnb2VzIGZvcg0K
PiA+IHNpZ25lZC4NCj4gDQo+IEF0IHZlcnkgbGVhc3QgdGhlIGFib3ZlIGNoYW5nZSBzaG91bGQg
Z28gaW4gYSBzZXBhcmF0ZSBwYXRjaCwgYXMgaXMNCj4gcXVpdGUgdW5yZWxhdGVkIGZyb20gdGhl
IHJlc3QuDQo+IA0KPiAvUA0KPiANCg0KU291bmRzIGdvb2QsIEknbGwgZHJvcCB0aGUgdHlwZSBj
aGFuZ2UuDQoNClRoYW5rcywNCkJvYmJ5DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0t
c2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5h
cm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
