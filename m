Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BCA3678FAE
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 Jan 2023 06:08:23 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 777A03EC63
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 Jan 2023 05:08:22 +0000 (UTC)
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com [209.85.128.180])
	by lists.linaro.org (Postfix) with ESMTPS id 88F0B3EC63
	for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Jan 2023 05:08:06 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20210112 header.b=jWMM2g4E;
	spf=pass (lists.linaro.org: domain of jstultz@google.com designates 209.85.128.180 as permitted sender) smtp.mailfrom=jstultz@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-50642ea22adso5976277b3.4
        for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Jan 2023 21:08:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lFk9/LshyOazerQVNiA1ja62Zlj7Q7aVCq7uUOqwpN8=;
        b=jWMM2g4EqTlOLHIdIRNr92DUTwy+cxhiq92I36/xLpO2fKDlTQEeawrgNWk1cNglNz
         HaSmx4C64CfW2zynwWotoDfF92hmHlYZ7csRlnQkKEO16w/3/hJt3WMyRiWTzJwvvOgy
         MHwd0TO4pgsGOmAlp+LNdqlaaLbeax3Ey6DCczfnACtBXL5WR6rucDf502jnjFu6T4qf
         UTKIy7j+a7uYpAfJFh3jdutt/zuVun6e4qYT+L9997QhmemYtvbdyyG8cl1jWs5o0iOh
         /6SZcX/YB4ZCdGZIw9kIASt3IePBUvl1ScLvtygWR2PsCRVwf2jh1y236nDIZdEQiumL
         RJIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lFk9/LshyOazerQVNiA1ja62Zlj7Q7aVCq7uUOqwpN8=;
        b=6NPIT0REo5WrzWNaQ+Y/+LRbPjsrCEnHIz8jCvfmzQax+ftLkjqsEsUBMmLLyeINGJ
         GXeeXBBrO6aCtmBO7JJMq5VUSLNUck1SWqe62Oeb1VMGbUJ01X68fAhAltaR5hLTUU+O
         A7RLbmBLLMshq6JP6TXzD1TH7ydVJmrMEEdGw2+pVhSiKkEKaZd0Jf8Y5X8npzq+L1kI
         GWvoafgWV4x1DA4aILBJVcKehMG5ha30IYF2cAYshIRAX3xyp9B0GEVCZpCAxDy4n1fz
         OFQl3bLuf+5iaePj+Mt9sBkReJGA4L3QVn+AkJn5aWUEWUfByadxcBZN9jdCdNOeg3qy
         vQsA==
X-Gm-Message-State: AFqh2kpwh/T5e9RmX3BMddtioBgavx5ltGecfbLSj145+mn41yy/TNWn
	XBsckiXvovEkKFHNP8lYYjPL0Cw32mIoSn0VGAC8
X-Google-Smtp-Source: AMrXdXuJplsF/hX9gNzVeObQYMpCkfsRYCF+rGhiiMoM/7wmLL3IjeJ1EgQlsSmxNfFFlrsah0cpLT3QyuPcUSvB5CI=
X-Received: by 2002:a81:9ace:0:b0:4ed:5f50:1a43 with SMTP id
 r197-20020a819ace000000b004ed5f501a43mr3704793ywg.291.1674536885984; Mon, 23
 Jan 2023 21:08:05 -0800 (PST)
MIME-Version: 1.0
References: <20230123123756.401692-1-christian.koenig@amd.com> <Y86R3vQX+vW0+oxw@pendragon.ideasonboard.com>
In-Reply-To: <Y86R3vQX+vW0+oxw@pendragon.ideasonboard.com>
From: John Stultz <jstultz@google.com>
Date: Mon, 23 Jan 2023 21:07:54 -0800
Message-ID: <CANDhNCoppG0oXHu-Cc8s1WJNWZTXmV9Z1d+5qrHSEDEGsFf1ag@mail.gmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 88F0B3EC63
X-Spamd-Bar: -----------
X-Spamd-Result: default: False [-11.50 / 15.00];
	REPLY(-4.00)[];
	DWL_DNSWL_HI(-3.50)[google.com:dkim];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-0.50)[209.85.128.180:from];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.180:from];
	RCPT_COUNT_TWELVE(0.00)[19];
	FREEMAIL_CC(0.00)[gmail.com,pengutronix.de,ndufresne.ca,linaro.org,ffwll.ch,chromium.org,redhat.com,xs4all.nl,lists.freedesktop.org,lists.linaro.org,vger.kernel.org,collabora.com,arm.com,kernel.org,nvidia.com,google.com];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[google.com:+];
	TAGGED_RCPT(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
Message-ID-Hash: OLDN2CXXTESLZXKQNLSS6BC7ET45UGRH
X-Message-ID-Hash: OLDN2CXXTESLZXKQNLSS6BC7ET45UGRH
X-MailFrom: jstultz@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: nicolas@ndufresne.ca, ppaalanen@gmail.com, sumit.semwal@linaro.org, daniel@ffwll.ch, robdclark@gmail.com, tfiga@chromium.org, sebastian.wick@redhat.com, hverkuil@xs4all.nl, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, mchehab@kernel.org, James Jones <jajones@nvidia.com>, "T.J. Mercier" <tjmercier@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: DMA-heap driver hints
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OLDN2CXXTESLZXKQNLSS6BC7ET45UGRH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBKYW4gMjMsIDIwMjMgYXQgNTo1NSBBTSBMYXVyZW50IFBpbmNoYXJ0DQo8bGF1cmVu
dC5waW5jaGFydEBpZGVhc29uYm9hcmQuY29tPiB3cm90ZToNCj4NCj4gSGkgQ2hyaXN0aWFuLA0K
Pg0KPiBDQydpbmcgSmFtZXMgYXMgSSB0aGluayB0aGlzIGlzIHJlbGF0ZWQgdG8gaGlzIHdvcmsg
b24gdGhlIHVuaXggZGV2aWNlDQo+IG1lbW9yeSBhbGxvY2F0b3IgKFsxXSkuDQo+DQo+IFsxXSBo
dHRwczovL2xvcmUua2VybmVsLm9yZy9kcmktZGV2ZWwvOGI1NTU2NzQtMWM1Yi1jNzkxLTQ1NDct
MmVhN2MxNmFlZTZjQG52aWRpYS5jb20vDQo+DQo+IE9uIE1vbiwgSmFuIDIzLCAyMDIzIGF0IDAx
OjM3OjU0UE0gKzAxMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+ID4gSGkgZ3V5cywNCj4g
Pg0KPiA+IHRoaXMgaXMganVzdCBhbiBSRkMhIFRoZSBsYXN0IHRpbWUgd2UgZGlzY3Vzc2VkIHRo
ZSBETUEtYnVmIGNvaGVyZW5jeQ0KPiA+IHByb2JsZW0gWzFdIHdlIGNvbmNsdWRlZCB0aGF0IERN
QS1oZWFwIGZpcnN0IG5lZWRzIGEgYmV0dGVyIHdheSB0bw0KPiA+IGNvbW11bmljYXRlIHRvIHVz
ZXJzcGFjZSB3aGljaCBoZWFwIHRvIHVzZSBmb3IgYSBjZXJ0YWluIGRldmljZS4NCj4gPg0KPiA+
IEFzIGZhciBhcyBJIGtub3cgdXNlcnNwYWNlIGN1cnJlbnRseSBqdXN0IGhhcmQgY29kZXMgdGhh
dCBpbmZvcm1hdGlvbg0KPiA+IHdoaWNoIGlzIGNlcnRhaW5seSBub3QgZGVzaXJhYmxlIGNvbnNp
ZGVyaW5nIHRoYXQgd2Ugc2hvdWxkIGhhdmUgdGhpcw0KPiA+IGluc2lkZSB0aGUga2VybmVsIGFz
IHdlbGwuDQo+ID4NCj4gPiBTbyB3aGF0IHRob3NlIHR3byBwYXRjaGVzIGhlcmUgZG8gaXMgdG8g
Zmlyc3QgYWRkIHNvbWUNCj4gPiBkbWFfaGVhcF9jcmVhdGVfZGV2aWNlX2xpbmsoKSBhbmQgIGRt
YV9oZWFwX3JlbW92ZV9kZXZpY2VfbGluaygpDQo+ID4gZnVuY3Rpb24gYW5kIHRoZW4gZGVtb25z
dHJhdGluZyB0aGUgZnVuY3Rpb25hbGl0eSB3aXRoIHV2Y3ZpZGVvDQo+ID4gZHJpdmVyLg0KPiA+
DQo+ID4gVGhlIHByZWZlcnJlZCBETUEtaGVhcCBpcyByZXByZXNlbnRlZCB3aXRoIGEgc3ltbGlu
ayBpbiBzeXNmcyBiZXR3ZWVuDQo+ID4gdGhlIGRldmljZSBhbmQgdGhlIHZpcnR1YWwgRE1BLWhl
YXAgZGV2aWNlIG5vZGUuDQo+DQo+IEknbGwgc3RhcnQgd2l0aCBhIGZldyBoaWdoLWxldmVsIGNv
bW1lbnRzL3F1ZXN0aW9uczoNCj4NCj4gLSBJbnN0ZWFkIG9mIHR5aW5nIGRyaXZlcnMgdG8gaGVh
cHMsIGhhdmUgeW91IGNvbnNpZGVyZWQgYSBzeXN0ZW0gd2hlcmUNCj4gICBhIGRyaXZlciB3b3Vs
ZCBleHBvc2UgY29uc3RyYWludHMsIGFuZCBhIGhlYXAgd291bGQgdGhlbiBiZSBzZWxlY3RlZA0K
PiAgIGJhc2VkIG9uIHRob3NlIGNvbnN0cmFpbnRzID8gQSB0aWdodCBjb3VwbGluZyBiZXR3ZWVu
IGhlYXBzIGFuZA0KPiAgIGRyaXZlcnMgbWVhbnMgZG93bnN0cmVhbSBwYXRjaGVzIHRvIGRyaXZl
cnMgaW4gb3JkZXIgdG8gdXNlDQo+ICAgdmVuZG9yLXNwZWNpZmljIGhlYXBzLCB0aGF0IHNvdW5k
cyBwYWluZnVsLg0KDQpUaG91Z2gsIG1heWJlIGl0IHNob3VsZCBiZSBpbiB0aGF0IGNhc2UuIE1v
cmUgbW90aXZhdGlvbiB0byBnZXQgeW91cg0KaGVhcCAoYW5kIGl0cyB1c2VycykgdXBzdHJlYW0u
IDopDQoNCg0KPiAgIEEgY29uc3RyYWludC1iYXNlZCBzeXN0ZW0gd291bGQgYWxzbywgSSB0aGlu
aywgYmUgZWFzaWVyIHRvIGV4dGVuZA0KPiAgIHdpdGggYWRkaXRpb25hbCBjb25zdHJhaW50cyBp
biB0aGUgZnV0dXJlLg0KDQpJIHRoaW5rIHRoZSBpc3N1ZSBvZiBlbnVtZXJhdGluZyBhbmQgZXhw
b3NpbmcgY29uc3RyYWludHMgdG8gdXNlcmxhbmQNCmlzIGp1c3QgcmVhbGx5IHRvdWdoLiAgV2hp
bGUgb24gYW55IG9uZSBzeXN0ZW0gdGhlcmUgaXMgYSBmaXhlZCBudW1iZXINCm9mIGNvbnN0cmFp
bnRzLCBpdCdzIG5vdCBjbGVhciB3ZSBjb3VsZCBjb21lIHVwIHdpdGggYSBib3VuZGVkIHNldCBm
b3INCmFsbCBzeXN0ZW1zLg0KVG8gYXZvaWQgdGhpcyBiYWNrIGluIHRoZSBJT04gZGF5cyBJIGhh
ZCBwcm9wb3NlZCBhbiBpZGVhIG9mIHVzZXJsYW5kDQpoYXZpbmcgZGV2aWNlcyBzaGFyZSBhbiBv
cGFxdWUgY29uc3RyYWludCBjb29raWUsIHdoaWNoIHVzZXJsYW5kIGNvdWxkDQptYXNrIHRvZ2V0
aGVyIGJldHdlZW4gZGV2aWNlcyBhbmQgdGhlbiBmaW5kIGEgaGVhcCB0aGF0IG1hdGNoZXMgdGhl
DQpjb21iaW5lZCBjb29raWUsIHdoaWNoIHdvdWxkIGF2b2lkIGV4cG9zaW5nIHNwZWNpZmljIGNv
bnN0cmFpbnRzIHRvDQp1c2VybGFuZCwgYnV0IHRoZSBwcm9jZXNzZXMgb2YgdXNpbmcgaXQgc2Vl
bWVkIGxpa2Ugc3VjaCBhIG1lc3MgdG8NCmV4cGxhaW4uDQoNClNvIEkgdGhpbmsgdGhpcyBkcml2
ZXIgZHJpdmVuIGxpbmtzIGFwcHJvYWNoIGlzIHByZXR0eSByZWFzb25hYmxlLiBJDQpkbyB3b3Jy
eSB3ZSBtaWdodCBnZXQgc2l0dWF0aW9ucyB3aGVyZSB0aGUgZHJpdmVycyBhYmlsaXR5IHRvIHVz
ZSBhDQpoZWFwIGRlcGVuZHMgb24gc29tZSBvdGhlciBmYWN0b3IgKGR0cyBpb21tdSBzZXR1cCBt
YXliZT8pLCB3aGljaCB0aGUNCmRyaXZlciBtaWdodCBub3Qga25vdyBvbiBpdHMgb3duLCBidXQg
SSB0aGluayBoYXZpbmcgdGhlIGRyaXZlcg0Kc3BlY2lhbC1jYXNlIHRoYXQgdG8gcmVzb2x2ZSBp
dCB3b3VsZCBiZSBkb2FibGUuDQoNCg0KPiAtIEkgYXNzdW1lIHNvbWUgZHJpdmVycyB3aWxsIGJl
IGFibGUgdG8gc3VwcG9ydCBtdWx0aXBsZSBoZWFwcy4gSG93IGRvDQo+ICAgeW91IGVudmlzaW9u
IHRoaXMgYmVpbmcgaW1wbGVtZW50ZWQgPw0KDQpZZWFoLiBJIGFsc28gYWdyZWUgd2UgbmVlZCB0
byBoYXZlIG11bHRpcGxlIGhlYXAgbGlua3MuDQoNCj4gLSBEZXZpY2VzIGNvdWxkIGhhdmUgZGlm
ZmVyZW50IGNvbnN0cmFpbnRzIGJhc2VkIG9uIHBhcnRpY3VsYXINCj4gICBjb25maWd1cmF0aW9u
cy4gRm9yIGluc3RhbmNlLCBhIGRldmljZSBtYXkgcmVxdWlyZSBzcGVjaWZpYyBtZW1vcnkNCj4g
ICBsYXlvdXQgZm9yIG11bHRpLXBsYW5hciBZVVYgZm9ybWF0cyBvbmx5IChhcyBpbiBhbGxvY2F0
aW5nIHRoZSBZIGFuZCBDDQo+ICAgcGxhbmVzIG9mIE5WMTIgZnJvbSBkaWZmZXJlbnQgbWVtb3J5
IGJhbmtzKS4gQSBkeW5hbWljIEFQSSBtYXkgdGh1cyBiZQ0KPiAgIG5lZWRlZCAoYnV0IG1heSBh
bHNvIGJlIHZlcnkgcGFpbmZ1bCB0byB1c2UgZnJvbSB1c2Vyc3BhY2UpLg0KDQpZZWFoLiBXaGls
ZSBJIGtub3cgZm9sa3MgcmVhbGx5IGRvbid0IGxpa2UgdGhlIHN0YXRpYyB1c2Vyc3BhY2UgY29u
ZmlnDQptb2RlbCB0aGF0IEFuZHJvaWQgdXNlcywgSSBkbyBmcmV0IHRoYXQgb25jZSB3ZSBnZXQg
cGFzdCB3aGF0IGENCndvcmthYmxlIGhlYXAgaXMsIGl0IHN0aWxsIHdvbid0IGFkZHJlc3Mgd2hh
dCB0aGUgaWRlYWwgaGVhcCBpcy4NCg0KRm9yIGluc3RhbmNlLCB3ZSBtaWdodCBmaW5kIHRoYXQg
dGhlIHN5c3RlbSBoZWFwIHdvcmtzIGZvciBhIGdpdmVuDQpwaXBlbGluZSwgYnV0IGJlY2F1c2Ug
dGhlIGNwdSBkb2Vzbid0IHVzZSB0aGUgYnVmZmVyIGluIG9uZSBjYXNlLCB0aGUNCnN5c3RlbS11
bmNhY2hlZCBoZWFwIGlzIHJlYWxseSB0aGUgYmVzdCBjaG9pY2UgZm9yIHBlcmZvcm1hbmNlLiBC
dXQgaW4NCmFub3RoZXIgcGlwZWxpbmUgd2l0aCB0aGUgc2FtZSBkZXZpY2VzLCBpZiB0aGUgY3B1
IGlzIHJlYWRpbmcgYW5kDQp3cml0aW5nIHRoZSBidWZmZXIgcXVpdGUgYSBiaXQsIG9uZSB3b3Vs
ZCB3YW50IHRoZSBzdGFuZGFyZCBzeXN0ZW0NCmhlYXAuDQoNCkJlY2F1c2UgdXNlcmxhbmQgaXMg
dGhlIG9ubHkgb25lIHdobyBjYW4ga25vdyB0aGUgcGF0aCBhIGJ1ZmZlciB3aWxsDQp0YWtlLCB1
c2VybGFuZCBpcyByZWFsbHkgdGhlIGJlc3QgcGxhY2UgdG8gY2hvb3NlIHRoZSBpZGVhbCBhbGxv
Y2F0aW9uDQp0eXBlLg0KDQpTbyB3aGlsZSBJIGRvbid0IG9iamVjdCB0byB0aGlzIGxpbmsgYmFz
ZWQgYXBwcm9hY2gganVzdCB0byBhbGxvdyBhDQpnZW5lcmljIHVzZXJsYW5kIHRvIGZpbmQgYSB3
b3JraW5nIGJ1ZmZlciB0eXBlIGZvciBhIGdpdmVuIHNldCBvZg0KZGV2aWNlcywgSSBkb24ndCB0
aGluayBpdCB3aWxsIGJlIGFibGUgdG8gcmVwbGFjZSBoYXZpbmcgZGV2aWNlDQpzcGVjaWZpYyB1
c2VybGFuZCBwb2xpY3kgKGxpa2UgZ3JhbGxvYyksIHRob3VnaCBpdCdzIG15IHBlcnNvbmFsIGhv
cGUNCnRoZSBwb2xpY3kgY2FuIGJlIGZvcm1hbGl6ZWQgdG8gYSBjb25maWcgZmlsZSByYXRoZXIg
dGhlbiBoYXZpbmcNCmRldmljZSBzcGVjaWZpYyBiaW5hcmllcy4NCg0KdGhhbmtzDQotam9obg0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1t
LXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVu
c3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5h
cm8ub3JnCg==
