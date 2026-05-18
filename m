Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8AZ1B7Y/DGqqawUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 12:47:18 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id AA91E57CC16
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 12:47:17 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B5A1F406C8
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 10:47:16 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id DDD333F91A
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 14:14:20 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=XcCKlePQ;
	spf=pass (lists.linaro.org: domain of eballetb@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=eballetb@redhat.com;
	dmarc=pass (policy=quarantine) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1779113660;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=X0PKPpLFUcJ5PNICdj+fODP+ieu23TytLui2uhS6hnY=;
	b=XcCKlePQRCeNFJsGcLMSHXQ/fSrJvamD5A2GxmWdoGZQL/RrWD2lyIlTxFTNF9BMo6BpbY
	w0/EpsruSfyA3I1DLVcmyCwiy2DO/qTcIZpk/Bm8sU+YKDkio4I76oPJ2p6UBwLkGoA+Yp
	a20GsbyKFpt8c+g3HBJT5doI0gxJFyA=
Received: from mail-lf1-f70.google.com (mail-lf1-f70.google.com
 [209.85.167.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-644-bphkFDglP3ysD4yeZQotkw-1; Mon, 18 May 2026 10:14:18 -0400
X-MC-Unique: bphkFDglP3ysD4yeZQotkw-1
X-Mimecast-MFC-AGG-ID: bphkFDglP3ysD4yeZQotkw_1779113656
Received: by mail-lf1-f70.google.com with SMTP id 2adb3069b0e04-5a8d72e2f0aso159115e87.2
        for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 07:14:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779113656; x=1779718456;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=X0PKPpLFUcJ5PNICdj+fODP+ieu23TytLui2uhS6hnY=;
        b=jiEZhLLGQ+US3hkWhb6JYdCk0+Xxqoq75zH+1BsWgEmvGKePKUScjc8/wAcABzhSuY
         tWuQ8dnfVE7j8zlHFIBB0fCjLOMtWIvlbXIySMsG7iEDPwU01O/yaDpSNuGPJgxPLru7
         XBF5pAASKQTJA1q+BhY2lWjKHxucOkINJlCBEOs4tHE6zqjXLjRUm47Y46AzXINqDE7e
         v03zUW7iaPtif57eLlWq1BOi/LbXzsgfRRrOGPHFMt1AQ0KJRmQAYdEKe/TPkmczabmi
         uoHkmwfvjeXRoPv5wmNGFcR82zdEVIel7LQv4dziuZHD58US2zE4neg8m3VH7ZQnxaDu
         roEA==
X-Forwarded-Encrypted: i=1; AFNElJ8yGd5yPA0lzDnIktY01brCYoEy5K0gQiFQfrUX9vXr9HlAtY9rUatilPN0gIp3/gAN5vJ3w2hfmpq4Wa15@lists.linaro.org
X-Gm-Message-State: AOJu0YzajrW5mwNjeVCdJddmyaJx6kIUnzOMNsnGpj/D5qZoRmy88OpU
	qkATOT9tLLPzYyEjygyYhJnamMagQ/b1xhsWrxqbyGMQNMs+cUgX8ztM49IVSZvTHVTp8+lYoPa
	G8yEQ6oZZuf+IWumjOxnOgsQeuiyExamQlMC3EwmStZ8ztnf8ynEapNK36VB4zn94kp72sY032j
	2TpDJz1QMgLXNulGlVe4xMKNinIH5YQ4pFxErJxN30/2g=
X-Gm-Gg: Acq92OGnfpLRsvQXM0jU9hIvQzUx//3kqO9SWwOxElqJ2PE1rOX1iodJ6dHQGsfiIeE
	kQ/YhMa1h+uvg8qoQPikbz3TQjV4P9IePlH/uE3dpoaXDbk2xL7admA6QgiyIiq92FYoAk+iLRW
	3986kOchG3swqlWB7/BIzkew9pjaC2d/TuhIHuKMWE1cBHocQLfWPDxPYbCFPYqRr791QTTpXdp
	L31ag==
X-Received: by 2002:a05:651c:410e:b0:38f:f6a2:a61d with SMTP id 38308e7fff4ca-39561f2f883mr11802341fa.4.1779113656319;
        Mon, 18 May 2026 07:14:16 -0700 (PDT)
X-Received: by 2002:a05:651c:410e:b0:38f:f6a2:a61d with SMTP id
 38308e7fff4ca-39561f2f883mr11802281fa.4.1779113655655; Mon, 18 May 2026
 07:14:15 -0700 (PDT)
MIME-Version: 1.0
References: <20260216150205.212318-1-larisa.grigore@oss.nxp.com> <aaGkGwbk-sh0YJqj@jkangas-thinkpadp1gen3.rmtuswa.csb>
In-Reply-To: <aaGkGwbk-sh0YJqj@jkangas-thinkpadp1gen3.rmtuswa.csb>
From: Enric Balletbo i Serra <eballetb@redhat.com>
Date: Mon, 18 May 2026 16:14:02 +0200
X-Gm-Features: AVHnY4JRP0kGP-z42K5FI0qcb3gAysvgY6dzw7kUR8X3jOVZKVkXLna2nVCi7XY
Message-ID: <CALE0LRuahJy2EKa7YUukGRq1w9iws6kDvjZ7o33ahJUGc2JSsw@mail.gmail.com>
To: Jared Kangas <jkangas@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: wsbueJXHYBmfRT_tl2UrbF6ayHa9oEYSdwPHySgmzwU_1779113656
X-Mimecast-Originator: redhat.com
X-Spamd-Bar: ----
X-MailFrom: eballetb@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 7URVJJXPTUURE33PWUGKG57Z7MQQHYSU
X-Message-ID-Hash: 7URVJJXPTUURE33PWUGKG57Z7MQQHYSU
X-Mailman-Approved-At: Tue, 19 May 2026 10:46:26 +0000
CC: Larisa Grigore <larisa.grigore@oss.nxp.com>, gregkh@linuxfoundation.org, jirislaby@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, sumit.semwal@linaro.org, christian.koenig@amd.com, chester62515@gmail.com, cosmin.stoica@nxp.com, adrian.nitu@freescale.com, stefan-gabriel.mirea@nxp.com, Mihaela.Martinas@freescale.com, linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org, devicetree@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, s32@nxp.com, imx@lists.linux.dev, clizzi@redhat.com, aruizrui@redhat.com, echanude@redhat.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 00/13] Add DMA support for LINFlexD UART driver
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7URVJJXPTUURE33PWUGKG57Z7MQQHYSU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.59 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[redhat.com:s=mimecast20190719];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[25];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:-];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[eballetb@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[oss.nxp.com,linuxfoundation.org,kernel.org,linaro.org,amd.com,gmail.com,nxp.com,freescale.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev,redhat.com];
	TAGGED_RCPT(0.00)[linaro-mm-sig,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,mail.gmail.com:mid,lists.linaro.org:rdns,lists.linaro.org:helo]
X-Rspamd-Queue-Id: AA91E57CC16
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

SGkgYWxsLA0KDQpBbnkgY2hhbmNlIHRoZXNlIHNlcmllcyBjYW4gYmUgY29uc2lkZXJlZD8gVGhl
eSBzdGlsbCBhcHBseSBvbiB0b3Agb2YNCnRoZSBtYWlubGluZSBrZXJuZWwuDQoNCk9uIEZyaSwg
RmViIDI3LCAyMDI2IGF0IDM6MDPigK9QTSBKYXJlZCBLYW5nYXMgPGprYW5nYXNAcmVkaGF0LmNv
bT4gd3JvdGU6DQo+DQo+IEhpIExhcmlzYSwNCj4NCj4gT24gTW9uLCBGZWIgMTYsIDIwMjYgYXQg
MDQ6MDE6NTJQTSArMDEwMCwgTGFyaXNhIEdyaWdvcmUgd3JvdGU6DQo+ID4gVGhpcyBwYXRjaHNl
dCBlbmhhbmNlcyB0aGUgTElORmxleEQgVUFSVCBkcml2ZXIgYW5kIGl0cyBkZXZpY2UgdHJlZSBi
aW5kaW5ncyB0bw0KPiA+IHN1cHBvcnQgRE1BIHRyYW5zZmVycywgY29uZmlndXJhYmxlIGNsb2Nr
IGlucHV0cywgZHluYW1pYyBiYXVkcmF0ZSBjaGFuZ2VzLCBhbmQNCj4gPiB0ZXJtaW9zIGZlYXR1
cmVzLiBJdCBhbHNvIGluY2x1ZGVzIGEgc2VyaWVzIG9mIGZpeGVzIGFuZCBpbXByb3ZlbWVudHMg
dG8gZW5zdXJlDQo+ID4gcmVsaWFibGUgb3BlcmF0aW9uIGFjcm9zcyB2YXJpb3VzIG1vZGVzIGFu
ZCBjb25maWd1cmF0aW9ucy4NCj4gPg0KPiA+IFRoZSBjaGFuZ2VzIGFkZGVkIGNhbiBiZSBzdW1t
YXJpemVkIGFzIGZvbGxvd3M6DQo+ID4gMS4gRml4ZXMgd2l0aCByZXNwZWN0IHRvIEZJRk8gaGFu
ZGxpbmcsIGxvY2tpbmcsIGludGVycnVwdCByZWxhdGVkIHJlZ2lzdGVycyBhbmQNCj4gPiBJTklU
TSBtb2RlIHRyYW5zaXRpb24uDQo+DQo+IFRlc3RlZCB0aGlzIHNlcmllcyB3aXRoIHRoZSBkZWZh
dWx0IGRldmljZXRyZWUgY29uZmlndXJhdGlvbiBieSBib290aW5nDQo+IHRoZSBib2FyZCB0byBh
IGxvZ2luIHByb21wdCBhYm91dCAyMDAgdGltZXMuIFdpdGhvdXQgdGhlIHNlcmllcyBhcHBsaWVk
LA0KPiBJIHdhcyBzZWVpbmcgYSBidWcgcm91Z2hseSBldmVyeSAzMC01MCBib290cyB3aGVyZSB0
aGUga2VybmVsIHdvdWxkDQo+IHdvdWxkIGhhbmcgaW4gbGluZmxleF9jb25zb2xlX3B1dGNoYXIo
KSB3YWl0aW5nIGZvciBEVEZURkYuIEluIG15IHRlc3RzDQo+IHdpdGggdGhlIHNlcmllcyBhcHBs
aWVkLCBJIGRpZG4ndCBzZWUgYW55IHJlZ3Jlc3Npb25zIGFuZCB0aGUgYnVnIG5vDQo+IGxvbmdl
ciBhcHBlYXJlZC4gVGhhbmtzIGZvciB0aGUgZml4IQ0KPg0KPiBUZXN0ZWQtYnk6IEphcmVkIEth
bmdhcyA8amthbmdhc0ByZWRoYXQuY29tPiAjIFMzMkczLCBpbnRlcnJ1cHQtZHJpdmVuDQo+DQoN
CkZXSVcgSSBhbHNvIHJlcHJvZHVjZWQgdGhlIGlzc3VlIEphcmVkIGZhY2VkLiBDdXJyZW50IHN0
YXRlIG9mIHRoZQ0KTGluRkxFWCBzZXJpYWwgZHJpdmVyIGluIG1haW5saW5lIHNlZW1zIGEgYml0
IGJ1Z2d5IGFuZCBJIGNhbiBjb25maXJtDQp0aGF0IHRoZXNlIGZpeCB0aGUgcHJvYmxlbS4NCg0K
VGVzdGVkLWJ5OiBFbnJpYyBCYWxsZXRibyBpIFNlcnJhIDxlYmFsbGV0YkByZWRoYXQuY29tPg0K
DQo+ID4gMi4gUmVtb3ZhbCBvZiB0aGUgZWFybHljb24gd29ya2Fyb3VuZCwgYXMgcHJvcGVyIEZJ
Rk8gaGFuZGxpbmcgYW5kIElOSVRNDQo+ID4gdHJhbnNpdGlvbnMgbm93IGVuc3VyZSBzdGFibGUg
YmVoYXZpb3IuDQo+ID4gMy4gU3VwcG9ydCBmb3IgY29uZmlndXJhYmxlIHN0b3AgYml0cyBhbmQg
ZHluYW1pYyBiYXVkcmF0ZSBjaGFuZ2VzIGJhc2VkIG9uDQo+ID4gY2xvY2sgaW5wdXRzIGFuZCB0
ZXJtaW9zIHNldHRpbmdzLg0KPiA+IDQuIE9wdGlvbmFsIERNQSBzdXBwb3J0IGZvciBSWCBhbmQg
VFggcGF0aHMsIHByZXZlbnRpbmcgY2hhcmFjdGVyIGxvc3MgZHVyaW5nDQo+ID4gaGlnaC10aHJv
dWdocHV0IG9wZXJhdGlvbnMgbGlrZSBjb3B5LXBhc3RlLiBDeWNsaWMgRE1BIGlzIHVzZWQgZm9y
IFJYIHRvIGF2b2lkDQo+ID4gZ2FwcyBiZXR3ZWVuIHRyYW5zYWN0aW9ucy4NCj4gPg0KPiA+IExh
cmlzYSBHcmlnb3JlICg4KToNCj4gPiAgIHNlcmlhbDogbGluZmxleHVhcnQ6IENsZWFuIFNMRUVQ
IGJpdCBpbiBMSU5DUjEgYWZ0ZXIgc3VzcGVuZA0KPiA+ICAgc2VyaWFsOiBsaW5mbGV4dWFydDog
Q2hlY2sgRklGTyBmdWxsIGJlZm9yZSB3cml0aW5nDQo+ID4gICBzZXJpYWw6IGxpbmZsZXh1YXJ0
OiBDb3JyZWN0bHkgY2xlYXIgVUFSVFNSIGluIGJ1ZmZlciBtb2RlDQo+ID4gICBzZXJpYWw6IGxp
bmZsZXh1YXJ0OiBVcGRhdGUgUlhFTi9UWEVOIG91dHNpZGUgSU5JVE0gbW9kZQ0KPiA+ICAgc2Vy
aWFsOiBsaW5mbGV4dWFydDogRW5zdXJlIEZJRk8gaXMgZW1wdHkgd2hlbiBlbnRlcmluZyBJTklU
TQ0KPiA+ICAgc2VyaWFsOiBsaW5mbGV4dWFydDogUmV2ZXJ0IGVhcmx5Y29uIHdvcmthcm91bmQN
Cj4gPiAgIHNlcmlhbDogbGluZmxleHVhcnQ6IEFkZCBzdXBwb3J0IGZvciBjb25maWd1cmFibGUg
c3RvcCBiaXRzDQo+ID4gICBzZXJpYWw6IGxpbmZsZXh1YXJ0OiBBZGQgRE1BIHN1cHBvcnQNCj4g
Pg0KPiA+IFJhZHUgUGlyZWEgKDUpOg0KPiA+ICAgc2VyaWFsOiBsaW5mbGV4dWFydDogRml4IGxv
Y2tpbmcgaW4gc2V0X3Rlcm1pb3MNCj4gPiAgIGR0LWJpbmRpbmdzOiBzZXJpYWw6IGZzbC1saW5m
bGV4dWFydDogYWRkIGNsb2NrIGlucHV0IHByb3BlcnRpZXMNCj4gPiAgIGR0LWJpbmRpbmdzOiBz
ZXJpYWw6IGZzbC1saW5mbGV4dWFydDogYWRkIGRtYSBwcm9wZXJ0aWVzDQo+ID4gICBzZXJpYWw6
IGxpbmZsZXh1YXJ0OiBBZGQgc3VwcG9ydCBmb3IgY2hhbmdpbmcgYmF1ZHJhdGUNCj4gPiAgIHNl
cmlhbDogbGluZmxleHVhcnQ6IEF2b2lkIHN0b3BwaW5nIERNQSBkdXJpbmcgcmVjZWl2ZSBvcGVy
YXRpb25zDQo+ID4NCj4gPiAgLi4uL2JpbmRpbmdzL3NlcmlhbC9mc2wsczMyLWxpbmZsZXh1YXJ0
LnlhbWwgIHwgIDMxICsNCj4gPiAgZHJpdmVycy90dHkvc2VyaWFsL2ZzbF9saW5mbGV4dWFydC5j
ICAgICAgICAgIHwgOTcyICsrKysrKysrKysrKysrKy0tLQ0KPiA+ICAyIGZpbGVzIGNoYW5nZWQs
IDg0NiBpbnNlcnRpb25zKCspLCAxNTcgZGVsZXRpb25zKC0pDQo+ID4NCj4gPiAtLQ0KPiA+IDIu
NDcuMA0KPiA+DQo+DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMu
bGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWct
bGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
