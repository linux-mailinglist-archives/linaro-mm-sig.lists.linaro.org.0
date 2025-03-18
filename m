Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 77CBFA67C23
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Mar 2025 19:38:24 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 39AF743BD6
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Mar 2025 18:38:23 +0000 (UTC)
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
	by lists.linaro.org (Postfix) with ESMTPS id DEDFC43BD6
	for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Mar 2025 18:38:04 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ndufresne-ca.20230601.gappssmtp.com header.s=20230601 header.b=CurFsDxo;
	spf=none (lists.linaro.org: domain of nicolas@ndufresne.ca has no SPF policy when checking 209.85.219.46) smtp.mailfrom=nicolas@ndufresne.ca;
	dmarc=none
Received: by mail-qv1-f46.google.com with SMTP id 6a1803df08f44-6eb1e09f7e4so11542726d6.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Mar 2025 11:38:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1742323084; x=1742927884; darn=lists.linaro.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=svw9EZxkPMxgX/rKP7N3fQy0RVcn8m9OHxj5oL/d/5g=;
        b=CurFsDxokhOQJTygEIkgSLmnvlSoIq5Bbs59oRjxUFcaddBQuoW1ROfNQ6We3YUA88
         lmM/nJW6e9+2fn0CSkjpw4tE8r5B1oge0+hrR4YvA3XafjhIFgQClT6rw3jIEO3+DQgR
         iFDSPfKqjC3ra13TRI8LUqNq47enN+ZfdkEIA5ZNQX17rgGgxJIAMlVY8PPdMze++5na
         bwoGDdtt1wK0PdlPSWBCSCRBebs4k/2OsEKqTIUMlyAp9sIBhJh3NvJESFf4wVn5JSEX
         zy7rQUjE+EiYfxpG6Wu/vZqnPsBnEew+8FYbGN3LcKBCi5OxMBjr/Du7FlgvOCo9EM9I
         wMPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742323084; x=1742927884;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=svw9EZxkPMxgX/rKP7N3fQy0RVcn8m9OHxj5oL/d/5g=;
        b=uTvO5lTDe56ax1nOp512OSJCqt9VBLz4mQEdhLMD853GkYyiV2dyGtwrs9570RClW7
         L9ItEwtnq35PZfLreWWGaJDBMlXkU07fz8mY0nY0GA/s5yIbg8acPY6MWu0wy1kcF9AU
         CEBvdoDTqU0u0C8lwtGXVvir6m1/O70T3YZXtezBQ1sOXdA2dZ2e+yJEGaZ0DDNNaJGW
         a9k7vNOOyeCl1EU3P15J1CHlIn5U998X4eWtHpKujko8c91aWMC5HiokPMAcZxjceaWX
         5jc28+0yR3x4IUo3dkVheuXZ9niYm6G+DsmDZBJHusJiuRMD2uhsyNOSgaPi5l+HTSCt
         Znag==
X-Forwarded-Encrypted: i=1; AJvYcCUreZLIKqO4kZPwba+5+Us7Dq8nWrvYUYm8iTfz5QmSsykhFHJa2vzRpPr6do5ovxcAKlcRCm6nPZyOXmwJ@lists.linaro.org
X-Gm-Message-State: AOJu0YwznNkHnAHEU1Yap4zN0OwRdIVCxl/W2EATp3dGzaHgjaz2v2CP
	WQNTSt63OGh6BxPu9NCgce8Vr21qyv8m84LOeqFLPdoOMoFsR1b0b5OCeEq9Ito=
X-Gm-Gg: ASbGncuwyShJqpyqEP714mAye3wGv8o32AUnqszQBp110asNJoFNncL3w8WHxt60zcs
	r/DLwMk7f3eYTUHKUMbmOAJRjPaYmIzY0umsdvLveLzKpOafEm7gS58et9W6L8Z70BfXQW6chFB
	ctV2A7eh7gu5LBDlF4Ij3gum1uRuKbYyf248ukEntaXRVccSLX06iovapr4ro1+pD74MTAVjTIY
	u58CN38RFQL5sQvCWn9U9lOgFEBTkddbqrodWdPEIL55IElH3BnaF72sWDTCE/nShcipvP6viPA
	+TZfMJihw9/NR95/3tuECU55VkqCtmlkgRIfXuguUvr1zqlScfxFDiXwIzov
X-Google-Smtp-Source: AGHT+IGEXSuirg5IH6jDcnHDxPpOBHvWvzrRtyQxaoORNWdCD434tke/m0zFLpwwUQj2zTPAHnCd5g==
X-Received: by 2002:ad4:5c65:0:b0:6e8:86d3:be73 with SMTP id 6a1803df08f44-6eaeaaeca0amr319184116d6.37.1742323084401;
        Tue, 18 Mar 2025 11:38:04 -0700 (PDT)
Received: from ?IPv6:2606:6d00:11:e976::5ac? ([2606:6d00:11:e976::5ac])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6eade334d02sm70379456d6.80.2025.03.18.11.38.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Mar 2025 11:38:03 -0700 (PDT)
Message-ID: <32c29526416c07c37819aedabcbf1e562ee98bf2.camel@ndufresne.ca>
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Sumit Garg <sumit.garg@kernel.org>, Jens Wiklander
	 <jens.wiklander@linaro.org>
Date: Tue, 18 Mar 2025 14:38:02 -0400
In-Reply-To: <Z8avsigZJ4vqmiA4@sumit-X1>
References: 
	<CAHUa44G9hw-z6wzxg=HkVAxPKEW1yES5JTEqRWMvJUJAtcUDkQ@mail.gmail.com>
	 <CAPj87rPHnME5Osgnf5-FSAu22mDpLj=dzvhi_NqEcOwr1ThgGw@mail.gmail.com>
	 <CAHUa44Gs0D1fBD0=+EDgcQUMeDv4knci9trUkYEc1J98qFV7HQ@mail.gmail.com>
	 <CAFA6WYOuTwRPEh3L7+hMyARB_E73xmp+OwhKyS-r4+ryS7=9sw@mail.gmail.com>
	 <20250214164856.0d2ead8a@collabora.com>
	 <CAFA6WYPc6EHQwcPuMZRm4C1P6SoDrCzEPUmju_meupB6NXQ1sg@mail.gmail.com>
	 <CAPj87rN-OYTzh5=Gdv619UQD5=x=U6Yt=uV4N1kCs4Zao4RVAg@mail.gmail.com>
	 <CAFA6WYMLLLSuz3y5J+DuRFAGrmwpZoWax5sasfAUhXoQXmrNNA@mail.gmail.com>
	 <CAPj87rN7J6u9NsviAdw8=OenEYc8t719Lds6u6-BhFKrtkLZ-A@mail.gmail.com>
	 <CAHUa44FkG1NAWpoW8UVBywv44XW_mjAJa32PcC9mcmiOLdiRqw@mail.gmail.com>
	 <Z8avsigZJ4vqmiA4@sumit-X1>
User-Agent: Evolution 3.54.3 (3.54.3-1.fc41) 
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: DEDFC43BD6
X-Spamd-Bar: /
X-Spamd-Result: default: False [-1.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	RBL_SENDERSCORE_REPUT_7(0.50)[209.85.219.46:from];
	BAD_REP_POLICIES(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	R_DKIM_ALLOW(0.00)[ndufresne-ca.20230601.gappssmtp.com:s=20230601];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[fooishbar.org,collabora.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.trustedfirmware.org,lists.infradead.org,nxp.com,gmail.com,mediatek.com,linaro.org,arm.com,google.com,amd.com,qti.qualcomm.com];
	DMARC_NA(0.00)[ndufresne.ca];
	ARC_NA(0.00)[];
	URIBL_BLOCKED(0.00)[linaro.org:email,vulkan.org:url];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[ndufresne-ca.20230601.gappssmtp.com:+];
	RCPT_COUNT_TWELVE(0.00)[23];
	R_SPF_NA(0.00)[no SPF record];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.46:from];
	TAGGED_RCPT(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: RJ6QBDPJICX2W233KDYUTNQOHSRRTV44
X-Message-ID-Hash: RJ6QBDPJICX2W233KDYUTNQOHSRRTV44
X-MailFrom: nicolas@ndufresne.ca
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Daniel Stone <daniel@fooishbar.org>, Boris Brezillon <boris.brezillon@collabora.com>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Linux Media Mailing List <linux-media@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, op-tee@lists.trustedfirmware.org, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Florent Tomasin <florent.tomasin@arm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 0/6] TEE subsystem for restricted dma-buf allocations
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RJ6QBDPJICX2W233KDYUTNQOHSRRTV44/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TGUgbWFyZGkgMDQgbWFycyAyMDI1IMOgIDEzOjE1ICswNTMwLCBTdW1pdCBHYXJnIGEgw6ljcml0
wqA6DQo+IE9uIFR1ZSwgTWFyIDA0LCAyMDI1IGF0IDA4OjE3OjIzQU0gKzAxMDAsIEplbnMgV2lr
bGFuZGVyIHdyb3RlOg0KPiA+IEhpIERhbmllbCwNCj4gPiANCj4gPiBPbiBGcmksIEZlYiAyMSwg
MjAyNSBhdCAzOjEy4oCvUE0gRGFuaWVsIFN0b25lIDxkYW5pZWxAZm9vaXNoYmFyLm9yZz4gd3Jv
dGU6DQo+ID4gPiANCj4gPiA+IEhpIFN1bWl0LA0KPiA+ID4gDQo+ID4gPiBPbiBGcmksIDIxIEZl
YiAyMDI1IGF0IDExOjI0LCBTdW1pdCBHYXJnIDxzdW1pdC5nYXJnQGxpbmFyby5vcmc+IHdyb3Rl
Og0KPiA+ID4gPiBPbiBUdWUsIDE4IEZlYiAyMDI1IGF0IDIxOjUyLCBEYW5pZWwgU3RvbmUgPGRh
bmllbEBmb29pc2hiYXIub3JnPiB3cm90ZToNCj4gPiA+ID4gPiBkbWEtaGVhcHMgd2FzIGNyZWF0
ZWQgdG8gc29sdmUgdGhlIHByb2JsZW0gb2YgaGF2aW5nIHRvbyBtYW55DQo+ID4gPiA+ID4gJ2Fs
bG9jYXRlICRuIGJ5dGVzIGZyb20gJHNwZWNpYWxwbGFjZScgdUFQSXMuIFRoZSBwcm9saWZlcmF0
aW9uIHdhcw0KPiA+ID4gPiA+IHBhaW5mdWwgYW5kIG1ha2luZyBpdCBkaWZmaWN1bHQgZm9yIHVz
ZXJzcGFjZSB0byBkbyB3aGF0IGl0IG5lZWRlZCB0bw0KPiA+ID4gPiA+IGRvLiBVc2Vyc3BhY2Ug
ZG9lc24ndCBfeWV0XyBtYWtlIGZ1bGwgdXNlIG9mIGl0LCBidXQgdGhlIHNvbHV0aW9uIGlzDQo+
ID4gPiA+ID4gdG8gbWFrZSB1c2Vyc3BhY2UgbWFrZSBmdWxsIHVzZSBvZiBpdCwgbm90IHRvIGdv
IGNyZWF0ZSBlbnRpcmVseQ0KPiA+ID4gPiA+IHNlcGFyYXRlIGFsbG9jYXRpb24gcGF0aHMgZm9y
IHVuY2xlYXIgcmVhc29ucy4NCj4gPiA+ID4gPiANCj4gPiA+ID4gPiBCZXNpZGVzLCBJJ20gd3Jp
dGluZyB0aGlzIGZyb20gYSBwbGF0Zm9ybSB0aGF0IGltcGxlbWVudHMgU1ZQIG5vdCB2aWENCj4g
PiA+ID4gPiBURUUuIEkndmUgd29ya2VkIG9uIHBsYXRmb3JtcyB3aGljaCBpbXBsZW1lbnQgU1ZQ
IHdpdGhvdXQgYW55IFRFRSwNCj4gPiA+ID4gPiB3aGVyZSB0aGUgVEVFIGltcGxlbWVudGF0aW9u
IHdvdWxkIGJlIGF0IGJlc3QgYSBuby1vcCBzdHViLCBhbmQgYXQNCj4gPiA+ID4gPiB3b3JzdCBm
bGF0LW91dCBpbXBvc3NpYmxlLg0KPiA+ID4gPiANCj4gPiA+ID4gQ2FuIHlvdSBlbGFib3JhdGUg
dGhlIG5vbi1URUUgdXNlLWNhc2UgZm9yIFNlY3VyZSBWaWRlbyBQYXRoIChTVlApIGENCj4gPiA+
ID4gYml0IG1vcmU/IEFzIHRvIGhvdyB0aGUgcHJvdGVjdGVkL2VuY3J5cHRlZCBtZWRpYSBjb250
ZW50IHBpcGVsaW5lDQo+ID4gPiA+IHdvcmtzPyBXaGljaCBhcmNoaXRlY3R1cmUgc3VwcG9ydCBk
b2VzIHlvdXIgdXNlLWNhc2UgcmVxdWlyZT8gSXMgdGhlcmUNCj4gPiA+ID4gYW55IGhpZ2hlciBw
cml2aWxlZ2VkIGxldmVsIGZpcm13YXJlIGludGVyYWN0aW9uIHJlcXVpcmVkIHRvIHBlcmZvcm0N
Cj4gPiA+ID4gbWVkaWEgY29udGVudCBkZWNyeXB0aW9uIGludG8gcmVzdHJpY3RlZCBtZW1vcnk/
IERvIHlvdSBwbGFuIHRvDQo+ID4gPiA+IHVwc3RyZWFtIGNvcnJlc3BvbmRpbmcgc3VwcG9ydCBp
biBuZWFyIGZ1dHVyZT8NCj4gPiA+IA0KPiA+ID4gWW91IGNhbiBzZWUgdGhlIE1USyBTVlAgcGF0
Y2hlcyBvbiBsaXN0IHdoaWNoIHVzZSB0aGUgTVRLIFNNQyB0byBtZWRpYXRlIGl0Lg0KPiA+ID4g
DQo+ID4gPiBUaGVyZSBhcmUgVEkgSmFjaW50byBwbGF0Zm9ybXMgd2hpY2ggaW1wbGVtZW50IGEg
J3NlY3VyZScgYXJlYQ0KPiA+ID4gY29uZmlndXJlZCBzdGF0aWNhbGx5IGJ5IChJSVJDKSBCTDIs
IHdpdGggc3RhdGljIHBlcm1pc3Npb25zIGRlZmluZWQNCj4gPiA+IGZvciBlYWNoIEFYSSBlbmRw
b2ludCwgZS5nLiBDUFUgd3JpdGUgKyBjb2RlYyBSVyArIGRpc3BjIHJlYWQuIEkndmUNCj4gPiA+
IGhlYXJkIG9mIGFub3RoZXIgU29DIHZlbmRvciBkb2luZyB0aGUgc2FtZSwgYnV0IEkgZG9uJ3Qg
dGhpbmsgSSBjYW4NCj4gPiA+IHNoYXJlIHRob3NlIGRldGFpbHMuIFRoZXJlIGlzIG5vIFRFRSBp
bnRlcmFjdGlvbi4NCj4gPiA+IA0KPiA+ID4gSSdtIHdyaXRpbmcgdGhpcyBtZXNzYWdlIGZyb20g
YW4gQU1EIGxhcHRvcCB3aGljaCBpbXBsZW1lbnRzDQo+ID4gPiByZXN0cmljdGVkIGNvbnRlbnQg
cGF0aHMgb3V0c2lkZSBvZiBURUUuIEkgZG9uJ3QgaGF2ZSB0aGUgZnVsbCBwaWN0dXJlDQo+ID4g
PiBvZiBob3cgU1ZQIGlzIGltcGxlbWVudGVkIG9uIEFNRCBzeXN0ZW1zLCBidXQgSSBkbyBrbm93
IHRoYXQgSSBkb24ndA0KPiA+ID4gaGF2ZSBhbnkgVEVFIGRldmljZXMgZXhwb3NlZC4NCj4gPiA+
IA0KPiA+ID4gPiBMZXQgbWUgdHJ5IHRvIGVsYWJvcmF0ZSBvbiB0aGUgU2VjdXJlIFZpZGVvIFBh
dGggKFNWUCkgZmxvdyByZXF1aXJpbmcNCj4gPiA+ID4gYSBURUUgaW1wbGVtZW50YXRpb24gKGlu
IGdlbmVyYWwgdGVybXMgYSBoaWdoZXIgcHJpdmlsZWdlZCBmaXJtd2FyZQ0KPiA+ID4gPiBtYW5h
Z2luZyB0aGUgcGlwZWxpbmUgYXMgdGhlIGtlcm5lbC91c2VyLXNwYWNlIGhhcyBubyBhY2Nlc3MN
Cj4gPiA+ID4gcGVybWlzc2lvbnMgdG8gdGhlIHBsYWluIHRleHQgbWVkaWEgY29udGVudCk6DQo+
ID4gPiA+IA0KPiA+ID4gPiAtIFsuLi5dDQo+ID4gPiANCj4gPiA+IFllYWgsIEkgdG90YWxseSB1
bmRlcnN0YW5kIHRoZSBURUUgdXNlY2FzZS4gSSB0aGluayB0aGF0IFRFRSBpcyBhIGdvb2QNCj4g
PiA+IGRlc2lnbiB0byBpbXBsZW1lbnQgdGhpcy4gSSB0aGluayB0aGF0IFRFRSBzaG91bGQgYmUg
dXNlZCBmb3IgU1ZQDQo+ID4gPiB3aGVyZSBpdCBtYWtlcyBzZW5zZS4NCj4gPiA+IA0KPiA+ID4g
UGxlYXNlIHVuZGVyc3RhbmQgdGhhdCBJIGFtIF9ub3RfIGFyZ3VpbmcgdGhhdCBuby1vbmUgc2hv
dWxkIHVzZSBURUUgZm9yIFNWUCENCj4gPiA+IA0KPiA+ID4gPiA+IFNvLCBhZ2FpbiwgbGV0J3MN
Cj4gPiA+ID4gPiBwbGVhc2UgdHVybiB0aGlzIGFyb3VuZDogX3doeV8gVEVFPyBXaG8gYmVuZWZp
dHMgZnJvbSBleHBvc2luZyB0aGlzIGFzDQo+ID4gPiA+ID4gY29tcGxldGVseSBzZXBhcmF0ZSB0
byB0aGUgbW9yZSBnZW5lcmljIHVBUEkgdGhhdCB3ZSBzcGVjaWZpY2FsbHkNCj4gPiA+ID4gPiBk
ZXNpZ25lZCB0byBoYW5kbGUgdGhpbmdzIGxpa2UgdGhpcz8NCj4gPiA+ID4gDQo+ID4gPiA+IFRo
ZSBicmlkZ2luZyBiZXR3ZWVuIERNQSBoZWFwcyBhbmQgVEVFIHdvdWxkIHN0aWxsIHJlcXVpcmUg
dXNlci1zcGFjZQ0KPiA+ID4gPiB0byBwZXJmb3JtIGFuIElPQ1RMIGludG8gVEVFIHRvIHJlZ2lz
dGVyIHRoZSBETUEtYnVmcyBhcyB5b3UgY2FuIHNlZQ0KPiA+ID4gPiBoZXJlIFsxXS4gVGhlbiBp
dCB3aWxsIHJhdGhlciBiZSB0d28gaGFuZGxlcyBmb3IgdXNlci1zcGFjZSB0byBtYW5hZ2UuDQo+
ID4gPiANCj4gPiA+IFllcywgdGhlIGRlY29kZXIgd291bGQgbmVlZCB0byBkbyB0aGlzLiBUaGF0
J3MgY29tbW9uIHRob3VnaDogaWYgeW91DQo+ID4gPiB3YW50IHRvIHNoYXJlIGEgYnVmZmVyIGJl
dHdlZW4gVjRMMiBhbmQgRFJNLCB5b3UgaGF2ZSB0aHJlZSBoYW5kbGVzOg0KPiA+ID4gdGhlIFY0
TDIgYnVmZmVyIGhhbmRsZSwgdGhlIERSTSBHRU0gaGFuZGxlLCBhbmQgdGhlIGRtYWJ1ZiB5b3Ug
dXNlIHRvDQo+ID4gPiBicmlkZ2UgdGhlIHR3by4NCj4gPiA+IA0KPiA+ID4gPiBTaW1pbGFybHkg
ZHVyaW5nIHJlc3RyaWN0ZWQgbWVtb3J5IGFsbG9jYXRpb24vZnJlZSB3ZSBuZWVkIGFub3RoZXIN
Cj4gPiA+ID4gZ2x1ZSBsYXllciB1bmRlciBETUEgaGVhcHMgdG8gVEVFIHN1YnN5c3RlbS4NCj4g
PiA+IA0KPiA+ID4gWWVwLg0KPiA+ID4gDQo+ID4gPiA+IFRoZSByZWFzb24gaXMgc2ltcGx5IHdo
aWNoIGhhcyBiZWVuIGl0ZXJhdGVkIG92ZXIgbWFueSB0aW1lcyBpbiB0aGUNCj4gPiA+ID4gcGFz
dCB0aHJlYWRzIHRoYXQ6DQo+ID4gPiA+IA0KPiA+ID4gPiDCoMKgwqAgIklmIHVzZXItc3BhY2Ug
aGFzIHRvIGludGVyYWN0IHdpdGggYSBURUUgZGV2aWNlIGZvciBTVlAgdXNlLWNhc2UNCj4gPiA+
ID4gdGhlbiB3aHkgaXQncyBub3QgYmV0dGVyIHRvIGFzayBURUUgdG8gYWxsb2NhdGUgcmVzdHJp
Y3RlZCBETUEtYnVmcw0KPiA+ID4gPiB0b28iDQo+ID4gPiANCj4gPiA+IFRoZSBmaXJzdCB3b3Jk
IGluIHlvdXIgcHJvcG9zaXRpb24gaXMgbG9hZC1iZWFyaW5nLg0KPiA+ID4gDQo+ID4gPiBCdWls
ZCBvdXQgdGhlIHVzZWNhc2UgYSBsaXR0bGUgbW9yZSBoZXJlLiBZb3UgaGF2ZSBhIERSTWVkIHZp
ZGVvDQo+ID4gPiBzdHJlYW0gY29taW5nIGluLCB3aGljaCB5b3UgbmVlZCB0byBkZWNvZGUgKGlu
dm9sdmluZyBURUUgZm9yIHRoaXMNCj4gPiA+IHVzZWNhc2UpLiBZb3UgZ2V0IGEgZG1hYnVmIGhh
bmRsZSB0byB0aGUgZGVjb2RlZCBmcmFtZS4gWW91IG5lZWQgdG8NCj4gPiA+IHBhc3MgdGhlIGRt
YWJ1ZiBhY3Jvc3MgdG8gdGhlIFdheWxhbmQgY29tcG9zaXRvci4gVGhlIGNvbXBvc2l0b3IgbmVl
ZHMNCj4gPiA+IHRvIHBhc3MgaXQgdG8gRUdML1Z1bGthbiB0byBpbXBvcnQgYW5kIGRvIGNvbXBv
c2l0aW9uLCB3aGljaCBpbiB0dXJuDQo+ID4gPiBwYXNzZXMgaXQgdG8gdGhlIEdQVSBEUk0gZHJp
dmVyLiBUaGUgb3V0cHV0IG9mIHRoZSBjb21wb3NpdGlvbiBpcyBpbg0KPiA+ID4gdHVybiBzaGFy
ZWQgYmV0d2VlbiB0aGUgR1BVIERSTSBkcml2ZXIgYW5kIHRoZSBzZXBhcmF0ZSBLTVMgRFJNDQo+
ID4gPiBkcml2ZXIsIHdpdGggdGhlIGludm9sdmVtZW50IG9mIEdCTS4NCj4gPiA+IA0KPiA+ID4g
Rm9yIHRoZSBwbGF0Zm9ybXMgSSdtIGludGVyZXN0ZWQgaW4sIHRoZSBHUFUgRFJNIGRyaXZlciBu
ZWVkcyB0bw0KPiA+ID4gc3dpdGNoIGludG8gcHJvdGVjdGVkIG1vZGUsIHdoaWNoIGhhcyBubyBp
bnZvbHZlbWVudCBhdCBhbGwgd2l0aCBURUUgLQ0KPiA+ID4gaXQncyBhcmNoaXRlY3R1cmFsbHkg
aW1wb3NzaWJsZSB0byBoYXZlIFRFRSBpbnZvbHZlZCB3aXRob3V0IG1vdmluZw0KPiA+ID4gbW9z
dCBvZiB0aGUgR1BVIGRyaXZlciBpbnRvIFRFRSBhbmQgZGVzdHJveWluZyBwZXJmb3JtYW5jZS4g
VGhlDQo+ID4gPiBkaXNwbGF5IGhhcmR3YXJlIGFsc28gbmVlZHMgdG8gZW5nYWdlIHByb3RlY3Rl
ZCBtb2RlLCB3aGljaCBhZ2FpbiBoYXMNCj4gPiA+IG5vIGludm9sdmVtZW50IHdpdGggVEVFIGFu
ZCBhZ2FpbiB3b3VsZCBuZWVkIHRvIGhhdmUgaGFsZiB0aGUgZHJpdmVyDQo+ID4gPiBtb3ZlZCBp
bnRvIFRFRSBmb3Igbm8gYmVuZWZpdCBpbiBvcmRlciB0byBkbyBzby4gVGhlIFdheWxhbmQNCj4g
PiA+IGNvbXBvc2l0b3IgYWxzbyBoYXMgbm8gaW50ZXJlc3QgaW4gVEVFOiBpdCB0ZWxscyB0aGUg
R1BVIERSTSBkcml2ZXINCj4gPiA+IGFib3V0IHRoZSBwcm90ZWN0ZWQgc3RhdHVzIG9mIGl0cyBi
dWZmZXJzLCBhbmQgdGhhdCdzIGl0Lg0KPiA+ID4gDQo+ID4gPiBXaGF0IHRoZXNlIGNvbXBvbmVu
dHMgX2FyZV8gb3BpbmlvbmF0ZWQgYWJvdXQsIGlzIHRoZSB3YXkgYnVmZmVycyBhcmUNCj4gPiA+
IGFsbG9jYXRlZCBhbmQgbWFuYWdlZC4gV2UgYnVpbHQgb3V0IGRtYWJ1ZiBtb2RpZmllcnMgZm9y
IHRoaXMgdXNlY2FzZSwNCj4gPiA+IGFuZCB3ZSBoYXZlIGEgZ29vZCBuZWdvdGlhdGlvbiBwcm90
b2NvbCBhcm91bmQgdGhhdC4gV2UgYWxzbyByZWFsbHkNCj4gPiA+IGNhcmUgYWJvdXQgYnVmZmVy
IHBsYWNlbWVudCBpbiBzb21lIHVzZWNhc2VzIC0gZS5nLiBzb21lIGRpc3BsYXkvY29kZWMNCj4g
PiA+IGhhcmR3YXJlIHJlcXVpcmVzIGJ1ZmZlcnMgdG8gYmUgc291cmNlZCBmcm9tIGNvbnRpZ3Vv
dXMgbWVtb3J5LCBvdGhlcg0KPiA+ID4gaGFyZHdhcmUgbmVlZHMgdG8ga25vdyB0aGF0IHdoZW4g
aXQgc2hhcmVzIGJ1ZmZlcnMgd2l0aCBhbm90aGVyDQo+ID4gPiBkZXZpY2UsIGl0IG5lZWRzIHRv
IHBsYWNlIHRoZSBidWZmZXJzIG91dHNpZGUgb2YgaW5hY2Nlc3NpYmxlL3Nsb3cNCj4gPiA+IGxv
Y2FsIFJBTS4gU28gd2UgYnVpbHQgb3V0IGRtYS1oZWFwcywgc28gZXZlcnkgcGFydCBvZiB0aGUg
Y29tcG9uZW50DQo+ID4gPiBpbiB0aGUgc3RhY2sgY2FuIGNvbW11bmljYXRlIHRoZWlyIGJ1ZmZl
ci1wbGFjZW1lbnQgbmVlZHMgaW4gdGhlIHNhbWUNCj4gPiA+IHdheSBhcyB3ZSBkbyBtb2RpZmll
cnMsIGFuZCBuZWdvdGlhdGUgYW4gYWNjZXB0YWJsZSBhbGxvY2F0aW9uLg0KPiA+ID4gDQo+ID4g
PiBUaGF0J3MgbXkgc3RhcnRpbmcgcG9pbnQgZm9yIHRoaXMgZGlzY3Vzc2lvbi4gV2UgaGF2ZSBh
IG1lY2hhbmlzbSB0bw0KPiA+ID4gZGVhbCB3aXRoIHRoZSBmYWN0IHRoYXQgYnVmZmVycyBuZWVk
IHRvIGJlIHNoYXJlZCBiZXR3ZWVuIGRpZmZlcmVudCBJUA0KPiA+ID4gYmxvY2tzIHdoaWNoIGhh
dmUgdGhlaXIgb3duIGNvbnN0cmFpbnRzIG9uIGJ1ZmZlciBwbGFjZW1lbnQsIGF2b2lkaW5nDQo+
ID4gPiB0aGUgY3VycmVudCBwcm9ibGVtIG9mIGhhdmluZyBldmVyeSBzdWJzeXN0ZW0gcmVpbnZl
bnQgdGhlaXIgb3duDQo+ID4gPiBhbGxvY2F0aW9uIHVBUEkgd2hpY2ggd2FzIGJ1cnlpbmcgdXMg
aW4gaW1wZWRhbmNlIG1pc21hdGNoIGFuZA0KPiA+ID4gY29uZnVzaW9uLiBUaGF0IG1lY2hhbmlz
bSBpcyBkbWEtaGVhcHMuIEl0IHNlZW1zIGxpa2UgeW91ciBzdGFydGluZw0KPiA+ID4gcG9pbnQg
ZnJvbSB0aGlzIGRpc2N1c3Npb24gaXMgdGhhdCB5b3UndmUgaW1wbGVtZW50ZWQgYSBURUUtY2Vu
dHJpYw0KPiA+ID4gZGVzaWduIGZvciBTVlAsIGFuZCBzbyBhbGwgb2YgdXNlcnNwYWNlIHNob3Vs
ZCBieXBhc3Mgb3VyIGV4aXN0aW5nDQo+ID4gPiBjcm9zcy1zdWJzeXN0ZW0gc3BlY2lhbC1wdXJw
b3NlIGFsbG9jYXRpb24gbWVjaGFuaXNtLCBhbmQgd3JpdGUNCj4gPiA+IHNwZWNpZmljYWxseSB0
byBvbmUgaW1wbGVtZW50YXRpb24uIEkgYmVsaWV2ZSB0aGF0IGlzIGEgbWFzc2l2ZSBzdGVwDQo+
ID4gPiBiYWNrd2FyZHMgYW5kIGFuIGltbWVkaWF0ZSBpbnRyb2R1Y3Rpb24gb2YgdGVjaG5pY2Fs
IGRlYnQuDQo+ID4gPiANCj4gPiA+IEFnYWluLCBoYXZpbmcgYW4gaW1wbGVtZW50YXRpb24gb2Yg
U1ZQIHZpYSBURUUgbWFrZXMgYSBodWdlIGFtb3VudCBvZg0KPiA+ID4gc2Vuc2UuIEhhdmluZyBf
bW9zdF8gU1ZQIGltcGxlbWVudGF0aW9ucyB2aWEgVEVFIHN0aWxsIG1ha2VzIGEgbG90IG9mDQo+
ID4gPiBzZW5zZS4gSGF2aW5nIF9hbGxfIFNWUCBpbXBsZW1lbnRhdGlvbnMgZXZlbnR1YWxseSBi
ZSB2aWEgVEVFIHdvdWxkDQo+ID4gPiBzdGlsbCBtYWtlIHNlbnNlLiBCdXQgZXZlbiBpZiB3ZSB3
ZXJlIGF0IHRoYXQgcG9pbnQgLSB3aGljaCB3ZSBhcmVuJ3QNCj4gPiA+IC0gaXQgc3RpbGwgZG9l
c24ndCBqdXN0aWZ5IHRlbGxpbmcgdXNlcnNwYWNlICd1c2UgdGhlIGdlbmVyaWMgZG1hLWhlYXAN
Cj4gPiA+IHVBUEkgZm9yIGV2ZXJ5IGRldmljZS1zcGVjaWZpYyBhbGxvY2F0aW9uIGNvbnN0cmFp
bnQsIGFwYXJ0IGZyb20gU1ZQDQo+ID4gPiB3aGljaCBoYXMgYSBjb21wbGV0ZWx5IGRpZmZlcmVu
dCB3YXkgdG8gYWxsb2NhdGUgc29tZSBieXRlcycuDQo+ID4gDQo+ID4gSSBtdXN0IGFkbWl0IHRo
YXQgSSBkb24ndCBzZWUgaG93IHRoaXMgbWFrZXMgYSBzaWduaWZpY2FudCBkaWZmZXJlbmNlLA0K
PiA+IGJ1dCB0aGVuIEkgaGF2ZW4ndCBoYWNrZWQgbXVjaCBpbiB0aGUgc3RhY2tzIHlvdSdyZSB0
YWxraW5nIGFib3V0LCBzbw0KPiA+IEknbSBnb2luZyB0byB0YWtlIHlvdXIgd29yZCBmb3IgaXQu
DQo+ID4gDQo+ID4gSSd2ZSBleHBlcmltZW50ZWQgd2l0aCBwcm92aWRpbmcgYSBkbWEtaGVhcCBy
ZXBsYWNpbmcgdGhlIFRFRSBBUEkuIFRoZQ0KPiA+IGltcGxlbWVudGF0aW9uIGlzIG1vcmUgY29t
cGxleCB0aGFuIEkgZmlyc3QgYW50aWNpcGF0ZWQsIGFkZGluZyBhYm91dA0KPiA+IDQwMCBsaW5l
cyB0byB0aGUgcGF0Y2ggc2V0Lg0KPiANCj4gSSBkaWQgYW50aWNpcGF0ZWQgdGhpcyBidXQgbGV0
J3MgZ2l2ZSBpdCBhIHRyeSBhbmQgc2VlIGlmIERNQSBoZWFwcw0KPiByZWFsbHkgYWRkcyBhbnkg
dmFsdWUgZnJvbSB1c2VyLXNwYWNlIHBvaW50IG9mIHZpZXcuIElmIGl0IGRvZXMgdGhlbiBpdA0K
PiB3aWxsIGJlIHdvcnRoIHRoZSBtYWludGVuZW5jZSBvdmVyaGVhZC4NCj4gDQo+ID4gRnJvbSB1
c2VyIHNwYWNlLCBpdCBsb29rcyBsaWtlIGFub3RoZXINCj4gPiBkbWEtaGVhcC4gSSdtIHVzaW5n
IHRoZSBuYW1lcyB5b3UgZ2F2ZSBlYXJsaWVyLA0KPiA+IHByb3RlY3RlZCxzZWN1cmUtdmlkZW8s
IHByb3RlY3RlZCx0cnVzdGVkLXVpLCBhbmQNCj4gPiBwcm90ZWN0ZWQsc2VjdXJlLXZpZGVvLXJl
Y29yZC4gSG93ZXZlciwgSSB3b25kZXIgaWYgd2Ugc2hvdWxkbid0IHVzZQ0KPiA+ICJyZXN0cmlj
dGVkIiBpbnN0ZWFkIG9mICJwcm90ZWN0ZWQiIHNpbmNlIHdlIGhhZCBhZ3JlZWQgdG8gY2FsbCBp
dA0KPiA+IHJlc3RyaWN0ZWQgbWVtb3J5IGVhcmxpZXIuDQo+IA0KPiBMZXQncyBzdGljayB3aXRo
ICJyZXN0cmljdGVkIiBtZW1vcnkgYnVmZmVyIHJlZmVyZW5jZXMgb25seS4NCg0KVW50aWwgbm93
LCB3ZSBkaWRuJ3QgaGF2ZSBhIHN0YW5kYXJkIHRvIGJhbGFuY2Ugb3VyIG5hbWluZyBjaG9pY2Us
IHdlDQpzaW1wbHkgd2FudGVkIHRvIG1vdmUgYXdheSBmcm9tICJzZWN1cmUiIHdoaWNoIGRpZG4n
dCBtZWFuIG11Y2gsIGFuZA0KcmVzdHJpY3RlZCBtZXQgb3VyIG5lZWRzLiBJIHRoaW5rIHRoZSBk
aXNjdXNzaW9uIGlzIHdvcnRoIGhhdmluZyBhZ2FpbiwNCm5vdyB0aGF0IHRoZXJlIGlzIGEgc3Rh
bmRhcmQgdGhhdCBkZWNpZGVkIHRvd2FyZCAicHJvdGVjdGVkIi4gTWF0Y2hjaW5nDQp0aGUgS2hy
b25vcyBzdGFuZGFyZCBtZWFucyByZWR1Y2luZyBhIGxvdCBvZiBjb25mdXNpb24uDQoNCmh0dHBz
Oi8vZG9jcy52dWxrYW4ub3JnL2d1aWRlL2xhdGVzdC9wcm90ZWN0ZWQuaHRtbA0KDQpyZWdhcmRz
LA0KTmljb2xhcw0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2
ZUBsaXN0cy5saW5hcm8ub3JnCg==
