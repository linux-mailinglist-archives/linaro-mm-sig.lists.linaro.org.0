Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3791B918DA6
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Jun 2024 19:56:53 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F25A64413B
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Jun 2024 17:56:51 +0000 (UTC)
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	by lists.linaro.org (Postfix) with ESMTPS id CD45640E26
	for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Jun 2024 17:56:48 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=gIL+I5AX;
	spf=none (lists.linaro.org: domain of daniel@ffwll.ch has no SPF policy when checking 209.85.208.178) smtp.mailfrom=daniel@ffwll.ch;
	dmarc=none
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2ec5f72f073so3811091fa.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Jun 2024 10:56:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1719424607; x=1720029407; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=9ZM4co7+zgQAd1qBwWCVAAvV8TVVgRW2ezKZ6IWngwg=;
        b=gIL+I5AXo+i809lMVUvvzIjz+Q5m/09JkcMjxUAirCOfbm8WlLPemZ5/FdrLsbWMfo
         2OaNBRHtQPlWOc8X60SG1zwpNyPeNIVa6nXCJXVvAF27LEm6rfregZZbGixYCTTdLn/3
         0uHZl+7VBRIFwUwmlGnFbcgF6tOq3PpRw+05w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719424607; x=1720029407;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9ZM4co7+zgQAd1qBwWCVAAvV8TVVgRW2ezKZ6IWngwg=;
        b=deuaEIqTHK4ibR/MkJ23SAYMe3DrDddSoKN89kiR1VMQLFPjDki2ovVqNqkvFW4mcF
         9vET0Md/2K3AfvSYo52NhH5iv57T+xIehshEPByn4Rm9Sy4rKPgCFNTZ4fc01mvRDpP4
         CcwPBLCpZ2giwy9kHJ33I2c/CePyfybVT4Y0PT6/Q0SHJiuWwPQTvVJefugVScp/aBRk
         awnwdF+YA6yE2GFjMC9kvLbyDtqqtywtM5nvY5kRgXcrWXvKxi4HpsN1HXEbmsk9c9Ux
         e5HgN0mMtaLPPkSySVOwF6WyGx7dRAjFU7AhLunlJqiFeZ/7LwmW/di7TdAkoWvhTll1
         eCBg==
X-Forwarded-Encrypted: i=1; AJvYcCUan/aALSjkHoV1keB9xDrZ71lT8bjR3aY1aqtOY7BM/gugtuG642DxR11BOnnvbfNHLAUfFtD0l82D/AaTq/SDUfgmQrYwVmCzf3hCHeg=
X-Gm-Message-State: AOJu0YzdDLCMvi3Y1S6+Je7/6w0HjU3KCLzftq16l+qQiYCUMUJ4H2S1
	xDZ0UG271Ah/lhilFOSk+78wDUn1pbbmOZR5ADfkuDMjDDksOBqgGwi2IH3dt2Q=
X-Google-Smtp-Source: AGHT+IHpT050wLlCJMuYquS/RZZlwvPNrgj194MZbf2u4dKv3AnFWfObCpyKJAMPQnTOJYHQGnJJZA==
X-Received: by 2002:a2e:9903:0:b0:2ec:4176:dcaf with SMTP id 38308e7fff4ca-2ec54ce1c2bmr76783881fa.3.1719424605371;
        Wed, 26 Jun 2024 10:56:45 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-424c84245f0sm34437855e9.33.2024.06.26.10.56.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Jun 2024 10:56:44 -0700 (PDT)
Date: Wed, 26 Jun 2024 19:56:42 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <ZnxWWtdShekGSUif@phenom.ffwll.local>
Mail-Followup-To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	Jason-JH Lin =?utf-8?B?KOael+edv+elpSk=?= <Jason-JH.Lin@mediatek.com>,
	"matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
	Yong Wu =?utf-8?B?KOWQtOWLhyk=?= <Yong.Wu@mediatek.com>,
	"sumit.semwal@linaro.org" <sumit.semwal@linaro.org>,
	"robh+dt@kernel.org" <robh+dt@kernel.org>,
	"akpm@linux-foundation.org" <akpm@linux-foundation.org>,
	"mripard@kernel.org" <mripard@kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
	"jstultz@google.com" <jstultz@google.com>,
	"linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>,
	"linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	Jianjiao Zeng =?utf-8?B?KOabvuWBpeWnoyk=?= <Jianjiao.Zeng@mediatek.com>,
	"willy@infradead.org" <willy@infradead.org>,
	Kuohong Wang =?utf-8?B?KOeOi+Wci+m0uyk=?= <kuohong.wang@mediatek.com>,
	"quic_vjitta@quicinc.com" <quic_vjitta@quicinc.com>,
	"pavel@ucw.cz" <pavel@ucw.cz>,
	"robin.murphy@arm.com" <robin.murphy@arm.com>,
	"contact@emersion.fr" <contact@emersion.fr>,
	"logang@deltatee.com" <logang@deltatee.com>,
	"jkardatzke@google.com" <jkardatzke@google.com>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>,
	"Brian.Starkey@arm.com" <Brian.Starkey@arm.com>,
	"benjamin.gaignard@collabora.com" <benjamin.gaignard@collabora.com>,
	"tjmercier@google.com" <tjmercier@google.com>,
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
	"joakim.bech@linaro.org" <joakim.bech@linaro.org>,
	"ppaalanen@gmail.com" <ppaalanen@gmail.com>,
	"angelogioacchino.delregno@collabora.com" <angelogioacchino.delregno@collabora.com>,
	Youlin Pei =?utf-8?B?KOijtOWPi+aelyk=?= <youlin.pei@mediatek.com>
References: <20240515112308.10171-1-yong.wu@mediatek.com>
 <20240515112308.10171-3-yong.wu@mediatek.com>
 <98721904-003d-4d0d-8cfe-1cecdd59ce01@amd.com>
 <779ce30a657754ff945ebd32b66e1c644635e84d.camel@mediatek.com>
 <cef8f87d-edab-41d8-8b95-f3fc39ad7f74@amd.com>
 <1050c44512374031d1349b5dced228d0efc3fbde.camel@mediatek.com>
 <3104b765-5666-44e4-8788-f1b1b296fe17@amd.com>
 <98c11bad7f40bcc79ed7a2039ddb3a46f99908f5.camel@mediatek.com>
 <75dc1136-7751-4772-9fa7-dd9124684cd2@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <75dc1136-7751-4772-9fa7-dd9124684cd2@amd.com>
X-Operating-System: Linux phenom 6.8.9-amd64 
X-Rspamd-Queue-Id: CD45640E26
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.80 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[mediatek.com,gmail.com,linaro.org,kernel.org,linux-foundation.org,vger.kernel.org,lists.infradead.org,google.com,lists.linaro.org,infradead.org,quicinc.com,ucw.cz,arm.com,emersion.fr,deltatee.com,ffwll.ch,collabora.com,lists.freedesktop.org];
	R_SPF_NA(0.00)[no SPF record];
	ARC_NA(0.00)[];
	DMARC_NA(0.00)[ffwll.ch];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[ffwll.ch:+];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[35];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.178:from];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: HMVZHKIMFPOHZN4NFRF7QVNELHFAKEYW
X-Message-ID-Hash: HMVZHKIMFPOHZN4NFRF7QVNELHFAKEYW
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jason-JH Lin =?utf-8?B?KOael+edv+elpSk=?= <Jason-JH.Lin@mediatek.com>, "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>, Yong Wu =?utf-8?B?KOWQtOWLhyk=?= <Yong.Wu@mediatek.com>, "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>, "robh+dt@kernel.org" <robh+dt@kernel.org>, "akpm@linux-foundation.org" <akpm@linux-foundation.org>, "mripard@kernel.org" <mripard@kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, "jstultz@google.com" <jstultz@google.com>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Jianjiao Zeng =?utf-8?B?KOabvuWBpeWnoyk=?= <Jianjiao.Zeng@mediatek.com>, "willy@infradead.org" <willy@infradead.org>, Kuohong Wang =?utf-8?B?KOeOi+Wci+m0uyk=?= <kuohong.wang@mediatek.com>, "quic_vjitta@quicinc.com" <quic_vjitta@quicinc.com>, "pavel@uc
 w.cz" <pavel@ucw.cz>, "robin.murphy@arm.com" <robin.murphy@arm.com>, "contact@emersion.fr" <contact@emersion.fr>, "logang@deltatee.com" <logang@deltatee.com>, "daniel@ffwll.ch" <daniel@ffwll.ch>, "jkardatzke@google.com" <jkardatzke@google.com>, "conor+dt@kernel.org" <conor+dt@kernel.org>, "Brian.Starkey@arm.com" <Brian.Starkey@arm.com>, "benjamin.gaignard@collabora.com" <benjamin.gaignard@collabora.com>, "tjmercier@google.com" <tjmercier@google.com>, "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "joakim.bech@linaro.org" <joakim.bech@linaro.org>, "ppaalanen@gmail.com" <ppaalanen@gmail.com>, "angelogioacchino.delregno@collabora.com" <angelogioacchino.delregno@collabora.com>, Youlin Pei =?utf-8?B?KOijtOWPi+aelyk=?= <youlin.pei@mediatek.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 2/9] scatterlist: Add a flag for the restricted memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HMVZHKIMFPOHZN4NFRF7QVNELHFAKEYW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBKdW4gMjYsIDIwMjQgYXQgMTI6NDk6MDJQTSArMDIwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToNCj4gQW0gMjYuMDYuMjQgdW0gMTA6MDUgc2NocmllYiBKYXNvbi1KSCBMaW4gKOae
l+edv+elpSk6DQo+ID4gPiA+IEkgdGhpbmsgSSBoYXZlIHRoZSBzYW1lIHByb2JsZW0gYXMgdGhl
IEVDQ19GTEFHIG1lbnRpb24gaW46DQo+ID4gPiA+ID4gPiBodHRwczovL2xvcmUua2VybmVsLm9y
Zy9saW51eC1tZWRpYS8yMDI0MDUxNS1kbWEtYnVmLWVjYy1oZWFwLXYxLTAtNTRjYmJkMDQ5NTEx
QGtlcm5lbC5vcmcvDQo+ID4gPiA+ID4gPiBJIHRoaW5rIGl0IHdvdWxkIGJlIGJldHRlciB0byBo
YXZlIHRoZSB1c2VyIGNvbmZpZ3VyYWJsZSBwcml2YXRlDQo+ID4gPiA+IGluZm9ybWF0aW9uIGlu
IGRtYS1idWYsIHNvIGFsbCB0aGUgZHJpdmVycyB3aG8gaGF2ZSB0aGUgc2FtZQ0KPiA+ID4gPiBy
ZXF1aXJlbWVudCBjYW4gZ2V0IHRoZWlyIHByaXZhdGUgaW5mb3JtYXRpb24gZnJvbSBkbWEtYnVm
IGRpcmVjdGx5DQo+ID4gPiA+IGFuZA0KPiA+ID4gPiBubyBuZWVkIHRvIGNoYW5nZSBvciBhZGQg
dGhlIGludGVyZmFjZS4NCj4gPiA+ID4gPiA+IFdoYXQncyB5b3VyIG9waW5pb24gaW4gdGhpcyBw
b2ludD8NCj4gPiA+ICA+IFdlbGwgb2YgaGFuZCBJIGRvbid0IHNlZSB0aGUgbmVlZCBmb3IgdGhh
dC4NCj4gPiA+ID4gV2hhdCBoYXBwZW5zIGlmIHlvdSBnZXQgYSBub24tc2VjdXJlIGJ1ZmZlciBp
bXBvcnRlZCBpbiB5b3VyIHNlY3VyZQ0KPiA+ID4gZGV2aWNlPw0KPiA+IA0KPiA+IFdlIHVzZSB0
aGUgc2FtZSBtZWRpYXRlay1kcm0gZHJpdmVyIGZvciBzZWN1cmUgYW5kIG5vbi1zZWN1cmUgYnVm
ZmVyLg0KPiA+IElmIG5vbi1zZWN1cmUgYnVmZmVyIGltcG9ydGVkIHRvIG1lZGlhdGVrLWRybSBk
cml2ZXIsIGl0J3MgZ28gdG8gdGhlDQo+ID4gbm9ybWFsIGZsb3cgd2l0aCBub3JtYWwgaGFyZHdh
cmUgc2V0dGluZ3MuDQo+ID4gDQo+ID4gV2UgdXNlIGRpZmZlcmVudCBjb25maWd1cmF0aW9ucyB0
byBtYWtlIGhhcmR3YXJlIGhhdmUgZGlmZmVyZW50DQo+ID4gcGVybWlzc2lvbiB0byBhY2Nlc3Mg
dGhlIGJ1ZmZlciBpdCBzaG91bGQgYWNjZXNzLg0KPiA+IA0KPiA+IFNvIGlmIHdlIGNhbid0IGdl
dCB0aGUgaW5mb3JtYXRpb24gb2YgInRoZSBidWZmZXIgaXMgYWxsb2NhdGVkIGZyb20NCj4gPiBy
ZXN0cmljdGVkX210a19jbWEiIHdoZW4gaW1wb3J0aW5nIHRoZSBidWZmZXIgaW50byB0aGUgZHJp
dmVyLCB3ZSB3b24ndA0KPiA+IGJlIGFibGUgdG8gY29uZmlndXJlIHRoZSBoYXJkd2FyZSBjb3Jy
ZWN0bHkuDQo+IA0KPiBXaHkgY2FuJ3QgeW91IGdldCB0aGlzIGluZm9ybWF0aW9uIGZyb20gdXNl
cnNwYWNlPw0KDQpTYW1lIHJlYXNvbiBhbWQgYW5kIGk5MTUveGUgYWxzbyBwYXNzIHRoaXMgYXJv
dW5kIGludGVybmFsbHkgaW4gdGhlDQprZXJuZWwsIGl0J3MganVzdCB0aGF0IGZvciB0aG9zZSBn
cHVzIHRoZSByZW5kZXIgYW5kIGttcyBub2RlIGFyZSB0aGUgc2FtZQ0KZHJpdmVyIHNvIHRoaXMg
aXMgZWFzeS4NCg0KQnV0IG9uIGFybSB5b3UgaGF2ZSBzcGxpdCBkZXNpZ25zIGV2ZXJ5d2hlcmUg
YW5kIGRtYS1idWYgaW1wb3J0L2V4cG9ydCwgc28NCnNvbWV0aGluZyBlbHNlIGlzIG5lZWRlZC4g
QW5kIG5laXRoZXIgY3VycmVudCBrbXMgdWFwaSBub3INCnByb3RvY29scy9leHRlbnNpb25zIGhh
dmUgcHJvdmlzaW9ucyBmb3IgdGhpcyAoYWZhaWspIGJlY2F1c2UgaXQgd29ya3Mgb24NCnRoZSBi
aWcgZ3B1cywgYW5kIG9uIGFuZHJvaWQgaXQncyBqdXN0IGhhY2tlZCB1cCB3aXRoIGJhY2tjaGFu
bmVscy4NCg0KU28geWVhaCBlc3NlbnRpYWxseSBJIHRoaW5rIHdlIHByb2JhYmx5IG5lZWQgc29t
ZXRoaW5nIGxpa2UgdGhpcywgYXMgbXVjaA0KYXMgaXQgc3Vja3MuIEkgc2VlIGl0IHNvbWV3aGF0
IHNpbWlsYXIgdG8gaGFuZGxpbmcgcGNpcDJwZG1hIGxpbWl0YXRpb25zDQppbiB0aGUga2VybmVs
IHRvby4NCg0KTm90IHN1cmUgd2hlcmUvaG93IGl0IHNob3VsZCBiZSBoYW5kbGVkIHRob3VnaCwg
YW5kIG1heWJlIEkndmUgbWlzc2VkDQpzb21ldGhpbmcgYXJvdW5kIHByb3RvY29scywgaW4gd2hp
Y2ggY2FzZSBJIGd1ZXNzIHdlIHNob3VsZCBhZGQgc29tZQ0Kc2VjdXJlIGJ1ZmZlciBmbGFncyB0
byB0aGUgQURERkIyIGlvY3RsLg0KLVNpbWENCi0tIA0KRGFuaWVsIFZldHRlcg0KU29mdHdhcmUg
RW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uDQpodHRwOi8vYmxvZy5mZndsbC5jaA0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBt
YWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2Ny
aWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3Jn
Cg==
