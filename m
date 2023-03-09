Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id F1E4D6BBAD8
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Mar 2023 18:27:02 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 018E73F527
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Mar 2023 17:27:02 +0000 (UTC)
Received: from mail.marcansoft.com (marcansoft.com [212.63.210.85])
	by lists.linaro.org (Postfix) with ESMTPS id 6D6033E8AB
	for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Mar 2023 06:04:24 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=asahilina.net header.s=default header.b=L26euRJ0;
	spf=pass (lists.linaro.org: domain of lina@asahilina.net designates 212.63.210.85 as permitted sender) smtp.mailfrom=lina@asahilina.net;
	dmarc=pass (policy=quarantine) header.from=asahilina.net
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: lina@asahilina.net)
	by mail.marcansoft.com (Postfix) with ESMTPSA id E42A342037;
	Thu,  9 Mar 2023 06:04:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=asahilina.net;
	s=default; t=1678341862;
	bh=yXH1tZdsDmO++xIlBpu0JLuAAbte1OW7AlybHK5hIBg=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=L26euRJ0eRSChLfBBV+IWoJpXejfXnHpxYL7EKKxQNfNY3MHWKaHrZ0sXQwYPrYjl
	 j0hAICH5fd0yIi9MUnBCGQJ2J/6Qbc2vaFXhPzja0rtJkPaOT0D6BVUaDh2KleQjJb
	 V9Q8BguecZBBMPvATXnO5AmpObEALYXxJDP4XlSvevTfXkmhlRxHWnw8QuunLcXUOm
	 YrZoEGe/la+xsrlvECQsvt7d+kil4hHLFigx8YmCEzkKb1Y6ouadywOXrPImwCCfU5
	 EkNVKQwuFJFHWt9UWr30hoU/WCszEJG2VRApZSuCsQz88fGHJUdoD9Yew/iCxUuDC7
	 BTptPp5MzKzeg==
Message-ID: <11ce9291-c17f-e73d-fb5d-13d5386fe6be@asahilina.net>
Date: Thu, 9 Mar 2023 15:04:13 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: =?UTF-8?Q?Bj=c3=b6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>
References: <20230307-rust-drm-v1-0-917ff5bc80a8@asahilina.net>
 <20230307-rust-drm-v1-1-917ff5bc80a8@asahilina.net>
 <D9Cyx-9kbjaeb8QVBFqapDyctoDdVyu5uXEJDR41sdXUDXM1VgdRicV5huJDwfC3-T2J-R_DYHH8JZ1_aRdgbeYZFT78J9QveeeYbiTq4yU=@protonmail.com>
From: Asahi Lina <lina@asahilina.net>
In-Reply-To: <D9Cyx-9kbjaeb8QVBFqapDyctoDdVyu5uXEJDR41sdXUDXM1VgdRicV5huJDwfC3-T2J-R_DYHH8JZ1_aRdgbeYZFT78J9QveeeYbiTq4yU=@protonmail.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 6D6033E8AB
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[asahilina.net,quarantine];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[asahilina.net:s=default];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_TWELVE(0.00)[28];
	FREEMAIL_TO(0.00)[protonmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_CC(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,garyguo.net,linaro.org,amd.com,rosenzweig.io,redhat.com,iglunix.org,collabora.com,mary.zone,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	ASN(0.00)[asn:30880, ipnet:212.63.192.0/19, country:SE];
	DKIM_TRACE(0.00)[asahilina.net:+];
	RCVD_TLS_ALL(0.00)[];
	ARC_NA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	URIBL_BLOCKED(0.00)[marcansoft.com:rdns,mail.marcansoft.com:helo,docs.rs:url,asahilina.net:dkim];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
X-MailFrom: lina@asahilina.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: ZFNL5LWUX4DKADQ7PBYKG5RKYMDLYOHK
X-Message-ID-Hash: ZFNL5LWUX4DKADQ7PBYKG5RKYMDLYOHK
X-Mailman-Approved-At: Wed, 15 Mar 2023 17:22:50 +0000
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>, Miguel Ojeda <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>, Wedson Almeida Filho <wedsonaf@gmail.com>, Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>, Luben Tuikov <luben.tuikov@amd.com>, Jarkko Sakkinen <jarkko@kernel.org>, Dave Hansen <dave.hansen@linux.intel.com>, Alyssa Rosenzweig <alyssa@rosenzweig.io>, Karol Herbst <kherbst@redhat.com>, Ella Stanforth <ella@iglunix.org>, Faith Ekstrand <faith.ekstrand@collabora.com>, Mary <mary@mary.zone>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-sgx@vger.kernel.org, asahi@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 01/18] rust: drm: ioctl: Add DRM ioctl abstraction
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZFNL5LWUX4DKADQ7PBYKG5RKYMDLYOHK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMDgvMDMvMjAyMyAwMi4zNCwgQmrDtnJuIFJveSBCYXJvbiB3cm90ZToNCj4+ICsgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgLy8gU0FGRVRZOiBUaGlzIGlzIGp1c3QgdGhlIGlvY3RsIGFy
Z3VtZW50LCB3aGljaCBob3BlZnVsbHkgaGFzIHRoZSByaWdodCB0eXBlDQo+PiArICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIC8vICh3ZSd2ZSBkb25lIG91ciBiZXN0IGNoZWNraW5nIHRoZSBz
aXplKS4NCj4gDQo+IEluIHRoZSBydXN0IHRyZWUgdGhlcmUgaXMgdGhlIFJlYWRhYmxlRnJvbUJ5
dGVzIFsxXSB0cmFpdCB3aGljaCBpbmRpY2F0ZXMgdGhhdCBpdCBpcyBzYWZlIHRvIHJlYWQgYXJi
aXRyYXJ5IGJ5dGVzIGludG8gdGhlIHR5cGUuIE1heWJlIHlvdSBjb3VsZCBhZGQgaXQgYXMgYm91
bmQgb24gdGhlIGFyZ3VtZW50IHR5cGUgd2hlbiBpdCBsYW5kcyBpbiBydXN0LW5leHQ/IFRoaXMg
d2F5IHlvdSBjYW4ndCBlbmQgdXAgd2l0aCBmb3IgZXhhbXBsZSBhIHN0cnVjdCBjb250YWluaW5n
IGEgYm9vbCB3aXRoIHRoZSBieXRlIHZhbHVlIDIsIHdoaWNoIGlzIFVCLg0KDQpUaGVyZSdzIGFj
dHVhbGx5IGEgbXVjaCBiaWdnZXIgc3RvcnkgaGVyZSwgYmVjYXVzZSB0aGF0IHRyYWl0IGlzbid0
DQpyZWFsbHkgdmVyeSB1c2VmdWwgd2l0aG91dCBhIHdheSB0byBhdXRvLWRlcml2ZSBpdC4gSSBu
ZWVkIHRoZSBzYW1lIGtpbmQNCm9mIGd1YXJhbnRlZSBmb3IgYWxsIHRoZSBHUFUgZmlybXdhcmUg
c3RydWN0cy4uLg0KDQpUaGVyZSdzIG9uZSB1c2luZyBvbmx5IGRlY2xhcmF0aXZlIG1hY3JvcyBb
MV0gYW5kIG9uZSB1c2luZyBwcm9jIG1hY3Jvcw0KWzJdLiBBbmQgdGhlbiwgc2luY2UgaW9jdGwg
YXJndW1lbnRzIGFyZSBkZWNsYXJlZCBpbiBDIFVBUEkgaGVhZGVyDQpmaWxlcywgd2UgbmVlZCBh
IHdheSB0byBiZSBhYmxlIHRvIGRlcml2ZSB0aG9zZSB0cmFpdHMgZm9yIHRoZW0uLi4gd2hpY2gN
CkkgZ3Vlc3MgbWVhbnMgYmluZGdlbiBjaGFuZ2VzPw0KDQpGb3Igbm93IHRob3VnaCwgSSBkb24n
dCB0aGluayB0aGlzIGlzIHNvbWV0aGluZyB3ZSBuZWVkIHRvIHdvcnJ5IGFib3V0DQp0b28gbXVj
aCBmb3IgdGhpcyBwYXJ0aWN1bGFyIHVzZSBjYXNlIGJlY2F1c2UgdGhlIG1hY3JvIGZvcmNlcyBh
bGwNCnN0cnVjdCB0eXBlcyB0byBiZSBwYXJ0IG9mIGBiaW5kaW5nc2AsIGFuZCBhbnkgZHJpdmVy
IFVBUEkgc2hvdWxkDQphbHJlYWR5IGZvbGxvdyB0aGVzZSBjb25zdHJhaW50cyBpZiBpdCBpcyB3
ZWxsLWZvcm1lZCAoYW5kIFVBUElzIGFyZQ0KZ29pbmcgdG8gYWxyZWFkeSBhdHRyYWN0IGEgbG90
IG9mIHNjcnV0aW55IGFueXdheSkuIFRlY2huaWNhbGx5IHlvdQ0KY291bGQgdHJ5IHRha2luZyBh
IHJhbmRvbSBrZXJuZWwgc3RydWN0IGNvbnRhaW5pbmcgYSBgYm9vbGAgaW4gYW4gaW9jdGwNCmxp
c3QsIGJ1dCB0aGF0IHdvdWxkIHN0YW5kIG91dCBhcyBub25zZW5zZSBqdXN0IGFzIG11Y2ggYXMg
dHJ5aW5nIHRvDQp1bnNhZmUgaW1wbCBSZWFkYWJsZUZyb21CeXRlcyBmb3IgaXQgc28uLi4gaXQn
cyBraW5kIG9mIGFuIGFjYWRlbWljDQpwcm9ibGVtIF5eDQoNCkFjdHVhbGx5LCBJIHRoaW5rIHdl
IHRhbGtlZCBvZiBtb3ZpbmcgVUFQSSB0eXBlcyB0byBhIHNlcGFyYXRlIGNyYXRlIChzbw0KZHJp
dmVycyBjYW4gZ2V0IGFjY2VzcyB0byB0aG9zZSB0eXBlcyBhbmQgb25seSB0aG9zZSB0eXBlcywg
bm90IHRoZSBtYWluDQpiaW5kaW5ncyBjcmF0ZSkuIFRoZW4gbWF5YmUgd2UgY291bGQganVzdCBz
YXkgdGhhdCBpZiB0aGUgbWFjcm8gZm9yY2VzDQp0aGUgdHlwZSB0byBiZSBmcm9tIHRoYXQgY3Jh
dGUsIGl0J3MgaW5oZXJlbnRseSBzYWZlIHNpbmNlIGFsbCBVQVBJcw0Kc2hvdWxkIGFscmVhZHkg
YmUgY2FzdGFibGUgdG8vZnJvbSBieXRlcyBpZiBwcm9wZXJseSBkZXNpZ25lZC4NCg0KQXNpZGU6
IEknbSBub3Qgc3VyZSB0aGUgUmVhZGFibGVGcm9tQnl0ZXMvV3JpdGFibGVUb0J5dGVzIGRpc3Rp
bmN0aW9uIGlzDQp2ZXJ5IHVzZWZ1bC4gSSBrbm93IGl0IGV4aXN0cyAocGFkZGluZyBieXRlcywg
dW5pbml0IGZpZWxkcywgYW5kDQp0ZWNobmljYWxseSBib29sIHNob3VsZCBiZSBXcml0YWJsZVRv
Qnl0ZXMgYnV0IG5vdCBSZWFkYWJsZUZyb21CeXRlcyksDQpidXQgSSBjYW4ndCB0aGluayBvZiBh
IGdvb2QgdXNlIGNhc2UgZm9yIGl0Li4uIEkgdGhpbmsgSSdkIHJhdGhlciBzdGFydA0Kd2l0aCBh
IHNpbmdsZSB0cmFpdCBhbmQganVzdCBhbHdheXMgZW5mb3JjZSB0aGUgdW5pb24gb2YgdGhlIHJ1
bGVzLA0KYmVjYXVzZSBwcmV0dHkgbXVjaCBhbnkgdGltZSB5b3UncmUgY2FzdGluZyB0by9mcm9t
IGJ5dGVzIHlvdSB3YW50DQp3ZWxsLWRlZmluZWQgImJhZyBvZiBieXRlcyIgc3RydWN0IGxheW91
dHMgYW55d2F5LiBpb2N0bHMgY2FuIGJlIFIvVy9SVw0Kc28gaGF2aW5nIHNlcGFyYXRlIHRyYWl0
cyBkZXBlbmRpbmcgb24gaW9jdGwgdHlwZSBjb21wbGljYXRlcyB0aGUgY29kZS4uLg0KDQpbMV0N
Cmh0dHBzOi8vZ2l0aHViLmNvbS9RdWJlc09TL3F1YmVzLWd1aS1ydXN0L2Jsb2IvOTQwNzU0YmZl
ZmI3MzI1NTQ4ZWVjZTY1OGMzMDdhMGM0MWM5YmM3Yy9xdWJlcy1jYXN0YWJsZS9zcmMvbGliLnJz
DQpbMl0gaHR0cHM6Ly9kb2NzLnJzL3BrYnVmZmVyL2xhdGVzdC9wa2J1ZmZlci9kZXJpdmUuQ2Fz
dGFibGUuaHRtbA0KDQo+IA0KPiBodHRwczovL3J1c3QtZm9yLWxpbnV4LmdpdGh1Yi5pby9kb2Nz
L2tlcm5lbC9pb19idWZmZXIvdHJhaXQuUmVhZGFibGVGcm9tQnl0ZXMuaHRtbCBbMV0NCj4gDQoN
Cn5+IExpbmENCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJv
Lm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVA
bGlzdHMubGluYXJvLm9yZwo=
