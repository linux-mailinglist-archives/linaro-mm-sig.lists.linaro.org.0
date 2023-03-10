Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 043F16BBAEC
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Mar 2023 18:31:58 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 136273F0AC
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Mar 2023 17:31:57 +0000 (UTC)
Received: from mail.marcansoft.com (marcansoft.com [212.63.210.85])
	by lists.linaro.org (Postfix) with ESMTPS id 75F003E8AB
	for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Mar 2023 06:21:30 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=asahilina.net header.s=default header.b=R8QzFV6o;
	spf=pass (lists.linaro.org: domain of lina@asahilina.net designates 212.63.210.85 as permitted sender) smtp.mailfrom=lina@asahilina.net;
	dmarc=pass (policy=quarantine) header.from=asahilina.net
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: lina@asahilina.net)
	by mail.marcansoft.com (Postfix) with ESMTPSA id 9B5B74249A;
	Fri, 10 Mar 2023 06:21:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=asahilina.net;
	s=default; t=1678429288;
	bh=Su293xjC7HJqrmGn5asY9TEfKOlU5jJ/KKsqfzIhcss=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=R8QzFV6o2vdGKfZFYwqrGUzUpvt8V7mpifvkivq1CdeGZ81gA6szdX2TQLPZg1Vis
	 ZUOnngxZUqRjp4CnEs/t36DNw2yaJ2YA34h0XwBMVKpx/9VfRrsFj3/zWM/9bnSZ4H
	 XAMA8AE6bhaTutEre8t+wC8UJWNuMceDib/bF8LxFY4yjzQXZLl/3LgFi03CLOyyaJ
	 4PyYU9fuNnkvWgswLo5icJqYJj/izs+JCuco33/A71lxWqAXX5z9VLtuFKa+ZcEZgH
	 tNW+/koH3ycaNXbShllRhrmoNIQQGA33VS2nh34xCXGQBNMbzbd+m11IWKd6CL/kRl
	 yQvngLiAhJMhA==
Message-ID: <b61d0b3e-fc10-be79-1b37-6c7aa278d75f@asahilina.net>
Date: Fri, 10 Mar 2023 15:21:19 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: Karol Herbst <kherbst@redhat.com>,
 Faith Ekstrand <faith.ekstrand@collabora.com>
References: <20230307-rust-drm-v1-0-917ff5bc80a8@asahilina.net>
 <20230307-rust-drm-v1-1-917ff5bc80a8@asahilina.net>
 <D9Cyx-9kbjaeb8QVBFqapDyctoDdVyu5uXEJDR41sdXUDXM1VgdRicV5huJDwfC3-T2J-R_DYHH8JZ1_aRdgbeYZFT78J9QveeeYbiTq4yU=@protonmail.com>
 <11ce9291-c17f-e73d-fb5d-13d5386fe6be@asahilina.net>
 <c9e0c6fdcd642192a59a2fea95941a773ea7b3e3.camel@collabora.com>
 <CACO55tukF-+HWUHve0YUPbq4jPFgU3szuedKLjAw55h_3uX5gg@mail.gmail.com>
From: Asahi Lina <lina@asahilina.net>
In-Reply-To: <CACO55tukF-+HWUHve0YUPbq4jPFgU3szuedKLjAw55h_3uX5gg@mail.gmail.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 75F003E8AB
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[asahilina.net,quarantine];
	RCVD_IN_DNSWL_HI(-0.50)[212.63.210.85:from];
	R_DKIM_ALLOW(-0.20)[asahilina.net:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_CC(0.00)[protonmail.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,garyguo.net,linaro.org,amd.com,rosenzweig.io,iglunix.org,mary.zone,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	NEURAL_HAM(-0.00)[-1.000];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[28];
	ASN(0.00)[asn:30880, ipnet:212.63.192.0/19, country:SE];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	URIBL_BLOCKED(0.00)[collabora.com:email];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[asahilina.net:+];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
X-MailFrom: lina@asahilina.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: OECLKNWERW57M5MBA6RMCXOERKNMNWW4
X-Message-ID-Hash: OECLKNWERW57M5MBA6RMCXOERKNMNWW4
X-Mailman-Approved-At: Wed, 15 Mar 2023 17:24:31 +0000
CC: =?UTF-8?Q?Bj=c3=b6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>, Miguel Ojeda <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>, Wedson Almeida Filho <wedsonaf@gmail.com>, Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>, Luben Tuikov <luben.tuikov@amd.com>, Jarkko Sakkinen <jarkko@kernel.org>, Dave Hansen <dave.hansen@linux.intel.com>, Alyssa Rosenzweig <alyssa@rosenzweig.io>, Ella Stanforth <ella@iglunix.org>, Mary <mary@mary.zone>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-sgx@vger.kernel.org, asahi@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 01/18] rust: drm: ioctl: Add DRM ioctl abstraction
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OECLKNWERW57M5MBA6RMCXOERKNMNWW4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTAvMDMvMjAyMyAwNS4zOSwgS2Fyb2wgSGVyYnN0IHdyb3RlOg0KPiBPbiBUaHUsIE1hciA5
LCAyMDIzIGF0IDk6MjTigK9QTSBGYWl0aCBFa3N0cmFuZA0KPiA8ZmFpdGguZWtzdHJhbmRAY29s
bGFib3JhLmNvbT4gd3JvdGU6DQo+Pg0KPj4gT24gVGh1LCAyMDIzLTAzLTA5IGF0IDE1OjA0ICsw
OTAwLCBBc2FoaSBMaW5hIHdyb3RlOg0KPj4+IE9uIDA4LzAzLzIwMjMgMDIuMzQsIEJqw7ZybiBS
b3kgQmFyb24gd3JvdGU6DQo+Pj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgIC8vIFNB
RkVUWTogVGhpcyBpcyBqdXN0IHRoZSBpb2N0bA0KPj4+Pj4gYXJndW1lbnQsIHdoaWNoIGhvcGVm
dWxseSBoYXMgdGhlIHJpZ2h0IHR5cGUNCj4+Pj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgLy8gKHdlJ3ZlIGRvbmUgb3VyIGJlc3QgY2hlY2tpbmcgdGhlDQo+Pj4+PiBzaXplKS4NCj4+
Pj4NCj4+Pj4gSW4gdGhlIHJ1c3QgdHJlZSB0aGVyZSBpcyB0aGUgUmVhZGFibGVGcm9tQnl0ZXMg
WzFdIHRyYWl0IHdoaWNoDQo+Pj4+IGluZGljYXRlcyB0aGF0IGl0IGlzIHNhZmUgdG8gcmVhZCBh
cmJpdHJhcnkgYnl0ZXMgaW50byB0aGUgdHlwZS4NCj4+Pj4gTWF5YmUgeW91IGNvdWxkIGFkZCBp
dCBhcyBib3VuZCBvbiB0aGUgYXJndW1lbnQgdHlwZSB3aGVuIGl0IGxhbmRzDQo+Pj4+IGluIHJ1
c3QtbmV4dD8gVGhpcyB3YXkgeW91IGNhbid0IGVuZCB1cCB3aXRoIGZvciBleGFtcGxlIGEgc3Ry
dWN0DQo+Pj4+IGNvbnRhaW5pbmcgYSBib29sIHdpdGggdGhlIGJ5dGUgdmFsdWUgMiwgd2hpY2gg
aXMgVUIuDQo+Pj4NCj4+PiBUaGVyZSdzIGFjdHVhbGx5IGEgbXVjaCBiaWdnZXIgc3RvcnkgaGVy
ZSwgYmVjYXVzZSB0aGF0IHRyYWl0IGlzbid0DQo+Pj4gcmVhbGx5IHZlcnkgdXNlZnVsIHdpdGhv
dXQgYSB3YXkgdG8gYXV0by1kZXJpdmUgaXQuIEkgbmVlZCB0aGUgc2FtZQ0KPj4+IGtpbmQNCj4+
PiBvZiBndWFyYW50ZWUgZm9yIGFsbCB0aGUgR1BVIGZpcm13YXJlIHN0cnVjdHMuLi4NCj4+Pg0K
Pj4+IFRoZXJlJ3Mgb25lIHVzaW5nIG9ubHkgZGVjbGFyYXRpdmUgbWFjcm9zIFsxXSBhbmQgb25l
IHVzaW5nIHByb2MNCj4+PiBtYWNyb3MNCj4+PiBbMl0uIEFuZCB0aGVuLCBzaW5jZSBpb2N0bCBh
cmd1bWVudHMgYXJlIGRlY2xhcmVkIGluIEMgVUFQSSBoZWFkZXINCj4+PiBmaWxlcywgd2UgbmVl
ZCBhIHdheSB0byBiZSBhYmxlIHRvIGRlcml2ZSB0aG9zZSB0cmFpdHMgZm9yIHRoZW0uLi4NCj4+
PiB3aGljaA0KPj4+IEkgZ3Vlc3MgbWVhbnMgYmluZGdlbiBjaGFuZ2VzPw0KPj4NCj4+IEl0J2Qg
YmUgY29vbCB0byBiZSBhYmxlIHRvIGF1dG8tdmVyaWZ5IHRoYXQgdUFQSSBzdHJ1Y3RzIGFyZSBh
bGwNCj4+IHRpZ2h0bHkgcGFja2VkIGFuZCB1c2UgdGhlIHJpZ2h0IHN1YnNldCBvZiB0eXBlcy4g
IE1heWJlIG5vdCBwb3NzaWJsZQ0KPj4gdGhpcyBpdGVyYXRpb24gYnV0IGl0J2QgYmUgY29vbCB0
byBzZWUgaW4gZnV0dXJlLiAgSSdkIGxpa2UgdG8gc2VlIGl0DQo+PiBmb3IgQyBhcyB3ZWxsLCBp
ZGVhbGx5Lg0KPj4NCj4+IH5GYWl0aA0KPj4NCj4gDQo+IEknbSBzdXJlIHRoYXQgd2l0aCBhIG1h
Y3JvIHlvdSBjb3VsZCB2ZXJpZnkgdGhhdCBhIHN0cnVjdCBkZWZpbml0aW9uDQo+IGRvZXNuJ3Qg
Y29udGFpbiBhbnkgZ2FwcywganVzdCBub3Qgc3VyZSBvbiBob3cgb25lIHdvdWxkIGVuZm9yY2Ug
dGhhdC4NCj4gQ291bGQgYWRkIGEgdHJhaXQgd2hpY2ggY2FuIG9ubHkgYmUgaW1wbGVtZW50ZWQg
dGhyb3VnaCBhIHByb2NfbWFjcm8/DQo+IE1heWJlIHdlIGNhbiBoYXZlIGEgcHJvY19tYWNybyBl
bnN1cmluZyBubyBnYXBzPyBXb3VsZCBiZSBjb29sIHRlY2ggdG8NCj4gaGF2ZSBpbmRlZWQuDQoN
CllvdSBqdXN0IG1ha2UgdGhlIHRyYWl0IHVuc2FmZSwgYXMgdXN1YWwsIHRoZW4gaW1wbGVtZW50
IGl0IHZpYSB0aGF0DQptYWNyby4gSXQncyBob3cgdGhlIHRoaW5ncyBJIGxpbmtlZCB3b3JrIF5e
DQoNClRoZSB0cmlja3kgdGhpbmcgd2l0aCBDIFVBUEkgZGVmaW5pdGlvbnMgaXMganVzdCB0aGF0
IHdlIG5lZWQgdG8gZ2V0DQpiaW5kZ2VuIHRvIGVtaXQgdGhvc2UgbWFjcm8gaW5zdGFudGlhdGlv
bnMgYXJvdW5kIHN0cnVjdCBkZWZpbml0aW9ucw0Kc29tZWhvdy4gT3IgbWF5YmUgaXQgY291bGQg
YmUgZG9uZSB3aXRoIGEgYnJ1dGUgZm9yY2UgdGV4dC1iYXNlZA0KcG9zdHByb2Nlc3NpbmcgcGFz
cz8gSWYgd2UgcHV0IGFsbCBVQVBJIGRlZnMgaW50byB0aGVpciBvd24gY3JhdGUsIHlvdQ0KY291
bGQgcHJvYmFibHkganVzdCBkbyBpdCB3aXRoIHNlZCBvciBhIHB5dGhvbiBzY3JpcHQgb3Igc29t
ZXRoaW5nIG9uDQp0aGUgYmluZGdlbiBvdXRwdXQgdG8gYWRkIGl0IGZvciBhbGwgc3RydWN0IHR5
cGVzLi4uDQoNCkBSdXN0IGZvbGtzOiBTaG91bGQgSSB0cnkgY3JlYXRpbmcgYSB1YXBpIGNyYXRl
IGZvciB0aGlzPyBJIHRoaW5rIHdlIGNhbg0KanVzdCBtaXJyb3IgdGhlIGJpbmRpbmdzIGNyYXRl
IGxvZ2ljLCBhbmQgd2UgZG9uJ3QgbmVlZCBoZWxwZXJzIG9yDQphbnl0aGluZyBsaWtlIHRoYXQg
aGVyZSwgc28gaXQgc2hvdWxkbid0IGJlIHZlcnkgZGlmZmljdWx0LiBUaGVuIEkgY291bGQNCihl
dmVudHVhbGx5KSBlbGltaW5hdGUgYWxsIHVzYWdlIG9mIHRoZSBmdWxsIGJpbmRpbmdzIGNyYXRl
IGluIHRoZQ0KZHJpdmVyLCBhbmQgYWxzbyB0cnkgZXhwZXJpbWVudGluZyB3aXRoIHN0dWZmIGxp
a2UgdGhpcyB0byB2YWxpZGF0ZSBhbGwNClVBUEkgdHlwZXMgYW5kIGltcGxlbWVudCBzcGVjaWFs
IHRyYWl0cyBmb3IgdGhlbS4uLg0KDQp+fiBMaW5hDQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5h
cm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0
byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
