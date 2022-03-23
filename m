Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B0BCD4EBFB2
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Mar 2022 13:20:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BEA003EC2C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Mar 2022 11:20:07 +0000 (UTC)
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.220.29])
	by lists.linaro.org (Postfix) with ESMTPS id 4240F3EE36
	for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Mar 2022 10:40:23 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id 41AF11F37F;
	Wed, 23 Mar 2022 10:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=susede1;
	t=1648032022; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=v5NU/C6p8WEkJ19dl/vKk9SKF9BYMvL6KkJEgBFkRyA=;
	b=RLnV6fiKONXomeCaf7Ul3bMdB8J9ZnoYiQHMukkB3srT4RUf8bFcSLnKzUf+zJWROTJSUe
	Pl2lZGRWXDyr4H6snqXhYysgPcYpop4hSOcwif0tfFhCS180ZIq1pEcabOz0mDgCEyq4gS
	buDZQLypgb5oPEw7PaQ3SKEf0whZcJw=
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 7184013B9C;
	Wed, 23 Mar 2022 10:40:21 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
	by imap2.suse-dmz.suse.de with ESMTPSA
	id Ilx3GhX5OmLaTgAAMHmgww
	(envelope-from <mkoutny@suse.com>); Wed, 23 Mar 2022 10:40:21 +0000
Date: Wed, 23 Mar 2022 11:40:20 +0100
From: Michal =?iso-8859-1?Q?Koutn=FD?= <mkoutny@suse.com>
To: "T.J. Mercier" <tjmercier@google.com>
Message-ID: <20220323104020.GI8477@blackbody.suse.cz>
References: <20220309165222.2843651-1-tjmercier@google.com>
 <20220309165222.2843651-2-tjmercier@google.com>
 <20220321173726.GA9640@blackbody.suse.cz>
 <CABdmKX10jqubJr49JENaHpFnqHV88+Fb7iNZNH4T1Cy7n9y=ag@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABdmKX10jqubJr49JENaHpFnqHV88+Fb7iNZNH4T1Cy7n9y=ag@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-MailFrom: mkoutny@suse.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: JNW5ERRXGF2B4AELA6W5K4VMNILTNLPP
X-Message-ID-Hash: JNW5ERRXGF2B4AELA6W5K4VMNILTNLPP
X-Mailman-Approved-At: Wed, 30 Mar 2022 11:20:04 +0000
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>, Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>, Joel Fernandes <joel@joelfernandes.org>, Christian Brauner <brauner@kernel.org>, Hridya Valsaraju <hridya@google.com>, Suren Baghdasaryan <surenb@google.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Benjamin Gaignard <benjamin.gaignard@linaro.org>, Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <john.stultz@linaro.org>, Tejun Heo <tj@kernel.org>, Zefan Li <lizefan.x@bytedance.com>, Johannes Weiner <hannes@cmpxchg.org>, Shuah Khan <shuah@kernel.org>, Kalesh Singh <kaleshsingh@google.com>, Ken
 ny.Ho@amd.com, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, cgroups@vger.kernel.org, linux-kselftest@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v3 1/8] gpu: rfc: Proposal for a GPU cgroup controller
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JNW5ERRXGF2B4AELA6W5K4VMNILTNLPP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBNYXIgMjIsIDIwMjIgYXQgMDg6NDE6NTVBTSAtMDcwMCwgIlQuSi4gTWVyY2llciIg
PHRqbWVyY2llckBnb29nbGUuY29tPiB3cm90ZToNCj4gU28gInRvdGFsIiBpcyB1c2VkIHR3aWNl
IGhlcmUgaW4gdHdvIGRpZmZlcmVudCBjb250ZXh0cy4NCj4gVGhlIGZpcnN0IG9uZSBpcyB0aGUg
Z2xvYmFsICJHUFUiIGNncm91cCBjb250ZXh0LiBBcyBpbiBhbnkgYnVmZmVyDQo+IHRoYXQgYW55
IGV4cG9ydGVyIGNsYWltcyBpcyBhIEdQVSBidWZmZXIsIHJlZ2FyZGxlc3Mgb2Ygd2hlcmUvaG93
IGl0DQo+IGlzIGFsbG9jYXRlZC4gU28gdGhpcyByZWZlcnMgdG8gdGhlIHN1bSBvZiBhbGwgZ3B1
IGJ1ZmZlcnMgb2YgYW55DQo+IHR5cGUvc291cmNlLiBBbiBleHBvcnRlciBjb250cmlidXRlcyB0
byB0aGlzIHRvdGFsIGJ5IHJlZ2lzdGVyaW5nIGENCj4gY29ycmVzcG9uZGluZyBncHVjZ19kZXZp
Y2UgYW5kIG1ha2luZyBjaGFyZ2VzIGFnYWluc3QgdGhhdCBkZXZpY2Ugd2hlbg0KPiBpdCBleHBv
cnRzLg0KPiBUaGUgc2Vjb25kIG9uZSBpcyBpbiBhIHBlciBkZXZpY2UgY29udGV4dC4gVGhpcyBh
bGxvd3MgdXMgdG8gbWFrZSBhDQo+IGRpc3RpbmN0aW9uIGJldHdlZW4gZGlmZmVyZW50IHR5cGVz
IG9mIEdQVSBtZW1vcnkgYmFzZWQgb24gd2hvDQo+IGV4cG9ydGVkIHRoZSBidWZmZXIuIEEgc2lu
Z2xlIHByb2Nlc3MgY2FuIG1ha2UgdXNlIG9mIHNldmVyYWwNCj4gZGlmZmVyZW50IHR5cGVzIG9m
IGRtYSBidWZmZXJzIChmb3IgZXhhbXBsZSBjYWNoZWQgYW5kIHVuY2FjaGVkDQo+IHZlcnNpb25z
IG9mIHRoZSBzYW1lIHR5cGUgb2YgbWVtb3J5KSwgYW5kIGl0IHdvdWxkIGJlIHVzZWZ1bCB0byBo
YXZlDQo+IGRpZmZlcmVudCBsaW1pdHMgZm9yIGVhY2guIFRoZXNlIGFyZSBkaXN0aW5ndWlzaGVk
IGJ5IHRoZSBkZXZpY2UgbmFtZQ0KPiBzdHJpbmcgY2hvc2VuIHdoZW4gdGhlIGdwdWNnX2Rldmlj
ZSBpcyBmaXJzdCByZWdpc3RlcmVkLg0KDQpTbyBpcyB0aGlzIHVuZGVyc3RhbmRpbmcgY29ycmVj
dD8NCg0KKGlmIHRoZXJlIHdhcyBhbiBhbmFsb2dvdXMgbGluZSBpbiBncHUubWVtb3J5LmN1cnJl
bnQgdG8gZ3B1Lm1lbW9yeS5tYXgpDQoJJCBjYXQgZ3B1Lm1lbW9yeS5jdXJyZW50DQoJdG90YWwg
VA0KCWRldjEgIGQxDQoJLi4uDQoJZGV2TiAgZG4NCg0KVCA9IM6jIGRpICsgUkFNX2JhY2tlZF9i
dWZmZXJzDQoNCmFuZCB0aGF0IHNvbWUgb2YgUkFNX2JhY2tlZF9idWZmZXJzIG1heSBiZSBhY2Nv
dW50ZWQgYWxzbyBpbg0KbWVtb3J5LmN1cnJlbnQgKGNhc2UgYnkgY2FzZSwgZGVwZW5kaW5nIG9u
IGFsbG9jYXRvcikuDQoNClRoYW5rcywNCk1pY2hhbA0KDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBs
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
