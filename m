Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uNpWICT84GlloAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:11:32 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 18737410544
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:11:31 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C5F5340977
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:11:30 +0000 (UTC)
Received: from out30-110.freemail.mail.aliyun.com (out30-110.freemail.mail.aliyun.com [115.124.30.110])
	by lists.linaro.org (Postfix) with ESMTPS id 86F0A3F6C7
	for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Nov 2025 11:32:53 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linux.alibaba.com header.s=default header.b=FYyOtFRx;
	dmarc=pass (policy=none) header.from=linux.alibaba.com;
	spf=pass (lists.linaro.org: domain of xueshuai@linux.alibaba.com designates 115.124.30.110 as permitted sender) smtp.mailfrom=xueshuai@linux.alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linux.alibaba.com; s=default;
	t=1763033571; h=Message-ID:Date:MIME-Version:Subject:To:From:Content-Type;
	bh=iK7SyfUTYZ0NY7SlAfoVfPpY/ANu8iSrVtPJybO+c20=;
	b=FYyOtFRx+mDEvLQlXfxhwTvp4efmkwqP0pgwNzpAARE3bBRELjA1HfKcNtmUhwlADz5TDuiqwEgkso28gsmHuiC0T5+yTlyEob4kw7Ku+w6wbJdRPGefvmyhfManRXGj5dPYbFmy1hZxbM673Ui2ppBbDUd55ndZ01mp7nds+RM=
Received: from 30.246.165.27(mailfrom:xueshuai@linux.alibaba.com fp:SMTPD_---0WsJcCiM_1763033566 cluster:ay36)
          by smtp.aliyun-inc.com;
          Thu, 13 Nov 2025 19:32:47 +0800
Message-ID: <37715c7b-8914-4ce7-84a7-288a808d7933@linux.alibaba.com>
Date: Thu, 13 Nov 2025 19:32:46 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Nicolin Chen <nicolinc@nvidia.com>, Jason Gunthorpe <jgg@nvidia.com>
References: <0-v1-af84a3ab44f5+f68-iommufd_buf_jgg@nvidia.com>
 <aQ4x7UiMMCB0m0dH@Asurada-Nvidia>
 <29f0cddc-3c23-4ab1-92d9-8c9918ddc187@linux.alibaba.com>
 <aRWKA4zBwi+JagaT@Asurada-Nvidia>
From: Shuai Xue <xueshuai@linux.alibaba.com>
In-Reply-To: <aRWKA4zBwi+JagaT@Asurada-Nvidia>
X-Spamd-Bar: -------------
X-MailFrom: xueshuai@linux.alibaba.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: OSYY4I5CACCEXSPI6LUPDJV4KW3RXOHE
X-Message-ID-Hash: OSYY4I5CACCEXSPI6LUPDJV4KW3RXOHE
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:56:35 +0000
CC: Alex Williamson <alex@shazbot.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, iommu@lists.linux.dev, Joerg Roedel <joro@8bytes.org>, Kevin Tian <kevin.tian@intel.com>, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kselftest@vger.kernel.org, linux-media@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>, Shuah Khan <shuah@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Will Deacon <will@kernel.org>, Krishnakant Jaju <kjaju@nvidia.com>, Leon Romanovsky <leon@kernel.org>, Matt Ochs <mochs@nvidia.com>, patches@lists.linux.dev, Simona Vetter <simona.vetter@ffwll.ch>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Xu Yilun <yilun.xu@linux.intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/9] Initial DMABUF support for iommufd
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OSYY4I5CACCEXSPI6LUPDJV4KW3RXOHE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [1.69 / 15.00];
	R_DKIM_REJECT(1.00)[linux.alibaba.com:s=default];
	DATE_IN_PAST(1.00)[3699];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[linux.alibaba.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[linux.alibaba.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xueshuai@linux.alibaba.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.985];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[alibaba.com:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,linux.alibaba.com:mid]
X-Rspamd-Queue-Id: 18737410544
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

SGksIE5pY29saW4sDQoNCuWcqCAyMDI1LzExLzEzIDE1OjM0LCBOaWNvbGluIENoZW4g5YaZ6YGT
Og0KPiBPbiBUaHUsIE5vdiAxMywgMjAyNSBhdCAwMjozMzowMVBNICswODAwLCBTaHVhaSBYdWUg
d3JvdGU6DQo+PiBDb3VsZCB5b3Ugc2hhcmUgbW9yZSBkZXRhaWxzIGZvciB0ZXN0aW5nPywgZS5n
LiBRRU1VIGNtZGxpbmUsDQo+PiBHdWVzdCBrZXJuZWwgdmVyc2lvbi4NCj4gDQo+IE15IHY2Ljgg
YW5kIHY2LjE0IGtlcm5lbHMgY2FuIGJvb3QgY2xlYW5seSBpbiB0aGUgVk0uDQo+IA0KPiB2bV9p
bWFnZT1QQVRILXRvLUZJTEUNCj4gZTEwMDBfcm9tPVBBVEgtdG8tRklMRQ0KPiBxZW11LXN5c3Rl
bS1hYXJjaDY0IFwNCj4gCS1vYmplY3QgaW9tbXVmZCxpZD1pb21tdWZkMCBcDQo+IAktbWFjaGlu
ZSBobWF0PW9uIC1tYWNoaW5lIHZpcnQsYWNjZWw9a3ZtLGdpYy12ZXJzaW9uPTMscmFzPW9uLGhp
Z2htZW0tbW1pby1zaXplPTRUIFwNCj4gCS1jcHUgaG9zdCAtc21wIGNwdXM9NjIgLW0gc2l6ZT0x
Nkcsc2xvdHM9MixtYXhtZW09MjU2RyAtbm9ncmFwaGljIFwNCj4gCS1vYmplY3QgbWVtb3J5LWJh
Y2tlbmQtcmFtLHNpemU9OEcsaWQ9bTAgLW9iamVjdCBtZW1vcnktYmFja2VuZC1yYW0sc2l6ZT04
RyxpZD1tMSBcDQo+IAktbnVtYSBub2RlLG1lbWRldj1tMCxjcHVzPTAtNjEsbm9kZWlkPTAgLW51
bWEgbm9kZSxtZW1kZXY9bTEsbm9kZWlkPTEgXA0KPiAJLW51bWEgbm9kZSxub2RlaWQ9MiAtbnVt
YSBub2RlLG5vZGVpZD0zIC1udW1hIG5vZGUsbm9kZWlkPTQgLW51bWEgbm9kZSxub2RlaWQ9NSBc
DQo+IAktbnVtYSBub2RlLG5vZGVpZD02IC1udW1hIG5vZGUsbm9kZWlkPTcgLW51bWEgbm9kZSxu
b2RlaWQ9OCAtbnVtYSBub2RlLG5vZGVpZD05IFwNCj4gCS1kZXZpY2UgcHhiLXBjaWUsaWQ9cGNp
ZS4xLGJ1c19ucj0xLGJ1cz1wY2llLjAgLWRldmljZSBhcm0tc21tdXYzLHByaW1hcnktYnVzPXBj
aWUuMSxpZD1zbW11djMuMSxhY2NlbD1vbixhdHM9b24scmlsPW9mZixwYXNpZD1vbixvYXM9NDgg
XA0KPiAJLWRldmljZSBwY2llLXJvb3QtcG9ydCxpZD1wY2llLnBvcnQxLGJ1cz1wY2llLjEsY2hh
c3Npcz0xLGlvLXJlc2VydmU9MCBcDQo+IAktZGV2aWNlIHZmaW8tcGNpLW5vaG90cGx1Zyxob3N0
PTAwMDk6MDE6MDAuMCxidXM9cGNpZS5wb3J0MSxyb21iYXI9MCxpZD1kZXYwLGlvbW11ZmQ9aW9t
bXVmZDAgXA0KPiAJLW9iamVjdCBhY3BpLWdlbmVyaWMtaW5pdGlhdG9yLGlkPWdpMCxwY2ktZGV2
PWRldjAsbm9kZT0yIFwNCj4gCS1vYmplY3QgYWNwaS1nZW5lcmljLWluaXRpYXRvcixpZD1naTEs
cGNpLWRldj1kZXYwLG5vZGU9MyBcDQo+IAktb2JqZWN0IGFjcGktZ2VuZXJpYy1pbml0aWF0b3Is
aWQ9Z2kyLHBjaS1kZXY9ZGV2MCxub2RlPTQgXA0KPiAJLW9iamVjdCBhY3BpLWdlbmVyaWMtaW5p
dGlhdG9yLGlkPWdpMyxwY2ktZGV2PWRldjAsbm9kZT01IFwNCj4gCS1vYmplY3QgYWNwaS1nZW5l
cmljLWluaXRpYXRvcixpZD1naTQscGNpLWRldj1kZXYwLG5vZGU9NiBcDQo+IAktb2JqZWN0IGFj
cGktZ2VuZXJpYy1pbml0aWF0b3IsaWQ9Z2k1LHBjaS1kZXY9ZGV2MCxub2RlPTcgXA0KPiAJLW9i
amVjdCBhY3BpLWdlbmVyaWMtaW5pdGlhdG9yLGlkPWdpNixwY2ktZGV2PWRldjAsbm9kZT04IFwN
Cj4gCS1vYmplY3QgYWNwaS1nZW5lcmljLWluaXRpYXRvcixpZD1naTcscGNpLWRldj1kZXYwLG5v
ZGU9OSBcDQo+IAktYmlvcyAvdXNyL3NoYXJlL0FBVk1GL0FBVk1GX0NPREUuZmQgXA0KPiAJLWRl
dmljZSBudm1lLGRyaXZlPW52bWUwLHNlcmlhbD1kZWFkYmVhZjEsYnVzPXBjaWUuMCBcDQo+IAkt
ZHJpdmUgZmlsZT0ke3ZtX2ltYWdlfSxpbmRleD0wLG1lZGlhPWRpc2ssZm9ybWF0PXFjb3cyLGlm
PW5vbmUsaWQ9bnZtZTAgXA0KPiAJLWRldmljZSBlMTAwMCxyb21maWxlPSR7ZTEwMDBfcm9tfSxu
ZXRkZXY9bmV0MCxidXM9cGNpZS4wIFwNCj4gCS1uZXRkZXYgdXNlcixpZD1uZXQwLGhvc3Rmd2Q9
dGNwOjo1NTU4LToyMixob3N0ZndkPXRjcDo6NTU4Ni06NTU4Ng0KPiANCg0KVGhhbmtzIGZvciBz
aGFyaW5nIHRoZSBjb21tYW5kIGxpbmUuIFRoZSBpc3N1ZSB3YXMgd2l0aCBteSBRRU1VIGNvbW1h
bmQNCmxpbmUgY29uZmlndXJhdGlvbi4NCg0KVXNpbmcgeW91ciBjb21tYW5kIGxpbmUsIEkgY2Fu
IG5vdyBib290IG15IHY2LjYga2VybmVsIGNsZWFubHkgaW4gdGhlDQpWTSwgYW5kIHRoZSBQQ0ll
IHBhc3N0aHJvdWdoIGRldmljZSB3b3JrcyBjb3JyZWN0bHkuDQoNClRlc3RlZC1ieTogU2h1YWkg
WHVlIDx4dWVzaHVhaUBsaW51eC5hbGliYWJhLmNvbT4NCg0KVGhhbmtzLg0KU2h1YWkNCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNj
cmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9y
Zwo=
