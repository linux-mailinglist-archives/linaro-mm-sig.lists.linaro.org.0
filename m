Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 21A59824963
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Jan 2024 21:06:13 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 31FC540F25
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Jan 2024 20:06:12 +0000 (UTC)
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	by lists.linaro.org (Postfix) with ESMTPS id 0E17040D53
	for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Jan 2024 20:05:52 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=qRoPNKtH;
	spf=pass (lists.linaro.org: domain of jkardatzke@google.com designates 209.85.214.174 as permitted sender) smtp.mailfrom=jkardatzke@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-1d47fae33e0so33635ad.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 04 Jan 2024 12:05:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1704398751; x=1705003551; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZvEetwkb9xaGP1xb5l25SZewPP7nYFLZIpeTOK182Ek=;
        b=qRoPNKtHZxfMKFfWIAVben9bQb9YKSja5jZ0ZfSNn3NItZkb5nJ1+ZQejbYMBtoT1g
         zNpqpZb2yVoNB+g5DtgEYyyhBKzy+f+bD8iGcbezDFbpwrnFe7lP9P7Eq8Uh466tEzKZ
         +BZVdNFr6cF3OT4wfFysXCzpPfNMy86/l2XktyWwBzevVH0huABLwbtADCczptzaI1Gw
         dss5XWEF/6mCOvK77PaST7YU90cmwtwYIUVUoeluLX7xQ1DXK8cb/5usICOskSXkkPi3
         DOaxofaXHgpEYC+UbRvVkumz8qgH1Jh991WfzLd5C+9O5/mlfSdPy9KSBXQA13Iw27v7
         8I3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704398751; x=1705003551;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZvEetwkb9xaGP1xb5l25SZewPP7nYFLZIpeTOK182Ek=;
        b=D2ytKYWoqY46Oa2j62my+CdeMerfvfErpz2C+QkhiwB7YTPMNNt9CNW1JLqu3O02wU
         cWXwxWIVSDlpES6WOwbLpwhZNaxf2KI+J3aeC0hIBO7MvtJaG/s0E9O4HWWVcNIn7yMy
         LG/YiTyH/EhR7ML6ERtzAy2KE8wqYU6xplbwQZXmFjJLmpwmeCw7mTLc1Vwe8/KGuCqF
         l1D9gSq33lv21cogHVdsWHfpTDgTYqYbbvfkNQkek+qwpPKixsw7+mwkvo84VQT4tfad
         M6+TXQzXDoVlBqKGFQQz3xrnj4sATeZiG9q5i7jOelyer1/+JGdZ7Ww8eR0/yjXWon0k
         isEg==
X-Gm-Message-State: AOJu0YzXjdNFtR7lxuUT+MWMpCxTWXdGY6WRpB1Vj1hADnRFd77Pu5Do
	gEw0gn3CK9CWw9jrNMzYYzu9dqFGMcExJq7TNBryU//Exag=
X-Google-Smtp-Source: AGHT+IFtpK9YJeU2jGd3Bpf25IdYM4Caale+wmgEjoLqzqnOsTKnfaX9VNsHJOZHlAHU0P2aZXIT9K2U0qLn/rFYSYA=
X-Received: by 2002:a17:902:fa50:b0:1d4:69a6:8a9d with SMTP id
 lb16-20020a170902fa5000b001d469a68a9dmr33072plb.19.1704398750899; Thu, 04 Jan
 2024 12:05:50 -0800 (PST)
MIME-Version: 1.0
References: <20231206081538.17056-1-yunfei.dong@mediatek.com>
 <20231206081538.17056-5-yunfei.dong@mediatek.com> <ce2110bf-a16a-45ae-979b-7e41be2896cd@xs4all.nl>
In-Reply-To: <ce2110bf-a16a-45ae-979b-7e41be2896cd@xs4all.nl>
From: Jeffrey Kardatzke <jkardatzke@google.com>
Date: Thu, 4 Jan 2024 12:05:39 -0800
Message-ID: <CA+ddPcM6nz0ufF5NXUq7E_vF6HnFKrEEag5iUDAknT6=hWTCNQ@mail.gmail.com>
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.214.174:from];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[mediatek.com,collabora.com,chromium.org,ffwll.ch,linaro.org,arm.com,google.com,amd.com,gmail.com,lists.freedesktop.org,lists.linaro.org,vger.kernel.org,lists.infradead.org];
	RCVD_COUNT_ONE(0.00)[1];
	RCPT_COUNT_TWELVE(0.00)[26];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_TO(0.00)[xs4all.nl];
	URIBL_BLOCKED(0.00)[xs4all.nl:email,mediatek.com:email];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 0E17040D53
X-Spamd-Bar: --
Message-ID-Hash: Y67COYV77AOJGNPFIVIPWPSKQZK6JMXJ
X-Message-ID-Hash: Y67COYV77AOJGNPFIVIPWPSKQZK6JMXJ
X-MailFrom: jkardatzke@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Yunfei Dong <yunfei.dong@mediatek.com>, =?UTF-8?B?TsOtY29sYXMgRiAuIFIgLiBBIC4gUHJhZG8=?= <nfraprado@collabora.com>, Nicolas Dufresne <nicolas.dufresne@collabora.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Nathan Hebert <nhebert@chromium.org>, Chen-Yu Tsai <wenst@chromium.org>, Yong Wu <yong.wu@mediatek.com>, Hsin-Yi Wang <hsinyi@chromium.org>, Fritz Koenig <frkoenig@chromium.org>, Daniel Vetter <daniel@ffwll.ch>, Steve Cho <stevecho@chromium.org>, Sumit Semwal <sumit.semwal@linaro.org>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Matthias Brugger <matthias.bgg@gmail.com>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, P
 roject_Global_Chrome_Upstream_Group@mediatek.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3,04/21] v4l: add documentation for secure memory flag
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Y67COYV77AOJGNPFIVIPWPSKQZK6JMXJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBEZWMgMTEsIDIwMjMgYXQgMzowNeKAr0FNIEhhbnMgVmVya3VpbCA8aHZlcmt1aWwt
Y2lzY29AeHM0YWxsLm5sPiB3cm90ZToNCj4NCj4gT24gMDYvMTIvMjAyMyAwOToxNSwgWXVuZmVp
IERvbmcgd3JvdGU6DQo+ID4gRnJvbTogSmVmZnJleSBLYXJkYXR6a2UgPGprYXJkYXR6a2VAZ29v
Z2xlLmNvbT4NCj4gPg0KPiA+IEFkZHMgZG9jdW1lbnRhdGlvbiBmb3IgVjRMMl9NRU1PUllfRkxB
R19TRUNVUkUuDQo+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBKZWZmcmV5IEthcmRhdHprZSA8amth
cmRhdHprZUBnb29nbGUuY29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6IFl1bmZlaSBEb25nIDx5dW5m
ZWkuZG9uZ0BtZWRpYXRlay5jb20+DQo+ID4gLS0tDQo+ID4gIERvY3VtZW50YXRpb24vdXNlcnNw
YWNlLWFwaS9tZWRpYS92NGwvYnVmZmVyLnJzdCB8IDggKysrKysrKy0NCj4gPiAgMSBmaWxlIGNo
YW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPiA+DQo+ID4gZGlmZiAtLWdp
dCBhL0RvY3VtZW50YXRpb24vdXNlcnNwYWNlLWFwaS9tZWRpYS92NGwvYnVmZmVyLnJzdCBiL0Rv
Y3VtZW50YXRpb24vdXNlcnNwYWNlLWFwaS9tZWRpYS92NGwvYnVmZmVyLnJzdA0KPiA+IGluZGV4
IDUyYmJlZTgxYzA4MC4uYTVhN2QxYzcyZDUzIDEwMDY0NA0KPiA+IC0tLSBhL0RvY3VtZW50YXRp
b24vdXNlcnNwYWNlLWFwaS9tZWRpYS92NGwvYnVmZmVyLnJzdA0KPiA+ICsrKyBiL0RvY3VtZW50
YXRpb24vdXNlcnNwYWNlLWFwaS9tZWRpYS92NGwvYnVmZmVyLnJzdA0KPiA+IEBAIC02OTYsNyAr
Njk2LDcgQEAgZW51bSB2NGwyX21lbW9yeQ0KPiA+DQo+ID4gIC4uIF9tZW1vcnktZmxhZ3M6DQo+
ID4NCj4gPiAtTWVtb3J5IENvbnNpc3RlbmN5IEZsYWdzDQo+ID4gK01lbW9yeSBGbGFncw0KPiA+
ICAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCj4gPg0KPiA+ICAuLiByYXc6OiBsYXRleA0KPiA+
IEBAIC03MjgsNiArNzI4LDEyIEBAIE1lbW9yeSBDb25zaXN0ZW5jeSBGbGFncw0KPiA+ICAgICAg
IG9ubHkgaWYgdGhlIGJ1ZmZlciBpcyB1c2VkIGZvciA6cmVmOmBtZW1vcnkgbWFwcGluZyA8bW1h
cD5gIEkvTyBhbmQgdGhlDQo+ID4gICAgICAgcXVldWUgcmVwb3J0cyB0aGUgOnJlZjpgVjRMMl9C
VUZfQ0FQX1NVUFBPUlRTX01NQVBfQ0FDSEVfSElOVFMNCj4gPiAgICAgICA8VjRMMi1CVUYtQ0FQ
LVNVUFBPUlRTLU1NQVAtQ0FDSEUtSElOVFM+YCBjYXBhYmlsaXR5Lg0KPiA+ICsgICAgKiAuLiBf
YFY0TDItTUVNT1JZLUZMQUctU0VDVVJFYDoNCj4gPiArDQo+ID4gKyAgICAgIC0gYGBWNEwyX01F
TU9SWV9GTEFHX1NFQ1VSRWBgDQo+ID4gKyAgICAgIC0gMHgwMDAwMDAwMg0KPiA+ICsgICAgICAt
IERNQSBidWZzIHBhc3NlZCBpbnRvIHRoZSBxdWV1ZSB3aWxsIGJlIHZhbGlkYXRlZCB0byBlbnN1
cmUgdGhleSB3ZXJlDQo+ID4gKyAgICAgYWxsb2NhdGVkIGZyb20gYSBzZWN1cmUgZG1hLWhlYXAu
DQo+DQo+IEhtbSwgdGhhdCBuZWVkcyBhIGJpdCBtb3JlIHdvcmsuIEhvdyBhYm91dDoNCj4NCj4g
LSBUaGUgcXVldWVkIGJ1ZmZlcnMgYXJlIGV4cGVjdGVkIHRvIGJlIGluIHNlY3VyZSBtZW1vcnku
IElmIG5vdCwgYW4gZXJyb3Igd2lsbCBiZQ0KPiAgIHJldHVybmVkLiBUaGlzIGZsYWcgY2FuIG9u
bHkgYmUgdXNlZCB3aXRoIGBgVjRMMl9NRU1PUllfRE1BQlVGYGAuIFR5cGljYWxseQ0KPiAgIHNl
Y3VyZSBidWZmZXJzIGFyZSBhbGxvY2F0ZWQgdXNpbmcgYSBzZWN1cmUgZG1hLWhlYXAuIFRoaXMg
ZmxhZyBjYW4gb25seSBiZQ0KPiAgIHNwZWNpZmllZCBpZiB0aGUgYGBWNEwyX0JVRl9DQVBfU1VQ
UE9SVFNfU0VDVVJFX01FTWBgIGlzIHNldC4NCj4NCg0KVGhhbmtzIEhhbnMuIFl1bmZlaSwgY2Fu
IHlvdSBpbnRlZ3JhdGUgdGhpcyBjaGFuZ2UgaW50byB0aGUgcGF0Y2ggcGxlYXNlPw0KDQo+IElu
IGFkZGl0aW9uLCB0aGUgdGl0bGUgb2YgdGhpcyB0YWJsZSBpcyBjdXJyZW50bHkgIk1lbW9yeSBD
b25zaXN0ZW5jeSBGbGFncyI6IHRoYXQNCj4gc2hvdWxkIGJlIHJlbmFtZWQgdG8gIk1lbW9yeSBG
bGFncyIuDQoNCkhhbnMsIHRoZSBwYXRjaCBpcyBhbHJlYWR5IHJlbmFtaW5nIHRoZSB0YWJsZSBh
cyB5b3Ugc3VnZ2VzdGVkLiA6KQ0KKHVubGVzcyB0aGVyZSdzIHNvbWUgb3RoZXIgc3BvdCBJJ20g
bWlzc2luZykNCj4NCj4gUmVnYXJkcywNCj4NCj4gICAgICAgICBIYW5zDQo+DQo+ID4NCj4gPiAg
Li4gcmF3OjogbGF0ZXgNCj4gPg0KPg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJv
LW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
