Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E61D3605698
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Oct 2022 07:02:20 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EFF9D3EC7D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Oct 2022 05:02:19 +0000 (UTC)
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.220.28])
	by lists.linaro.org (Postfix) with ESMTPS id B642C3ED1B
	for <linaro-mm-sig@lists.linaro.org>; Fri, 23 Sep 2022 09:08:01 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id A0F1B219BA;
	Fri, 23 Sep 2022 09:08:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
	t=1663924080; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=3NmV8dBleohq19FUTGjShv3qNCUcjTHlt1m0s7sWLVk=;
	b=V6wEuumqUBqjySkow4NVfoPBdDcct+QY2sSnA92ZeyPwH38i0NPhxZ2JBFN/nzoZI0qJDc
	KkeFL/D96aoTs49QcLygaGlMNADNI8AXG8StgjNUceGaiafR2+x2Vnsi6pDhmZ07qrK3n8
	Inta8iq5GzYLsx9ExrSXKnUXYR9y3Io=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
	s=susede2_ed25519; t=1663924080;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=3NmV8dBleohq19FUTGjShv3qNCUcjTHlt1m0s7sWLVk=;
	b=U7EHAzZMP7bk2R61PfblSG7IYbc4Ddv8PLRV2h2xeqC20gD9ZFpGn6nKi00zf3zaGPeOWS
	aSCwMvZR9gmTbODQ==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 19F9B13AA5;
	Fri, 23 Sep 2022 09:08:00 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
	by imap2.suse-dmz.suse.de with ESMTPSA
	id e5i3BXB3LWM6HAAAMHmgww
	(envelope-from <vbabka@suse.cz>); Fri, 23 Sep 2022 09:08:00 +0000
Message-ID: <6e6a5f86-3080-54ed-82ea-80e57e184fd0@suse.cz>
Date: Fri, 23 Sep 2022 11:07:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: Kees Cook <keescook@chromium.org>
References: <20220922031013.2150682-1-keescook@chromium.org>
 <673e425d-1692-ef47-052b-0ff2de0d9c1d@amd.com>
 <202209220845.2F7A050@keescook>
 <cb38655c-2107-bda6-2fa8-f5e1e97eab14@suse.cz>
 <202209221446.5E90AEED@keescook>
From: Vlastimil Babka <vbabka@suse.cz>
In-Reply-To: <202209221446.5E90AEED@keescook>
X-MailFrom: vbabka@suse.cz
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: XIHSJPDRMTDW5XMFG3EM77DWOTCWY5HY
X-Message-ID-Hash: XIHSJPDRMTDW5XMFG3EM77DWOTCWY5HY
X-Mailman-Approved-At: Thu, 20 Oct 2022 05:01:50 +0000
CC: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>, Pekka Enberg <penberg@kernel.org>, Feng Tang <feng.tang@intel.com>, David Rientjes <rientjes@google.com>, Joonsoo Kim <iamjoonsoo.kim@lge.com>, Andrew Morton <akpm@linux-foundation.org>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Nick Desaulniers <ndesaulniers@google.com>, Alex Elder <elder@kernel.org>, Josef Bacik <josef@toxicpanda.com>, David Sterba <dsterba@suse.com>, Sumit Semwal <sumit.semwal@linaro.org>, Jesse Brandeburg <jesse.brandeburg@intel.com>, Daniel Micay <danielmicay@gmail.com>, Yonghong Song <yhs@fb.com>, Marco Elver <elver@google.com>, Miguel Ojeda <ojeda@kernel.org>, linux-kernel@vger.kernel.org, linux-mm@kvack.org, netdev@vger.kernel.org, linux-btrfs@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro
 .org, linux-fsdevel@vger.kernel.org, intel-wired-lan@lists.osuosl.org, dev@openvswitch.org, x86@kernel.org, linux-wireless@vger.kernel.org, llvm@lists.linux.dev, linux-hardening@vger.kernel.org, Hyeonggon Yoo <42.hyeyoo@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 00/12] slab: Introduce kmalloc_size_roundup()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XIHSJPDRMTDW5XMFG3EM77DWOTCWY5HY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gOS8yMi8yMiAyMzo0OSwgS2VlcyBDb29rIHdyb3RlOg0KPiBPbiBUaHUsIFNlcCAyMiwgMjAy
MiBhdCAxMTowNTo0N1BNICswMjAwLCBWbGFzdGltaWwgQmFia2Egd3JvdGU6DQo+PiBPbiA5LzIy
LzIyIDE3OjU1LCBLZWVzIENvb2sgd3JvdGU6DQo+PiA+IE9uIFRodSwgU2VwIDIyLCAyMDIyIGF0
IDA5OjEwOjU2QU0gKzAyMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+PiA+IFsuLi5dDQo+
PiA+ID4gU28gd2hlbiB0aGlzIHBhdGNoIHNldCBpcyBhYm91dCB0byBjbGVhbiB1cCB0aGlzIHVz
ZSBjYXNlIGl0IHNob3VsZCBwcm9iYWJseQ0KPj4gPiA+IGFsc28gdGFrZSBjYXJlIHRvIHJlbW92
ZSBrc2l6ZSgpIG9yIGF0IGxlYXN0IGxpbWl0IGl0IHNvIHRoYXQgaXQgd29uJ3QgYmUNCj4+ID4g
PiB1c2VkIGZvciB0aGlzIHVzZSBjYXNlIGluIHRoZSBmdXR1cmUuDQo+PiA+IA0KPj4gPiBZZWFo
LCBteSBnb2FsIHdvdWxkIGJlIHRvIGVsaW1pbmF0ZSBrc2l6ZSgpLCBhbmQgaXQgc2VlbXMgcG9z
c2libGUgaWYNCj4+ID4gb3RoZXIgY2FzZXMgYXJlIHNhdGlzZmllZCB3aXRoIHRyYWNraW5nIHRo
ZWlyIGFsbG9jYXRpb24gc2l6ZXMgZGlyZWN0bHkuDQo+PiANCj4+IEkgdGhpbmsgd2UgY291bGQg
bGVhdmUga3NpemUoKSB0byBkZXRlcm1pbmUgdGhlIHNpemUgd2l0aG91dCBhIG5lZWQgZm9yDQo+
PiBleHRlcm5hbCB0cmFja2luZywgYnV0IGZyb20gbm93IG9uIGZvcmJpZCBjYWxsZXJzIGZyb20g
dXNpbmcgdGhhdCBoaW50IHRvDQo+PiBvdmVyZmxvdyB0aGUgYWxsb2NhdGlvbiBzaXplIHRoZXkg
YWN0dWFsbHkgcmVxdWVzdGVkPyBPbmNlIHdlIHJlbW92ZSB0aGUNCj4+IGthc2FuL2tmZW5jZSBo
b29rcyBpbiBrc2l6ZSgpIHRoYXQgbWFrZSB0aGUgY3VycmVudCBraW5kcyBvZiB1c2FnZSBwb3Nz
aWJsZSwNCj4+IHdlIHNob3VsZCBiZSBhYmxlIHRvIGNhdGNoIGFueSBvZmZlbmRlcnMgb2YgdGhl
IG5ldyBzZW1hbnRpY3MgdGhhdCB3b3VsZCBhcHBlYXI/DQo+IA0KPiBUaGF0J3MgY29ycmVjdC4g
SSBzcGVudCB0aGUgbW9ybmluZyB3b3JraW5nIG15IHdheSB0aHJvdWdoIHRoZSByZXN0IG9mDQo+
IHRoZSBrc2l6ZSgpIHVzZXJzIEkgZGlkbid0IGNsZWFuIHVwIHllc3RlcmRheSwgYW5kIGluIHNl
dmVyYWwgcGxhY2VzIEkNCj4ganVzdCBzd2FwcGVkIGluIF9fa3NpemUoKS4gQnV0IHRoYXQgd291
bGRuJ3QgZXZlbiBiZSBuZWVkZWQgaWYgd2UganVzdA0KPiByZW1vdmVkIHRoZSBrYXNhbiB1bnBv
aXNvbmluZyBmcm9tIGtzaXplKCksIGV0Yy4NCj4gDQo+IEkgYW0gdGVtcHRlZCB0byBsZWF2ZSBp
dCBfX2tzaXplKCksIHRob3VnaCwganVzdCB0byByZWluZm9yY2UgdGhhdCBpdCdzDQo+IG5vdCBz
dXBwb3NlZCB0byBiZSB1c2VkICJub3JtYWxseSIuIFdoYXQgZG8geW91IHRoaW5rPw0KDQpTb3Vu
ZHMgZ29vZC4gTm90ZSBpbiBsaW51eC1uZXh0IHRoZXJlJ3Mgbm93IGEgc2VyaWVzIGluIHNsYWIu
Z2l0IHBsYW5uZWQgZm9yDQo2LjEgdGhhdCBtb3ZlcyBfX2tzaXplKCkgZGVjbGFyYXRpb24gdG8g
bW0vc2xhYi5oIHRvIG1ha2UgaXQgbW9yZSBwcml2YXRlLg0KQnV0IHdlIGRvbid0IHdhbnQgcmFu
ZG9tIHVzZXJzIG91dHNpZGUgbW0gYW5kIHJlbGF0ZWQga2FzYW4va2ZlbmNlDQpzdWJzeXN0ZW1z
IHRvIGluY2x1ZGUgbW0vc2xhYi5oLCBzbyB3ZSdsbCBoYXZlIHRvIGV4cG9zZSBpdCBhZ2FpbiBp
bnN0ZWFkIG9mDQprc2l6ZSgpLg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0Bs
aXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1t
LXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
