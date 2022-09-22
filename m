Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 43C05604DD8
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Oct 2022 18:54:18 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4E8D73F080
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Oct 2022 16:54:17 +0000 (UTC)
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.220.29])
	by lists.linaro.org (Postfix) with ESMTPS id 5FE183F508
	for <linaro-mm-sig@lists.linaro.org>; Thu, 22 Sep 2022 21:05:49 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id 4788F1F8BD;
	Thu, 22 Sep 2022 21:05:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
	t=1663880748; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=XKo+i59z16xYCKZljHHhrwZOK4kULyS2cn+2CLRfUM0=;
	b=yYZqXMGxzMVH0hLKeYU8DtcEW5z+72E8D8wluVkMB38JNQ6mVtvWYW44sf9Qr+ZQm+We5X
	ZxoqRMYTP+O1T/rNawICmYwKgqmViLi4WF8AuUeX1BOp9TwGPEwvLg1O9HhwZMa65TkR9W
	yGHcw9EwWtJmQERB8NRzG2kYdmwST+U=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
	s=susede2_ed25519; t=1663880748;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=XKo+i59z16xYCKZljHHhrwZOK4kULyS2cn+2CLRfUM0=;
	b=kaD9JOgsDV+IpQlfyoPslHKu+574Yw//haDJvp79fZBtXqIgPNRCscY2PniCUaAEZMnwWD
	sPWSH1zmuGYRGABQ==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id B86DF1346B;
	Thu, 22 Sep 2022 21:05:47 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
	by imap2.suse-dmz.suse.de with ESMTPSA
	id QI4BLCvOLGP2JwAAMHmgww
	(envelope-from <vbabka@suse.cz>); Thu, 22 Sep 2022 21:05:47 +0000
Message-ID: <cb38655c-2107-bda6-2fa8-f5e1e97eab14@suse.cz>
Date: Thu, 22 Sep 2022 23:05:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: Kees Cook <keescook@chromium.org>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
References: <20220922031013.2150682-1-keescook@chromium.org>
 <673e425d-1692-ef47-052b-0ff2de0d9c1d@amd.com>
 <202209220845.2F7A050@keescook>
From: Vlastimil Babka <vbabka@suse.cz>
In-Reply-To: <202209220845.2F7A050@keescook>
X-MailFrom: vbabka@suse.cz
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: F54BN3DJXYDTQ2KJM2RXXHC7N3T6WBKV
X-Message-ID-Hash: F54BN3DJXYDTQ2KJM2RXXHC7N3T6WBKV
X-Mailman-Approved-At: Wed, 19 Oct 2022 16:52:45 +0000
CC: Pekka Enberg <penberg@kernel.org>, Feng Tang <feng.tang@intel.com>, David Rientjes <rientjes@google.com>, Joonsoo Kim <iamjoonsoo.kim@lge.com>, Andrew Morton <akpm@linux-foundation.org>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Nick Desaulniers <ndesaulniers@google.com>, Alex Elder <elder@kernel.org>, Josef Bacik <josef@toxicpanda.com>, David Sterba <dsterba@suse.com>, Sumit Semwal <sumit.semwal@linaro.org>, Jesse Brandeburg <jesse.brandeburg@intel.com>, Daniel Micay <danielmicay@gmail.com>, Yonghong Song <yhs@fb.com>, Marco Elver <elver@google.com>, Miguel Ojeda <ojeda@kernel.org>, linux-kernel@vger.kernel.org, linux-mm@kvack.org, netdev@vger.kernel.org, linux-btrfs@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-fsdevel@vger.kernel.org, intel-wired-lan@lists.os
 uosl.org, dev@openvswitch.org, x86@kernel.org, linux-wireless@vger.kernel.org, llvm@lists.linux.dev, linux-hardening@vger.kernel.org, Hyeonggon Yoo <42.hyeyoo@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 00/12] slab: Introduce kmalloc_size_roundup()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/F54BN3DJXYDTQ2KJM2RXXHC7N3T6WBKV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gOS8yMi8yMiAxNzo1NSwgS2VlcyBDb29rIHdyb3RlOg0KPiBPbiBUaHUsIFNlcCAyMiwgMjAy
MiBhdCAwOToxMDo1NkFNICswMjAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4gQW0gMjIu
MDkuMjIgdW0gMDU6MTAgc2NocmllYiBLZWVzIENvb2s6DQo+PiA+IEhpLA0KPj4gPiANCj4+ID4g
VGhpcyBzZXJpZXMgZml4ZXMgdXAgdGhlIGNhc2VzIHdoZXJlIGNhbGxlcnMgb2Yga3NpemUoKSB1
c2UgaXQgdG8NCj4+ID4gb3Bwb3J0dW5pc3RpY2FsbHkgZ3JvdyB0aGVpciBidWZmZXIgc2l6ZXMs
IHdoaWNoIGNhbiBydW4gYWZvdWwgb2YgdGhlDQo+PiA+IF9fYWxsb2Nfc2l6ZSBoaW50aW5nIHRo
YXQgQ09ORklHX1VCU0FOX0JPVU5EUyBhbmQgQ09ORklHX0ZPUlRJRllfU09VUkNFDQo+PiA+IHVz
ZSB0byBwZXJmb3JtIGR5bmFtaWMgYnVmZmVyIGJvdW5kcyBjaGVja2luZy4NCj4+IA0KPj4gR29v
ZCBjbGVhbnVwLCBidXQgb25lIHF1ZXN0aW9uOiBXaGF0IG90aGVyIHVzZSBjYXNlcyB3ZSBoYXZl
IGZvciBrc2l6ZSgpDQo+PiBleGNlcHQgdGhlIG9wcG9ydHVuaXN0aWNhbGx5IGdyb3d0aCBvZiBi
dWZmZXJzPw0KPiANCj4gVGhlIHJlbWFpbmluZyBjYXNlcyBhbGwgc2VlbSB0byBiZSB1c2luZyBp
dCBhcyBhICJkbyB3ZSBuZWVkIHRvIHJlc2l6ZQ0KPiB5ZXQ/IiBjaGVjaywgd2hlcmUgdGhleSBk
b24ndCBhY3R1YWxseSB0cmFjayB0aGUgYWxsb2NhdGlvbiBzaXplDQo+IHRoZW1zZWx2ZXMgYW5k
IHdhbnQgdG8ganVzdCBkZXBlbmQgb24gdGhlIHNsYWIgY2FjaGUgdG8gYW5zd2VyIGl0LiBUaGlz
DQo+IGlzIG1vc3QgY2xlYXJseSBzZWVuIGluIHRoZSBpZ3AgY29kZToNCj4gaHR0cHM6Ly9naXQu
a2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdG9ydmFsZHMvbGludXguZ2l0L3Ry
ZWUvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdiL2lnYl9tYWluLmM/aD12Ni4wLXJjNiNu
MTIwNA0KPiANCj4gTXkgInNvbHV0aW9uIiB0aGVyZSBraW5kIG9mIHNpZGUtc3RlcHMgaXQsIGFu
ZCBsZWF2ZXMga3NpemUoKSBhcy1pczoNCj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgt
aGFyZGVuaW5nLzIwMjIwOTIyMDMxMDEzLjIxNTA2ODItOC1rZWVzY29va0BjaHJvbWl1bS5vcmcv
DQo+IA0KPiBUaGUgbW9yZSBjb3JyZWN0IHNvbHV0aW9uIHdvdWxkIGJlIHRvIGFkZCBwZXItdl9p
ZHggc2l6ZSB0cmFja2luZywNCj4gc2ltaWxhciB0byB0aGUgb3RoZXIgY2hhbmdlcyBJIHNlbnQ6
DQo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LWhhcmRlbmluZy8yMDIyMDkyMjAzMTAx
My4yMTUwNjgyLTExLWtlZXNjb29rQGNocm9taXVtLm9yZy8NCj4gDQo+IEkgd29uZGVyIGlmIHBl
cmhhcHMgSSBzaG91bGQganVzdCBtaWdyYXRlIHNvbWUgb2YgdGhpcyBjb2RlIHRvIHVzaW5nDQo+
IHNvbWV0aGluZyBsaWtlIHN0cnVjdCBtZW1idWYuDQo+IA0KPj4gT2ZmIGhhbmQgSSBjYW4ndCBz
ZWUgYW55Lg0KPj4gDQo+PiBTbyB3aGVuIHRoaXMgcGF0Y2ggc2V0IGlzIGFib3V0IHRvIGNsZWFu
IHVwIHRoaXMgdXNlIGNhc2UgaXQgc2hvdWxkIHByb2JhYmx5DQo+PiBhbHNvIHRha2UgY2FyZSB0
byByZW1vdmUga3NpemUoKSBvciBhdCBsZWFzdCBsaW1pdCBpdCBzbyB0aGF0IGl0IHdvbid0IGJl
DQo+PiB1c2VkIGZvciB0aGlzIHVzZSBjYXNlIGluIHRoZSBmdXR1cmUuDQo+IA0KPiBZZWFoLCBt
eSBnb2FsIHdvdWxkIGJlIHRvIGVsaW1pbmF0ZSBrc2l6ZSgpLCBhbmQgaXQgc2VlbXMgcG9zc2li
bGUgaWYNCj4gb3RoZXIgY2FzZXMgYXJlIHNhdGlzZmllZCB3aXRoIHRyYWNraW5nIHRoZWlyIGFs
bG9jYXRpb24gc2l6ZXMgZGlyZWN0bHkuDQoNCkkgdGhpbmsgd2UgY291bGQgbGVhdmUga3NpemUo
KSB0byBkZXRlcm1pbmUgdGhlIHNpemUgd2l0aG91dCBhIG5lZWQgZm9yDQpleHRlcm5hbCB0cmFj
a2luZywgYnV0IGZyb20gbm93IG9uIGZvcmJpZCBjYWxsZXJzIGZyb20gdXNpbmcgdGhhdCBoaW50
IHRvDQpvdmVyZmxvdyB0aGUgYWxsb2NhdGlvbiBzaXplIHRoZXkgYWN0dWFsbHkgcmVxdWVzdGVk
PyBPbmNlIHdlIHJlbW92ZSB0aGUNCmthc2FuL2tmZW5jZSBob29rcyBpbiBrc2l6ZSgpIHRoYXQg
bWFrZSB0aGUgY3VycmVudCBraW5kcyBvZiB1c2FnZSBwb3NzaWJsZSwNCndlIHNob3VsZCBiZSBh
YmxlIHRvIGNhdGNoIGFueSBvZmZlbmRlcnMgb2YgdGhlIG5ldyBzZW1hbnRpY3MgdGhhdCB3b3Vs
ZCBhcHBlYXI/DQoNCj4gLUtlZXMNCj4gDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1t
bS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxp
bmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
