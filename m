Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UFc5ODzsrmkWKQIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 09 Mar 2026 16:50:20 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 8015223C0E8
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 09 Mar 2026 16:50:20 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 70AE33F809
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  9 Mar 2026 15:50:19 +0000 (UTC)
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
	by lists.linaro.org (Postfix) with ESMTPS id 1DE243F82F
	for <linaro-mm-sig@lists.linaro.org>; Mon,  9 Mar 2026 15:50:17 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=mQd6zbn5;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.160.174 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qt1-f174.google.com with SMTP id d75a77b69052e-509064418a8so24605561cf.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 09 Mar 2026 08:50:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1773071417; x=1773676217; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=O45tfflm9Orr1MA6lJ9Hem754qbRzwLB13TT5ehymNk=;
        b=mQd6zbn5jAZN0HYUgmTK6Lt665eKhpLiOVNfyJei//bqhvxClynUl0l5f4TPbDRVfk
         yRnYJ89JTiLwjL0dv/jvlCd2sc14t5JZhrIW6siGUGQ95lyZyn1yg2jLPKzqBTUcPP9w
         AMZbSeYWHxprF9fMSNchfes3AMR+8z0PvquwyrRGIWCnscsmNJ07MMe5xbA4nVN2co42
         sfiEIqnirG/6B/gbtPXQJn8OYnHssRPFTX6k7LSoxmmNsbZntfaSEH7A7bFqyowovvwD
         abXPbhdFe8+vbElGxmpT10CPPIxpsJEd7cW51uQgqNG06EscDbzyJqi2xutUCWi9bA2S
         DQPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773071417; x=1773676217;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=O45tfflm9Orr1MA6lJ9Hem754qbRzwLB13TT5ehymNk=;
        b=HWodMVHheLqKuSEmECIIRVUWSWY2CgE+oq04znTdRhQMBDsiQTBP4odeKnJ17KtcKG
         VjWjD9wDFcagtfTBsFO62j7G9yc5gwM9b39KykYlyH7alZ1VW1BIDGfh2h3d0wmBiLLx
         wMr04qPrifSoi8Kz1bAj0T8o/jemrWeTAxwjPmq3Aeez/XL8LO7AmcJhwimAH7YVUz8A
         SpCVtf6Fm7/CSIlteUtGLKwCscLP1Qsj0SPqO4qLBjF8yHONyKTqFXWC5x0K7gWShVjp
         co17S+HVW3Y9LX2nG99piziacZkEgEB/PridGaMj6czgucG2jiyA9IDFqzHEkHj7dl09
         jR/Q==
X-Forwarded-Encrypted: i=1; AJvYcCVm2gyIjG+qKXsyBis0pox17gqteGw+NtNi0uM26WVZDHnPljnI9p+mQbEp+7Se1fvY0xnt71oU29OugtJ6@lists.linaro.org
X-Gm-Message-State: AOJu0Yxp0a1RXnLF9VSJcuMfPR0lIcNbztTAjE3B7Brzcv7zbfSNHfcr
	5+oa4jBxwaCYmOsglQANlIl3s2cbIGNhGNF25PTG/9A54UD+XLAmBi/UB4+oJJRXSNY=
X-Gm-Gg: ATEYQzyCpLJzqm84Pas5RvRaTtV/pbP60WW0i+9zchYHbJCTRfh8vt69EGB3Nl8JdMe
	j9PyLyjtJqtppRYQA/t/C/lgAN43WyxP78GXgTsD+t0DpwxM7oxDiP2SPQkeGDGl0+UxqOYrKuj
	1vHWVF9Sl33B0XP2nV+pv8dFPUnDhcvkBo6DPnVbVUqYPe5s5zHBJncGJDF6ayJ6R8u9l4tAqgU
	LM2O45SlHlPAHMJwEJeuZ06md1WAzpP2vq63MMALAQau9YWYZ1fgdVdb5pu6IkT8DXhlTvV0Cep
	SctCb3xS5VGG+6w26r3vBNJUWuct+rGl1Hi9nQP7Fbosf3nNVvM5x2YFyK8aq405SzRX20n6VzF
	lxkEHOp22wrNJrM3vaS6sRzCcCGrOwXalN1pgrYdoZIIGXp3AAiWHbKfQMh4eifQSVUx0UVwlbc
	zTTEk7/AAJtlBACwrNMO41cHsUuQI9Lt6QqRhxLo7yzsZxASk9l6MfW72hFpK5App1P2lyBZRVa
	7Tjl0HW
X-Received: by 2002:a05:622a:30a:b0:503:4251:6597 with SMTP id d75a77b69052e-508f46f8abdmr155244531cf.29.1773071416552;
        Mon, 09 Mar 2026 08:50:16 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-142-162-112-119.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.162.112.119])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-89a57a4ec29sm837376d6.19.2026.03.09.08.50.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 08:50:15 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1vzcs3-0000000GsMM-18A4;
	Mon, 09 Mar 2026 12:50:15 -0300
Date: Mon, 9 Mar 2026 12:50:15 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Peter Gonda <pgonda@google.com>
Message-ID: <20260309155015.GP1687929@ziepe.ca>
References: <20260305123641.164164-1-jiri@resnulli.us>
 <20260305123641.164164-3-jiri@resnulli.us>
 <CAMkAt6o_yZ5T-3TRwymjYQZEq-Q_z=DAA3vc61h81X9sQr_CXA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMkAt6o_yZ5T-3TRwymjYQZEq-Q_z=DAA3vc61h81X9sQr_CXA@mail.gmail.com>
X-Spamd-Bar: ---
Message-ID-Hash: UM2N5AMNCDCGPX4BHLPVMUFF6SHDTFGP
X-Message-ID-Hash: UM2N5AMNCDCGPX4BHLPVMUFF6SHDTFGP
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Jiri Pirko <jiri@resnulli.us>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, leon@kernel.org, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, aneesh.kumar@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH net-next v3 2/2] dma-buf: heaps: system: add system_cc_decrypted heap for explicitly decrypted memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UM2N5AMNCDCGPX4BHLPVMUFF6SHDTFGP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: 8015223C0E8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.59 / 15.00];
	R_DKIM_REJECT(1.00)[ziepe.ca:s=google];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[ziepe.ca];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[ziepe.ca:-];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[jgg@ziepe.ca,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.830];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[resnulli.us:email,lists.linaro.org:rdns,lists.linaro.org:helo,linaro.org:email,ziepe.ca:mid,nvidia.com:email]
X-Rspamd-Action: no action

T24gTW9uLCBNYXIgMDksIDIwMjYgYXQgMDk6Mzk6NDRBTSAtMDYwMCwgUGV0ZXIgR29uZGEgd3Jv
dGU6DQo+IEdyZWF0IGZlYXR1cmUgdG8gaGF2ZSB0aGFua3MgSmlyaSEgQSBjb3VwbGUgbmFpdmUg
cXVlc3Rpb25zLg0KPiANCj4gT24gVGh1LCBNYXIgNSwgMjAyNiBhdCA1OjM44oCvQU0gSmlyaSBQ
aXJrbyA8amlyaUByZXNudWxsaS51cz4gd3JvdGU6DQo+ID4NCj4gPiBGcm9tOiBKaXJpIFBpcmtv
IDxqaXJpQG52aWRpYS5jb20+DQo+ID4NCj4gPiBBZGQgYSBuZXcgInN5c3RlbV9jY19kZWNyeXB0
ZWQiIGRtYS1idWYgaGVhcCB0byBhbGxvdyB1c2Vyc3BhY2UgdG8NCj4gPiBhbGxvY2F0ZSBkZWNy
eXB0ZWQgKHNoYXJlZCkgbWVtb3J5IGZvciBjb25maWRlbnRpYWwgY29tcHV0aW5nIChDb0NvKQ0K
PiA+IFZNcy4NCj4gPg0KPiA+IE9uIENvQ28gVk1zLCBndWVzdCBtZW1vcnkgaXMgZW5jcnlwdGVk
IGJ5IGRlZmF1bHQuIFRoZSBoYXJkd2FyZSB1c2VzIGFuDQo+ID4gZW5jcnlwdGlvbiBiaXQgaW4g
cGFnZSB0YWJsZSBlbnRyaWVzIChDLWJpdCBvbiBBTUQgU0VWLCAic2hhcmVkIiBiaXQgb24NCj4g
PiBJbnRlbCBURFgpIHRvIGNvbnRyb2wgd2hldGhlciBhIGdpdmVuIG1lbW9yeSBhY2Nlc3MgaXMg
ZW5jcnlwdGVkIG9yDQo+ID4gZGVjcnlwdGVkLiBUaGUga2VybmVsJ3MgZGlyZWN0IG1hcCBpcyBz
ZXQgdXAgd2l0aCBlbmNyeXB0aW9uIGVuYWJsZWQsDQo+ID4gc28gcGFnZXMgcmV0dXJuZWQgYnkg
YWxsb2NfcGFnZXMoKSBhcmUgZW5jcnlwdGVkIGluIHRoZSBkaXJlY3QgbWFwDQo+ID4gYnkgZGVm
YXVsdC4gVG8gbWFrZSB0aGlzIG1lbW9yeSB1c2FibGUgZm9yIGRldmljZXMgdGhhdCBkbyBub3Qg
c3VwcG9ydA0KPiA+IERNQSB0byBlbmNyeXB0ZWQgbWVtb3J5IChubyBURElTUCBzdXBwb3J0KSwg
aXQgaGFzIHRvIGJlIGV4cGxpY2l0bHkNCj4gPiBkZWNyeXB0ZWQuIEEgY291cGxlIG9mIHRoaW5n
cyBhcmUgbmVlZGVkIHRvIHByb3Blcmx5IGhhbmRsZQ0KPiA+IGRlY3J5cHRlZCBtZW1vcnkgZm9y
IHRoZSBkbWEtYnVmIHVzZSBjYXNlOg0KPiA+DQo+ID4gLSBzZXRfbWVtb3J5X2RlY3J5cHRlZCgp
IG9uIHRoZSBkaXJlY3QgbWFwIGFmdGVyIGFsbG9jYXRpb246DQo+ID4gICBCZXNpZGVzIGNsZWFy
aW5nIHRoZSBlbmNyeXB0aW9uIGJpdCBpbiB0aGUgZGlyZWN0IG1hcCBQVEVzLCB0aGlzDQo+ID4g
ICBhbHNvIG5vdGlmaWVzIHRoZSBoeXBlcnZpc29yIGFib3V0IHRoZSBwYWdlIHN0YXRlIGNoYW5n
ZS4gT24gZnJlZSwNCj4gPiAgIHRoZSBpbnZlcnNlIHNldF9tZW1vcnlfZW5jcnlwdGVkKCkgbXVz
dCBiZSBjYWxsZWQgYmVmb3JlIHJldHVybmluZw0KPiA+ICAgcGFnZXMgdG8gdGhlIGFsbG9jYXRv
ci4gSWYgcmUtZW5jcnlwdGlvbiBmYWlscywgcGFnZXMNCj4gPiAgIGFyZSBpbnRlbnRpb25hbGx5
IGxlYWtlZCB0byBwcmV2ZW50IGRlY3J5cHRlZCBtZW1vcnkgZnJvbSBiZWluZw0KPiA+ICAgcmV1
c2VkIGFzIHByaXZhdGUuDQo+ID4NCj4gPiAtIHBncHJvdF9kZWNyeXB0ZWQoKSBmb3IgdXNlcnNw
YWNlIGFuZCBrZXJuZWwgdmlydHVhbCBtYXBwaW5nczoNCj4gPiAgIEFueSBuZXcgbWFwcGluZyBv
ZiB0aGUgZGVjcnlwdGVkIHBhZ2VzLCBiZSBpdCB0byB1c2Vyc3BhY2UgdmlhDQo+ID4gICBtbWFw
IG9yIHRvIGtlcm5lbCB2bWFsbG9jIHNwYWNlIHZpYSB2bWFwLCBjcmVhdGVzIFBURXMgaW5kZXBl
bmRlbnQNCj4gPiAgIG9mIHRoZSBkaXJlY3QgbWFwLiBUaGVzZSBtdXN0IGFsc28gaGF2ZSB0aGUg
ZW5jcnlwdGlvbiBiaXQgY2xlYXJlZCwNCj4gPiAgIG90aGVyd2lzZSBhY2Nlc3NlcyB0aHJvdWdo
IHRoZW0gd291bGQgc2VlIGVuY3J5cHRlZCAoZ2FyYmFnZSkgZGF0YS4NCj4gDQo+IFNvIHRoaXMg
b25seSB3b3JrcyBvbiBuZXcgbWFwcGluZ3M/IFdoYXQgaWYgdGhlcmUgYXJlIGV4aXN0aW5nDQo+
IG1hcHBpbmdzIHRvIHRoZSBtZW1vcnkgdGhhdCB3aWxsIGJlIGNvbnZlcnRlZCB0byBzaGFyZWQ/
DQoNClRoZSBzZXRfbWVtb3J5X2RlY3J5cHRlZCgpIGlzIGNhbGxlZCBkdXJpbmcgc3lzdGVtX2hl
YXBfYWxsb2NhdGUoKSwgaXQNCmlzIG5vdCBwb3NzaWJsZSB0byBjaGFuZ2UgZHluYW1pY2FsbHkg
YmV0d2VlbiBlbmNyeXB0ZWQvZGVjcnlwdGVkLg0KDQpPbmNlIHRoZSBoZWFwIGlzIGNyZWF0ZWQg
ZXZlcnkgUFRFIGlzIGFsd2F5cyBjcmVhdGVkIHdpdGggdGhlIGNvcnJlY3QNCnBncHJvdC4NCg0K
SmFzb24NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9y
ZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlz
dHMubGluYXJvLm9yZwo=
