Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C1CCB678FBE
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 Jan 2023 06:19:56 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C759F444A1
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 Jan 2023 05:19:55 +0000 (UTC)
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
	by lists.linaro.org (Postfix) with ESMTPS id C4FE23EC63
	for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Jan 2023 05:19:39 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20210112 header.b=HXwn1ky8;
	spf=pass (lists.linaro.org: domain of jstultz@google.com designates 209.85.219.180 as permitted sender) smtp.mailfrom=jstultz@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-yb1-f180.google.com with SMTP id p141so14779929ybg.12
        for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Jan 2023 21:19:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aajEhhXMmVsLvsRhsLFIHWTCer83l1wUnEHXjAc9R8E=;
        b=HXwn1ky8iT64aFx7McfTeeaiFLZbLoAJ3B9CEKlXlfz+ZIJPzk2W23dcFvmyfcHKm/
         /e1CKrRmP6kEOBWodZu2dJKR2oRUBcvo9MlAU1T1lqV/AV2amIqI71VFaPP0+mY3FaiA
         /x8RwfM5h4JAUDN56UjeDO00Cecdq7KGrX21h/aP+7/l2sjZPG1J8E62uOOTbvYC31dr
         m0ZdEYNY5CTl7cZqQnCupYNjrwq/o/wP9v9gjGfGEdUwvx82LQ4D2bkkGRiThX5nWRX2
         rbxvvO/oaio2bT6pDr3oTEmskoSdEM1K2HobUWF59zFD5BsXT0yKvPanPKIWuTTApNnA
         1/+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aajEhhXMmVsLvsRhsLFIHWTCer83l1wUnEHXjAc9R8E=;
        b=Qq4CM5AgYJCv9093yScqF6YmqBYClMt4iix+L6S4s8DTDIvJHPV+qyP9XVfskZgj7k
         LYYYI3UUqNbuHgMLqUCSMdiRAd4RlFqmqAJd2jxB7Cr/8k+nKbkBXIeFCSO06fEmFsTl
         3i6XzrIA+J+IkglvRU/XDS06v4c8LxTfE1x6wWDql5Y6ZAthvYUROzWfPiiV/nY3gEGf
         p3CO8czgNA5/WSbDNhUJ6cQ7kD3Ibb5bpVefiev7M17A3YQyqbYLK7yJq9EFLPMJfZRJ
         wGUU7ILIxmMlCWfMc4U9HuAVwku/mEH8iYvt37UqxqgYMKdGTkqqFH5B+2QqJ1fnybj4
         Tu7A==
X-Gm-Message-State: AFqh2kr3AjmIIBD/ENaYVzJam5DffhsfQkiNw1TwgDgsXHPDckn4CJkB
	unW8nbwrzlKG86mzrre32WI1e79ZmI0m0HZWh0ek
X-Google-Smtp-Source: AMrXdXvQncnILbL8UBISoiDSpnnYYKPmxdsRjcxC8OI06Nei40MBcVTislakm2TngBoftXVs7J5nHk+E7v7/FzWgYHA=
X-Received: by 2002:a25:dd5:0:b0:801:7846:7e97 with SMTP id
 204-20020a250dd5000000b0080178467e97mr1160754ybn.49.1674537579258; Mon, 23
 Jan 2023 21:19:39 -0800 (PST)
MIME-Version: 1.0
References: <20230123123756.401692-1-christian.koenig@amd.com>
 <Y86R3vQX+vW0+oxw@pendragon.ideasonboard.com> <1f4a1a5c-e0d5-7f0e-353c-daa89f1369ea@amd.com>
In-Reply-To: <1f4a1a5c-e0d5-7f0e-353c-daa89f1369ea@amd.com>
From: John Stultz <jstultz@google.com>
Date: Mon, 23 Jan 2023 21:19:28 -0800
Message-ID: <CANDhNCoVkq4pQJvtgmvJJe=68ZoQOdjYFkbGG-PXVujX1py4aw@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: C4FE23EC63
X-Spamd-Bar: ------------
X-Spamd-Result: default: False [-13.00 / 15.00];
	REPLY(-4.00)[];
	DWL_DNSWL_HI(-3.50)[google.com:dkim];
	BAYES_HAM(-3.00)[99.99%];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-0.50)[209.85.219.180:from];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	FROM_EQ_ENVFROM(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[ideasonboard.com,pengutronix.de,ndufresne.ca,gmail.com,linaro.org,ffwll.ch,chromium.org,redhat.com,xs4all.nl,lists.freedesktop.org,lists.linaro.org,vger.kernel.org,collabora.com,codeaurora.org,arm.com,kernel.org,nvidia.com];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[google.com:+];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.180:from];
	RCPT_COUNT_TWELVE(0.00)[20];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
Message-ID-Hash: 2KRILB24NCVZVSL5ZOAAT7SP66D3X2HO
X-Message-ID-Hash: 2KRILB24NCVZVSL5ZOAAT7SP66D3X2HO
X-MailFrom: jstultz@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, nicolas@ndufresne.ca, ppaalanen@gmail.com, sumit.semwal@linaro.org, daniel@ffwll.ch, robdclark@gmail.com, tfiga@chromium.org, sebastian.wick@redhat.com, hverkuil@xs4all.nl, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, benjamin.gaignard@collabora.com, lmark@codeaurora.org, labbott@redhat.com, Brian.Starkey@arm.com, mchehab@kernel.org, James Jones <jajones@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: DMA-heap driver hints
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2KRILB24NCVZVSL5ZOAAT7SP66D3X2HO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBKYW4gMjMsIDIwMjMgYXQgODoyOSBBTSBDaHJpc3RpYW4gS8O2bmlnDQo8Y2hyaXN0
aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToNCj4gQW0gMjMuMDEuMjMgdW0gMTQ6NTUgc2Nocmll
YiBMYXVyZW50IFBpbmNoYXJ0Og0KPiA+IC0gSSBhc3N1bWUgc29tZSBkcml2ZXJzIHdpbGwgYmUg
YWJsZSB0byBzdXBwb3J0IG11bHRpcGxlIGhlYXBzLiBIb3cgZG8NCj4gPiAgICB5b3UgZW52aXNp
b24gdGhpcyBiZWluZyBpbXBsZW1lbnRlZCA/DQo+DQo+IEkgZG9uJ3QgcmVhbGx5IHNlZSBhbiB1
c2UgY2FzZSBmb3IgdGhpcy4NCj4NCj4gV2UgZG8gaGF2ZSBzb21lIGRyaXZlcnMgd2hpY2ggc2F5
OiBmb3IgdGhpcyB1c2UgY2FzZSB5b3UgY2FuIHVzZQ0KPiB3aGF0ZXZlciB5b3Ugd2FudCwgYnV0
IGZvciB0aGF0IHVzZSBjYXNlIHlvdSBuZWVkIHRvIHVzZSBzcGVjaWZpYyBtZW1vcnkNCj4gKHNj
YW4gb3V0IG9uIEdQVXMgZm9yIGV4YW1wbGUgd29ya3MgbGlrZSB0aGlzKS4NCj4NCltzbmlwcGlu
ZyB0aGUgY29uc3RyYWludHMgYXJndW1lbnQsIHdoaWNoIEkgYWdyZWUgd2l0aF0NCj4NCj4gV2hh
dCB3ZSBkbyBoYXZlIGlzIGNvbXBhdGliaWxpdHkgYmV0d2VlbiBoZWFwcy4gRS5nLiBhIENNQSBo
ZWFwIGlzDQo+IHVzdWFsbHkgY29tcGF0aWJsZSB3aXRoIHRoZSBzeXN0ZW0gaGVhcCBvciBtaWdo
dCBldmVuIGJlIGEgc3Vic2V0IG9mDQo+IGFub3RoZXIgQ01BIGhlYXAuIEJ1dCBJIHdhbnRlZCB0
byBhZGQgdGhhdCBhcyBuZXh0IHN0ZXAgdG8gdGhlIGhlYXBzDQo+IGZyYW1ld29yayBpdHNlbGYu
DQoNClNvIHRoZSBkaWZmaWN1bHQgcXVlc3Rpb24gaXMgaG93IGlzIHVzZXJsYW5kIHN1cHBvc2Vk
IHRvIGtub3cgd2hpY2gNCmhlYXAgaXMgY29tcGF0aWJsZSB3aXRoIHdoaWNoPw0KDQpJZiB5b3Ug
aGF2ZSB0d28gZGV2aWNlcywgb25lIHRoYXQgcG9pbnRzIHRvIGhlYXAgImZvbyIgYW5kIHRoZSBv
dGhlcg0KcG9pbnRzIHRvIGhlYXAgImJhciIsIGhvdyBkb2VzIHVzZXJsYW5kIGtub3cgdGhhdCAi
Zm9vIiBzYXRpc2ZpZXMgdGhlDQpjb25zdHJhaW50cyBvZiAiYmFyIiBidXQgImJhciIgZG9lc24n
dCBzYXRpc2Z5IHRoZSBjb25zdHJhaW50cyBvZg0KImZvbyIuDQooZm9vID0iY21hIiwgIGJhcj0i
c3lzdGVtIikNCg0KSSB0aGluayBpdCB3b3VsZCBiZSBtdWNoIGJldHRlciBmb3IgZGV2aWNlIDEg
dG8gbGlzdCAiZm9vIiBhbmQgZGV2aWNlDQoyIHRvIGxpc3QgImZvbyIgYW5kICJiYXIiLCBzbyB5
b3UgY2FuIGZpbmQgdGhhdCAiZm9vIiBpcyB0aGUgY29tbW9uDQpoZWFwIHdoaWNoIHdpbGwgc29s
dmUgYm90aCBkZXZpY2VzJyBuZWVkcy4NCg0KDQo+ID4gLSBEZXZpY2VzIGNvdWxkIGhhdmUgZGlm
ZmVyZW50IGNvbnN0cmFpbnRzIGJhc2VkIG9uIHBhcnRpY3VsYXINCj4gPiAgICBjb25maWd1cmF0
aW9ucy4gRm9yIGluc3RhbmNlLCBhIGRldmljZSBtYXkgcmVxdWlyZSBzcGVjaWZpYyBtZW1vcnkN
Cj4gPiAgICBsYXlvdXQgZm9yIG11bHRpLXBsYW5hciBZVVYgZm9ybWF0cyBvbmx5IChhcyBpbiBh
bGxvY2F0aW5nIHRoZSBZIGFuZCBDDQo+ID4gICAgcGxhbmVzIG9mIE5WMTIgZnJvbSBkaWZmZXJl
bnQgbWVtb3J5IGJhbmtzKS4gQSBkeW5hbWljIEFQSSBtYXkgdGh1cyBiZQ0KPiA+ICAgIG5lZWRl
ZCAoYnV0IG1heSBhbHNvIGJlIHZlcnkgcGFpbmZ1bCB0byB1c2UgZnJvbSB1c2Vyc3BhY2UpLg0K
Pg0KPiBVZmYsIGdvb2QgdG8ga25vdy4gQnV0IEknbSBub3Qgc3VyZSBob3cgdG8gZXhwb3NlIHN0
dWZmIGxpa2UgdGhhdC4NCg0KWWVhaC4gVGhlc2UgZWRnZSBjYXNlcyBhcmUgcmVhbGx5IGhhcmQg
dG8gc29sdmUgZ2VuZXJpY2FsbHkuICBBbmQNCnNpbmdsZSBkZXZpY2VzIHRoYXQgaGF2ZSBzZXBh
cmF0ZSBjb25zdHJhaW50cyBmb3IgZGlmZmVyZW50IHVzZXMgYXJlDQphbHNvIG5vdCBnb2luZyB0
byBiZSBzb2x2YWJsZSB3aXRoIGEgc2ltcGxlIGxpbmtpbmcgYXBwcm9hY2guDQoNCkJ1dCBJIGRv
IHdvbmRlciBpZiBhIGdlbmVyaWMgc29sdXRpb24gdG8gYWxsIGNhc2VzIGlzIG5lZWRlZA0KKGVz
cGVjaWFsbHkgaWYgaXQgcmVhbGx5IGlzbid0IHBvc3NpYmxlKT8gSWYgd2UgbGVhdmUgdGhlIG9w
dGlvbiBmb3INCmdyYWxsb2MgbGlrZSBvbW5pc2NpZW50IGRldmljZS1zcGVjaWZpYyB1c2VybGFu
ZCBwb2xpY3ksIHRob3NlIGVkZ2UNCmNhc2VzIGNhbiBiZSBoYW5kbGVkIGJ5IHRob3NlIGRldmlj
ZXMgdGhhdCBjYW4ndCBydW4gZ2VuZXJpYyBsb2dpYy4NCkFuZCB0aG9zZSBkZXZpY2VzIGp1c3Qg
d29uJ3QgYmUgYWJsZSB0byBiZSBzdXBwb3J0ZWQgYnkgZ2VuZXJpYw0KZGlzdHJvcywgaG9wZWZ1
bGx5IG1vdGl2YXRpbmcgZnV0dXJlIGRlc2lnbnMgdG8gaGF2ZSBsZXNzIG9kZA0KY29uc3RyYWlu
dHM/DQoNCnRoYW5rcw0KLWpvaG4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1t
bS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
