Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7086864C213
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 Dec 2022 03:02:30 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 277A23EF64
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 Dec 2022 02:02:29 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 4F0F33E954
	for <linaro-mm-sig@lists.linaro.org>; Wed, 14 Dec 2022 02:02:19 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=bDLXc0Ru;
	spf=pass (lists.linaro.org: domain of kuba@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=kuba@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id D778C61773;
	Wed, 14 Dec 2022 02:02:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C203EC433D2;
	Wed, 14 Dec 2022 02:02:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670983338;
	bh=83ob3N1he1MIOrIIbkVJFs5buErAmrdJMCOKfKXHqb0=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=bDLXc0RuV61tWZ2TmhA1zZ/K9nn8vhh9b8wz9mlGGOgLzL72MNBrv3mH5M0aHf5I3
	 hYs6hOT0gCeh5AF+RryYv8T3742g9igNINX2g//Q0TC+McJ349jyIEVzFAxIZPfX4E
	 N1Ms8QVMLpeyMvw3A726E4yHJiEUK7ovU2FeXBOiFb6EcuxkjSe2oj3T7gyQfQB65W
	 ihdnMMbu247K8HnVN4q4MpH7jWLJ/OHVUsz/8nMUgIWNMVcXMMGXDkb0I18prIFwR2
	 XONm4gCX+VRwbHTKJW+zbxU6oFygYoN5Fou0uk2HBKR4zgxK7mI9PN+4YcjW2MZ5LE
	 +IzwIELTfXT8g==
Date: Tue, 13 Dec 2022 18:02:16 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
Message-ID: <20221213180216.34f1826f@kernel.org>
In-Reply-To: <20221213035707.118309-1-jiapeng.chong@linux.alibaba.com>
References: <20221213035707.118309-1-jiapeng.chong@linux.alibaba.com>
MIME-Version: 1.0
X-Rspamd-Queue-Id: 4F0F33E954
X-Spamd-Bar: -------------
X-Spamd-Result: default: False [-13.50 / 15.00];
	REPLY(-4.00)[];
	DWL_DNSWL_HI(-3.50)[kernel.org:dkim];
	BAYES_HAM(-3.00)[99.99%];
	RCVD_IN_DNSWL_HI(-1.00)[52.25.139.140:received,139.178.84.217:from];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_SPF_ALLOW(-0.20)[+a:dfw.source.kernel.org];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.source.kernel.org:rdns,dfw.source.kernel.org:helo,alibaba.com:email];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_ALL(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_COUNT_THREE(0.00)[3];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: IAOA24FGOKPVHYZJN6WRXZTG5NFTOKU4
X-Message-ID-Hash: IAOA24FGOKPVHYZJN6WRXZTG5NFTOKU4
X-MailFrom: kuba@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: davem@davemloft.net, edumazet@google.com, pabeni@redhat.com, sumit.semwal@linaro.org, christian.koenig@amd.com, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Abaci Robot <abaci@linux.alibaba.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] net: ksz884x: Remove some unused functions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IAOA24FGOKPVHYZJN6WRXZTG5NFTOKU4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, 13 Dec 2022 11:57:07 +0800 Jiapeng Chong wrote:
> These functions are defined in the ksz884x.c file, but not called
> elsewhere, so delete these unused functions.
> 
> drivers/net/ethernet/micrel/ksz884x.c:2212:20: warning: unused function 'port_cfg_force_flow_ctrl'.
> 
> Link: https://bugzilla.openanolis.cn/show_bug.cgi?id=3418
> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
> Signed-off-by: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>

# Form letter - net-next is closed

We have already submitted the networking pull request to Linus
for v6.2 and therefore net-next is closed for new drivers, features,
code refactoring and optimizations. We are currently accepting
bug fixes only.

Please repost when net-next reopens after 6.2-rc1 is cut.

RFC patches sent for review only are obviously welcome at any time.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
