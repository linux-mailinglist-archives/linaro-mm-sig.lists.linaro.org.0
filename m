Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 555A7611A6E
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 28 Oct 2022 20:47:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5B3D83F5BA
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 28 Oct 2022 18:47:49 +0000 (UTC)
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	by lists.linaro.org (Postfix) with ESMTPS id C1B1D3ED39
	for <linaro-mm-sig@lists.linaro.org>; Fri, 28 Oct 2022 18:47:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=fooishbar-org.20210112.gappssmtp.com header.s=20210112 header.b="QB/yJvyF";
	spf=none (lists.linaro.org: domain of daniel@fooishbar.org has no SPF policy when checking 209.85.222.171) smtp.mailfrom=daniel@fooishbar.org;
	dmarc=none
Received: by mail-qk1-f171.google.com with SMTP id f8so4032094qkg.3
        for <linaro-mm-sig@lists.linaro.org>; Fri, 28 Oct 2022 11:47:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar-org.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+lIeCqF9MC1plkMaa8w3RYpUvhtv+mOsM3E0K5wP3Sw=;
        b=QB/yJvyFQct+2OJbnZIA/tDX8ajG1aNWWKiALtUocG5OcgRfSj5xC/jy/KZ58XFRBS
         BuoopZQTNYIml8YK2WaVS/dNg8od+ainUFxbQl6SXGED3Nc9ESxGIPeys4mFokbGBqoA
         X1k2vWg4GAnIGwJ2Gt7YFwUtKfcY3CDZkF209ennLJQCEkW96pisjBSBPF6GYq+Gdefv
         KKz8QAwRWbcDupJKAReMBeisQrYQpSJOO28tUcYJh1Cj0o3ra+lMi4nYhuGOIh1lk23I
         j0EWoC9xafzFiHR4YkSr35aAzSooNnEeyGZo5mMEie8ckTJuvwP1LFbcr9ublWnwKDa/
         pr5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+lIeCqF9MC1plkMaa8w3RYpUvhtv+mOsM3E0K5wP3Sw=;
        b=HklPprjc/jdyekLJweCkq4Wwq4CufaWrq6LPH9MLKp6kxou/aQMJgykzLMAVgdbyLp
         jeyX+L9sxcoXvStJDN/5U8+kxFl5bdCAu3NlT7sKMnbImuNgH1pmxMnIhYIAorgPtKRa
         KQiR9ez5gTFWEu53XgLaIF6EWzATvKsxxd5y/3Gwh8s4rqEidmmIDRMDDnEDf1igx95a
         jCWz5JvDeM+XtCanffHhaXoFImYiN8hxiij1qGX2l7SEezW3Pps//SP/B26apUge4EUv
         yuKwCS9O7936mCRiGmltwUdDM+rqYggmEw1LqGEsjHzU8Wel9pWkE+K0/H7rlamVLCxj
         1GVg==
X-Gm-Message-State: ACrzQf0CLkXAal3eLOfMXSjqzhd+M/Xt5qDNU/zp+n2VqmRNVwXLzYC3
	Fo4VFdpMih0fgjdnBl42zN8D/bh1+ZHTSYmjyh5i5w==
X-Google-Smtp-Source: AMsMyM56bLx8Jr1GOVzvxC6aqvYl/bq/OQWL5kJiTLnKCGyRYb9J4lp/fpUvOmNQDxGiQRuDo8iXQIlZVHQScew44u4=
X-Received: by 2002:a05:620a:2496:b0:6ee:76ce:4b3e with SMTP id
 i22-20020a05620a249600b006ee76ce4b3emr561552qkn.370.1666982851307; Fri, 28
 Oct 2022 11:47:31 -0700 (PDT)
MIME-Version: 1.0
References: <20221020121316.3946-1-christian.koenig@amd.com>
 <3d7353f3fa5905ce18e5b2d92f758f098189bc5a.camel@pengutronix.de>
 <7f5eff36-6886-bb06-061a-dd4263b61605@gmail.com> <f5de84cfe81fee828bbe0d47d379028d28ef6ca6.camel@pengutronix.de>
 <e02cedc2-6741-8813-a7a5-f8769e301745@gmail.com> <a53e5df51ec0f2f9d4c2d377c0cc5ba85f2e58ff.camel@ndufresne.ca>
 <9d716641-55c6-1590-26c2-1c3b14a28226@gmail.com>
In-Reply-To: <9d716641-55c6-1590-26c2-1c3b14a28226@gmail.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Fri, 28 Oct 2022 19:47:19 +0100
Message-ID: <CAPj87rMPkmimR_RJHhxYZokH__TVpPArk0h6drOUSx7Z9+oAHA@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: -----
X-Rspamd-Queue-Id: C1B1D3ED39
X-Spamd-Result: default: False [-5.30 / 15.00];
	DWL_DNSWL_HI(-3.50)[gappssmtp.com:dkim];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[fooishbar-org.20210112.gappssmtp.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	FREEMAIL_CC(0.00)[ndufresne.ca,pengutronix.de,gmail.com,linaro.org,ffwll.ch,lists.freedesktop.org,lists.linaro.org,vger.kernel.org];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	NEURAL_HAM(-0.00)[-0.984];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[fooishbar-org.20210112.gappssmtp.com:+];
	FROM_HAS_DN(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.222.171:from];
	RCPT_COUNT_SEVEN(0.00)[10];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	DMARC_NA(0.00)[fooishbar.org];
	RCVD_COUNT_TWO(0.00)[2]
Message-ID-Hash: P2VDUGW3NMXDUWN5OHEGKZ25B5UTLAMV
X-Message-ID-Hash: P2VDUGW3NMXDUWN5OHEGKZ25B5UTLAMV
X-MailFrom: daniel@fooishbar.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Nicolas Dufresne <nicolas@ndufresne.ca>, ppaalanen@gmail.com, sumit.semwal@linaro.org, daniel@ffwll.ch, robdclark@gmail.com, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Try to address the DMA-buf coherency problem
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/P2VDUGW3NMXDUWN5OHEGKZ25B5UTLAMV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgQ2hyaXN0aWFuLA0KDQpPbiBGcmksIDI4IE9jdCAyMDIyIGF0IDE4OjUwLCBDaHJpc3RpYW4g
S8O2bmlnDQo8Y2tvZW5pZy5sZWljaHR6dW1lcmtlbkBnbWFpbC5jb20+IHdyb3RlOg0KPiBBbSAy
OC4xMC4yMiB1bSAxNzo0NiBzY2hyaWViIE5pY29sYXMgRHVmcmVzbmU6DQo+ID4gVGhvdWdoLCBp
dHMgbm90IGdlbmVyaWNhbGx5IHBvc3NpYmxlIHRvIHJldmVyc2UgdGhlc2Ugcm9sZXMuIElmIHlv
dSB3YW50IHRvIGRvDQo+ID4gc28sIHlvdSBlbmR1cCBoYXZpbmcgdG8gZG8gbGlrZSBBbmRyb2lk
IChncmFsbG9jKSBhbmQgQ2hyb21lT1MgKG1pbmlnYm0pLA0KPiA+IGJlY2F1c2UgeW91IHdpbGwg
aGF2ZSB0byBhbGxvY2F0ZSBEUk0gYnVmZmVycyB0aGF0IGtub3dzIGFib3V0IGltcG9ydGVyIHNw
ZWNpZmljDQo+ID4gcmVxdWlyZW1lbnRzLiBTZWUgbGluayBbMV0gZm9yIHdoYXQgaXQgbG9va3Mg
bGlrZSBmb3IgUkszMzk5LCB3aXRoIE1vdGlvbiBWZWN0b3INCj4gPiBzaXplIGNhbGN1bGF0aW9u
IGNvcGllZCBmcm9tIHRoZSBrZXJuZWwgZHJpdmVyIGludG8gYSB1c2Vyc3BhY2UgbGliIChhcmd1
YWJseQ0KPiA+IHRoYXQgd2FzIGF2YWlsYWJsZSBmcm9tIFY0TDIgc2l6ZWltYWdlLCBidXQgdGhp
cyBpcyB0ZWNobmljYWxseSBkaWZmaWN1bHQgdG8NCj4gPiBjb21tdW5pY2F0ZSB3aXRoaW4gdGhl
IHNvZnR3YXJlIGxheWVycykuIElmIHlvdSBjb3VsZCBsZXQgdGhlIGRlY29kZXIgZXhwb3J0DQo+
ID4gKHdpdGggcHJvcGVyIGNhY2hlIG1hbmFnZW1lbnQpIHRoZSBub24tZ2VuZXJpYyBjb2RlIHdv
dWxkIG5vdCBiZSBuZWVkZWQuDQo+DQo+IFllYWgsIGJ1dCBJIGNhbiBhbHNvIHJldmVyc2UgdGhl
IGFyZ3VtZW50Og0KPg0KPiBHZXR0aW5nIHRoZSBwYXJhbWV0ZXJzIGZvciBWNEwgcmlnaHQgc28g
dGhhdCB3ZSBjYW4gc2hhcmUgdGhlIGltYWdlIGlzDQo+IHRyaWNreSwgYnV0IGdldHRpbmcgdGhl
IHBhcmFtZXRlcnMgc28gdGhhdCB0aGUgc3R1ZmYgaXMgYWN0dWFsbHkNCj4gZGlyZWN0bHkgZGlz
cGxheWFibGUgYnkgR1BVcyBpcyBldmVuIHRyaWNraWVyLg0KPg0KPiBFc3NlbnRpYWxseSB5b3Ug
bmVlZCB0byBsb29rIGF0IGJvdGggc2lkZXMgYW5kIGludGVyZmVyZW5jZSB0byBnZXQgdG8gYQ0K
PiBjb21tb24gZ3JvdW5kLCBlLmcuIGFsaWdubWVudCwgcGl0Y2gsIHdpZHRoL2hlaWdodCwgcGFk
ZGluZywgZXRjLi4uLi4NCj4NCj4gRGVjaWRpbmcgZnJvbSB3aGljaCBzaWRlIHRvIGFsbG9jYXRl
IGZyb20gaXMganVzdCBvbmUgc3RlcCBpbiB0aGlzDQo+IHByb2Nlc3MuIEZvciBleGFtcGxlIG1v
c3QgZEdQVXMgY2FuJ3QgZGlzcGxheSBkaXJlY3RseSBmcm9tIHN5c3RlbQ0KPiBtZW1vcnkgYWx0
b2dldGhlciwgYnV0IGl0IGlzIHBvc3NpYmxlIHRvIGFsbG9jYXRlIHRoZSBETUEtYnVmIHRocm91
Z2gNCj4gdGhlIEdQVSBkcml2ZXIgYW5kIHRoZW4gd3JpdGUgaW50byBkZXZpY2UgbWVtb3J5IHdp
dGggUDJQIFBDSSB0cmFuc2ZlcnMuDQo+DQo+IFNvIGFzIGZhciBhcyBJIGNhbiBzZWUgc3dpdGNo
aW5nIGltcG9ydGVyIGFuZCBleHBvcnRlciByb2xlcyBhbmQgZXZlbg0KPiBoYXZpbmcgcGVyZm9y
bWFudCBleHRyYSBmYWxsYmFja3Mgc2hvdWxkIGJlIGEgc3RhbmRhcmQgZmVhdHVyZSBvZiB1c2Vy
c3BhY2UuDQo+DQo+ID4gQW5vdGhlciBjYXNlIHdoZXJlIHJldmVyc2luZyB0aGUgcm9sZSBpcyBk
aWZmaWN1bHQgaXMgZm9yIGNhc2Ugd2hlcmUgeW91IG5lZWQgdG8NCj4gPiBtdWx0aXBsZXggdGhl
IHN0cmVhbXMgKGxldCdzIHVzZSBhIGNhbWVyYSB0byBpbGx1c3RyYXRlKSBhbmQgc2hhcmUgdGhh
dCB3aXRoDQo+ID4gbXVsdGlwbGUgcHJvY2Vzc2VzLiBJbiB0aGVzZSB1c2VzIGNhc2UsIHRoZSBE
Uk0gaW1wb3J0ZXJzIGFyZSB2b2xhdGlsZSwgd2hpY2gNCj4gPiBvbmUgZG8geW91IGFidXNlIHRv
IGRvIGFsbG9jYXRpb24gZnJvbSA/IEluIG11bHRpbWVkaWEgc2VydmVyIGxpa2UgUGlwZVdpcmUs
IHlvdQ0KPiA+IGFyZSBub3QgcmVhbGx5IGF3YXJlIGlmIHRoZSBjYW1lcmEgd2lsbCBiZSB1c2Vk
IGJ5IERSTSBvciBub3QsIGFuZCBpZiBzb21ldGhpbmcNCj4gPiAic3BlY2lhbCIgaXMgbmVlZGVk
IGluIHRlcm0gb2Ygcm9sZSBpbnZlcnNpb24uIEl0IGlzIHJlbGF0aXZlbHkgZWFzeSB0byBkZWFs
DQo+ID4gd2l0aCBtYXRjaGluZyBtb2RpZmllcnMsIGJ1dCB1c2luZyBkb3duc3RyZWFtIChkaXNw
bGF5L2dwdSkgYXMgYW4gZXhwb3J0ZXIgaXMNCj4gPiBhbHdheXMgZGlmZmljdWx0IChhbmQgcmVx
dWlyZSBzb21lIGxldmVsIG9mIGFidXNlIGFuZCBndWVzc2luZykuDQo+DQo+IE9oLCB2ZXJ5IGdv
b2QgcG9pbnQhIFllYWggd2UgZG8gaGF2ZSB1c2UgY2FzZXMgZm9yIHRoaXMgd2hlcmUgYW4gaW5w
dXQNCj4gYnVmZmVyIGlzIGJvdGggZGlzcGxheWVkIGFzIHdlbGwgYXMgZW5jb2RlZC4NCg0KVGhp
cyBpcyB0aGUgbWFpbiBpc3N1ZSwgeWVhaC4NCg0KRm9yIGEgc3RhbmRhcmQgbWVkaWEgcGxheWVy
LCB0aGV5IHdvdWxkIHRyeSB0byBhbGxvY2F0ZSB0aHJvdWdoIFY0TDINCmFuZCBkZWNvZGUgdGhy
b3VnaCB0aGF0IGludG8gbG9jYWxseS1hbGxvY2F0ZWQgYnVmZmVycy4gQWxsIHRoZXkga25vdw0K
aXMgdGhhdCB0aGVyZSdzIGEgV2F5bGFuZCBzZXJ2ZXIgYXQgdGhlIG90aGVyIGVuZCBvZiBhIHNv
Y2tldA0Kc29tZXdoZXJlIHdoaWNoIHdpbGwgd2FudCB0byBpbXBvcnQgdGhlIEZELiBUaGUgc2Vy
dmVyIGRvZXMgZ2l2ZSB5b3UNCnNvbWUgaGludHMgYWxvbmcgdGhlIHdheTogaXQgd2lsbCB0ZWxs
IHlvdSB0aGF0IGltcG9ydGluZyBpbnRvIGENCnBhcnRpY3VsYXIgR1BVIHRhcmdldCBkZXZpY2Ug
aXMgbmVjZXNzYXJ5IGFzIHRoZSB1bHRpbWF0ZSBmYWxsYmFjaywNCmFuZCBpbXBvcnRpbmcgaW50
byBhIHBhcnRpY3VsYXIgS01TIGRldmljZSBpcyBwcmVmZXJhYmxlIGFzIHRoZQ0Kb3B0aW1hbCBw
YXRoIHRvIGhpdCBhbiBvdmVybGF5Lg0KDQpTbyBsZXQncyBzYXkgdGhhdCB0aGUgVjRMMiBjbGll
bnQgZG9lcyB3aGF0IHlvdSdyZSBwcm9wb3Npbmc6IGl0DQphbGxvY2F0ZXMgYSBidWZmZXIgY2hh
aW4sIHNjaGVkdWxlcyBhIGRlY29kZSBpbnRvIHRoYXQgYnVmZmVyLCBhbmQNCnBhc3NlcyBpdCBh
bG9uZyB0byB0aGUgc2VydmVyIHRvIGltcG9ydC4gVGhlIHNlcnZlciBmYWlscyB0byBpbXBvcnQN
CnRoZSBidWZmZXIgaW50byB0aGUgR1BVLCBhbmQgdGVsbHMgdGhlIGNsaWVudCB0aGlzLiBUaGUg
Y2xpZW50IHRoZW4NCi4uLiB3ZWxsLCBpdCBkb2Vzbid0IGtub3cgdGhhdCBpdCBuZWVkcyB0byBh
bGxvY2F0ZSB3aXRoaW4gdGhlIEdQVQ0KaW5zdGVhZCwgYnV0IGl0IGtub3dzIHRoYXQgZG9pbmcg
c28gbWlnaHQgYmUgb25lIHRoaW5nIHdoaWNoIHdvdWxkDQptYWtlIHRoZSByZXF1ZXN0IHN1Y2Nl
ZWQuDQoNCkJ1dCB0aGUgY2xpZW50IGlzIGp1c3QgYSB2aWRlbyBwbGF5ZXIuIEl0IGRvZXNuJ3Qg
dW5kZXJzdGFuZCBob3cgdG8NCmFsbG9jYXRlIEJPcyBmb3IgUGFuZnJvc3Qgb3IgQU1EIG9yIGV0
bmF2aXYuIFNvIHdpdGhvdXQgYSB1bml2ZXJzYWwNCmFsbG9jYXRvciAoYWdhaW4gLi4uKSwgJ2p1
c3QgYWxsb2NhdGUgb24gdGhlIEdQVScgaXNuJ3QgYSB1c2VmdWwNCnJlc3BvbnNlIHRvIHRoZSBj
bGllbnQuDQoNCkkgZnVsbHkgdW5kZXJzdGFuZCB5b3VyIHBvaW50IGFib3V0IEFQSXMgbGlrZSBW
dWxrYW4gbm90IHNlbnNpYmx5DQphbGxvd2luZyBicmFja2V0aW5nLCBhbmQgdGhhdCdzIGZpbmUu
IE9uIHRoZSBvdGhlciBoYW5kLCBhIGxvdCBvZg0KZXh0YW50IHVzZWNhc2VzIChjYW1lcmEvY29k
ZWMgLT4gR1BVL2Rpc3BsYXksIEdQVSAtPiBjb2RlYywgZXRjKSBvbg0KQXJtIGp1c3QgY2Fubm90
IGZ1bGZpbGwgY29tcGxldGUgY29oZXJlbmN5LiBPbiBhIGxvdCBvZiB0aGVzZQ0KcGxhdGZvcm1z
LCBkZXNwaXRlIHdoYXQgeW91IG1pZ2h0IHRoaW5rIGFib3V0IHRoZSBDUFUvR1BVDQpjYXBhYmls
aXRpZXMsIHRoZSBib3R0bGVuZWNrIGlzIF9hbHdheXNfIG1lbW9yeSBiYW5kd2lkdGgsIHNvDQpt
YW5kYXRpbmcgZXh0cmEgY29waWVzIGlzIGFuIGFic29sdXRlIG5vbi1zdGFydGVyLCBhbmQgd291
bGQgaW5zdGFudGx5DQpjcmlwcGxlIGJpbGxpb25zIG9mIGRldmljZXMuIEx1Y2FzIGhhcyBiZWVu
IHByZXR0eSBnZW50bGUsIGJ1dCB0byBiZQ0KbW9yZSBjbGVhciwgdGhpcyBpcyBub3QgYW4gb3B0
aW9uIGFuZCB3b24ndCBiZSBmb3IgYXQgbGVhc3QgdGhlIG5leHQNCmRlY2FkZS4NCg0KU28gd2Ug
b2J2aW91c2x5IG5lZWQgYSB0aGlyZCB3YXkgYXQgdGhpcyBwb2ludCwgYmVjYXVzZSAnYWxsIGRl
dmljZXMNCm11c3QgYWx3YXlzIGJlIGNvaGVyZW50JyB2cy4gJ2NhY2hlIG11c3QgYmUgYW4gdW5r
bm93bicgY2FuJ3Qgd29yay4NCkhvdyBhYm91dCB0aGlzIGFzIGEgc3VnZ2VzdGlvbjogd2UgaGF2
ZSBzb21lIHVudXNlZCBmbGFncyBpbiB0aGUgUFJJTUUNCmlvY3Rscy4gQ2FuIHdlIGFkZCBhIGZs
YWcgZm9yICdpbXBvcnQgbXVzdCBiZSBjb2hlcmVudCc/DQoNClRoYXQgZmxhZyB3b3VsZG4ndCBi
ZSBzZXQgZm9yIHRoZSBleGlzdGluZyBlY29zeXN0ZW0NCkx1Y2FzL05pY29sYXMvbXlzZWxmIGFy
ZSB0YWxraW5nIGFib3V0LCB3aGVyZSB3ZSBoYXZlIGV4cGxpY2l0DQpoYW5kb3ZlciBwb2ludHMg
YW5kIHVzZXJzIGFyZSBmdWxseSBhYmxlIHRvIHBlcmZvcm0gY2FjaGUgbWFpbnRlbmFuY2UuDQpG
b3IgbmV3ZXIgQVBJcyB3aGVyZSBpdCdzIG5vdCBwb3NzaWJsZSB0byBwcm9wZXJseSBleHByZXNz
IHRoYXQNCmJyYWNrZXRpbmcsIHRoZXkgd291bGQgYWx3YXlzIHNldCB0aGF0IGZsYWcgKHVubGVz
cyB3ZSBhZGQgYW4gQVBJDQpjYXJ2ZS1vdXQgd2hlcmUgdGhlIGNsaWVudCBwcm9taXNlcyB0byBk
byB3aGF0ZXZlciBpcyByZXF1aXJlZCB0bw0KbWFpbnRhaW4gdGhhdCkuDQoNCldvdWxkIHRoYXQg
YmUgdmlhYmxlPw0KDQpDaGVlcnMsDQpEYW5pZWwNCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFy
by1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRv
IGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
