Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C95F79A8DA
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 16:46:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 873DA3F4C9
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 14:46:08 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 1B3C63E894
	for <linaro-mm-sig@lists.linaro.org>; Mon, 17 Jul 2023 02:41:36 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=tC0pXdzA;
	spf=pass (lists.linaro.org: domain of luto@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=luto@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 9FDEF60EDD;
	Mon, 17 Jul 2023 02:41:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 048DCC433C7;
	Mon, 17 Jul 2023 02:41:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689561695;
	bh=BMRFKeXZlpIRSbPMYrVconDlclfefxaU6mHhh2wyjZ0=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=tC0pXdzAqzWC61pPDdl/Dly3pRxNGL9fN4BDm+nuS7/odvvaFkj3p+PHEJfH4KrjC
	 ivN6UF0bRGN3CSU0hlku6KpewVkw3N+ketF6UkIG8T5zgk46mrUAwJluS182IhS1FS
	 evtOZBgtvXSoKbg+V1ocHWiMxb8Iw1bJcQCByj2a+gEBiJ+nIRHCRT2+OfhxHniPnP
	 pvdKPUrRAZ9CT9efe2h1Ly+duTllVj8Cla61AWVPYtBFmfTjYesnWxHimYktLFmr0T
	 PwBpxm93RFEFiT7tMUIS4/zHBBH7BPN1HrTe8L9PoOJiL6rZr+vnsWTEMhycsqx6br
	 D3V282i3tMWeA==
Message-ID: <12393cd2-4b09-4956-fff0-93ef3929ee37@kernel.org>
Date: Sun, 16 Jul 2023 19:41:28 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Content-Language: en-US
To: Mina Almasry <almasrymina@google.com>, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, netdev@vger.kernel.org,
 linux-arch@vger.kernel.org, linux-kselftest@vger.kernel.org
References: <20230710223304.1174642-1-almasrymina@google.com>
From: Andy Lutomirski <luto@kernel.org>
In-Reply-To: <20230710223304.1174642-1-almasrymina@google.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 1B3C63E894
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-1.00)[52.25.139.140:received,139.178.84.217:from];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_SPF_ALLOW(-0.20)[+a:dfw.source.kernel.org];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_CC(0.00)[linaro.org,amd.com,davemloft.net,google.com,kernel.org,redhat.com,arndb.de,gmail.com,ziepe.ca];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_TLS_ALL(0.00)[];
	ARC_NA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
X-MailFrom: luto@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: J3R5JUCJD5EEGLPKPNHHEGJBS7DTAW2G
X-Message-ID-Hash: J3R5JUCJD5EEGLPKPNHHEGJBS7DTAW2G
X-Mailman-Approved-At: Mon, 11 Sep 2023 14:44:42 +0000
CC: Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Jesper Dangaard Brouer <hawk@kernel.org>, Ilias Apalodimas <ilias.apalodimas@linaro.org>, Arnd Bergmann <arnd@arndb.de>, David Ahern <dsahern@kernel.org>, Willem de Bruijn <willemdebruijn.kernel@gmail.com>, Shuah Khan <shuah@kernel.org>, jgg@ziepe.ca
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 00/10] Device Memory TCP
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/J3R5JUCJD5EEGLPKPNHHEGJBS7DTAW2G/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 7/10/23 15:32, Mina Almasry wrote:
> * TL;DR:
> 
> Device memory TCP (devmem TCP) is a proposal for transferring data to and/or
> from device memory efficiently, without bouncing the data to a host memory
> buffer.

(I'm writing this as someone who might plausibly use this mechanism, but 
I don't think I'm very likely to end up working on the kernel side, 
unless I somehow feel extremely inspired to implement it for i40e.)

I looked at these patches and the GVE tree, and I'm trying to wrap my 
head around the data path.  As I understand it, for RX:

1. The GVE driver notices that the queue is programmed to use devmem, 
and it programs the NIC to copy packet payloads to the devmem that has 
been programmed.
2. The NIC receives the packet and copies the header to kernel memory 
and the payload to dma-buf memory.
3. The kernel tells userspace where in the dma-buf the data is.
4. Userspace does something with the data.
5. Userspace does DONTNEED to recycle the memory and make it available 
for new received packets.

Did I get this right?

This seems a bit awkward if there's any chance that packets not intended 
for the target device end up in the rxq.

I'm wondering if a more capable if somewhat higher latency model could 
work where the NIC stores received packets in its own device memory. 
Then userspace (or the kernel or a driver or whatever) could initiate a 
separate DMA from the NIC to the final target *after* reading the 
headers.  Can the hardware support this?

Another way of putting this is: steering received data to a specific 
device based on the *receive queue* forces the logic selecting a 
destination device to be the same as the logic selecting the queue.  RX 
steering logic is pretty limited on most hardware (as far as I know -- 
certainly I've never had much luck doing anything especially intelligent 
with RX flow steering, and I've tried on a couple of different brands of 
supposedly fancy NICs).  But Linux has very nice capabilities to direct 
packets, in software, to where they are supposed to go, and it would be 
nice if all that logic could just work, scalably, with device memory. 
If Linux could examine headers *before* the payload gets DMAed to 
wherever it goes, I think this could plausibly work quite nicely.  One 
could even have an easy-to-use interface in which one directs a *socket* 
to a PCIe device.  I expect, although I've never looked at the 
datasheets, that the kernel could even efficiently make rx decisions 
based on data in device memory on upcoming CXL NICs where device memory 
could participate in the host cache hierarchy.

My real ulterior motive is that I think it would be great to use an 
ability like this for DPDK-like uses.  Wouldn't it be nifty if I could 
open a normal TCP socket, then, after it's open, ask the kernel to 
kindly DMA the results directly to my application memory (via udmabuf, 
perhaps)?  Or have a whole VLAN or macvlan get directed to a userspace 
queue, etc?


It also seems a bit odd to me that the binding from rxq to dma-buf is 
established by programming the dma-buf.  This makes the security model 
(and the mental model) awkward -- this binding is a setting on the 
*queue*, not the dma-buf, and in a containerized or privilege-separated 
system, a process could have enough privilege to make a dma-buf 
somewhere but not have any privileges on the NIC.  (And may not even 
have the NIC present in its network namespace!)

--Andy
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
