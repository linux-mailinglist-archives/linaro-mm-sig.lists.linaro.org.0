Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id jaSyCjRe5mnPvQEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:11:16 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A97E430AAD
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:11:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 055EE404D4
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:03:43 +0000 (UTC)
Received: from DB3PR0202CU003.outbound.protection.outlook.com (mail-northeuropeazon11010007.outbound.protection.outlook.com [52.101.84.7])
	by lists.linaro.org (Postfix) with ESMTPS id 06EEB3F6A0
	for <linaro-mm-sig@lists.linaro.org>; Fri,  6 Mar 2026 09:42:56 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=foss.st.com header.s=selector2 header.b=mM8Gie60;
	dmarc=pass (policy=none) header.from=foss.st.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of alexandre.torgue@foss.st.com designates 52.101.84.7 as permitted sender) smtp.mailfrom=alexandre.torgue@foss.st.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KJCaqDq4QX6ti+p33moNa/ksweRG8BZ5w/y2wwK6JgwWQ4xIeczT8Vk7p8JycRAmY4U+V8ZnoUhq4rYB8tr4PACKfkNsL5aSVGOU6ykQjAVjAQYXIJDKq1YgAeJiDFg9KC+vzoBQmwwzABH2y4kXNFMZYrycqSAXUb6DhQzrdsmrWGLimvlSB5dm+FNgpLWFRU3TolFymCh7lUtQmyE5j85128WYZIl56KSlP9rlGjiy+MWnUIwGmzYEmNHnAw6KdbzcAXbP16yfAKctNMUmT019+pLqFoFHZoYZKLbe7w7NXkPsNi7kGqfhXa3wfh90bLBGqRkQN5u/GiSRc9R+qQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=I+3cpS65bMqrrzm3MNw4FZTZMqO4xTFq//5fBtGUaJk=;
 b=us+rLjAJYysQ2e6w58pVw6SRAT8wyvCO4qwHKeIKkvjN2GRvIdDUCMtVQtJCiSoU/PCaajgdlqUTnmBeLGDhQpvnJAU5Au+/AjU+0tEkslpbtKgL2D1dN4F0kVaubNUFGMatLdJwXq5Hq9XVcC3zRXOVQYoXkTqswWrqdlEGXZVbXX3BYPMnc1i/sjp84taRzrDv3n5bpoFDbTK1J1ZAatUrVsjyJH8U5/eeEv3W47geT/DCK6CypNjDK4RxW+cbx0pVIkXs28iG4oVPwQgQBGT9bwhzcAPLPJbajshPNun+AK34k7HPyvzC7dAjbWI5Ga8TwS2stduO+nY6wNhjAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 164.130.1.59) smtp.rcpttodomain=kernel.org smtp.mailfrom=foss.st.com;
 dmarc=fail (p=none sp=none pct=100) action=none header.from=foss.st.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=I+3cpS65bMqrrzm3MNw4FZTZMqO4xTFq//5fBtGUaJk=;
 b=mM8Gie60xOLFqpHFjy/rAXO/6QRZh1V8KgqL4cvdXZMXHe6DSrYKmouBUL3vrUiWmoPxwn0TqjqlWqKKDA2JkQRPtkYow+QglrOk3ayGOFc9tZKCrZvMFZ1st9HfSS27e/xw9fTm8C55H00+DJZQJQwqA6jZl9zNPLMo7XjrIW+wPJUjWB3Eh73U4aX8+vpT/i8X8BROiyqioQe1awJPCCfbKY4v57nSzEc/vL+kr6LHTvXnfWvipQGFjJkDFvIfn24qeFxZQQ+u192vFPcAEXFUeNR+PBKnmj4dUiw6bYQiDIDUE7G6Jse6aUtVMQRx5pxPjwZ2fYCQwJh5NdpITw==
Received: from DUZP191CA0037.EURP191.PROD.OUTLOOK.COM (2603:10a6:10:4f8::9) by
 GV1PR10MB9091.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:150:1d1::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9678.18; Fri, 6 Mar
 2026 09:42:51 +0000
Received: from DU2PEPF0001E9C2.eurprd03.prod.outlook.com
 (2603:10a6:10:4f8:cafe::22) by DUZP191CA0037.outlook.office365.com
 (2603:10a6:10:4f8::9) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9678.19 via Frontend Transport; Fri,
 6 Mar 2026 09:42:51 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 164.130.1.59)
 smtp.mailfrom=foss.st.com; dkim=none (message not signed)
 header.d=none;dmarc=fail action=none header.from=foss.st.com;
Received-SPF: Fail (protection.outlook.com: domain of foss.st.com does not
 designate 164.130.1.59 as permitted sender) receiver=protection.outlook.com;
 client-ip=164.130.1.59; helo=smtpO365.st.com;
Received: from smtpO365.st.com (164.130.1.59) by
 DU2PEPF0001E9C2.mail.protection.outlook.com (10.167.8.71) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9654.16 via Frontend Transport; Fri, 6 Mar 2026 09:42:51 +0000
Received: from STKDAG1NODE2.st.com (10.75.128.133) by smtpo365.st.com
 (10.250.44.71) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.29; Fri, 6 Mar
 2026 10:44:40 +0100
Received: from [10.48.86.79] (10.48.86.79) by STKDAG1NODE2.st.com
 (10.75.128.133) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.29; Fri, 6 Mar
 2026 10:42:14 +0100
Message-ID: <1de08beb-8ebb-4f82-a289-814de86c73a5@foss.st.com>
Date: Fri, 6 Mar 2026 10:42:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Alain Volmat <alain.volmat@foss.st.com>, Hugues Fruchet
	<hugues.fruchet@foss.st.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?=
	<christian.koenig@amd.com>
References: <20260106-stm32-dcmi-dma-chaining-v2-0-70688bccd80a@foss.st.com>
Content-Language: en-US
From: Alexandre TORGUE <alexandre.torgue@foss.st.com>
In-Reply-To: <20260106-stm32-dcmi-dma-chaining-v2-0-70688bccd80a@foss.st.com>
X-Originating-IP: [10.48.86.79]
X-ClientProxiedBy: ENXCAS1NODE2.st.com (10.75.128.138) To STKDAG1NODE2.st.com
 (10.75.128.133)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PEPF0001E9C2:EE_|GV1PR10MB9091:EE_
X-MS-Office365-Filtering-Correlation-Id: 10bfdb40-c50a-43bf-f806-08de7b64bbdd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|82310400026|7416014|376014|36860700016|1800799024|13003099007;
X-Microsoft-Antispam-Message-Info: 
	DkQ7PNkfOAJDpmhce6LUHDKJ/fwAxwDNoNVha+n9F8aZsAd3+3CstOdcunot0FT9qvBoGgwg1QhkJ7wi/fpiC5AeQbA8y7pXkWFCAfFR63FYsgWBJsQJ9UDtafJ+Qhp45ZPMXIGID5XoU2rrWYzMLxK19qJNHoJZEZ9Y9T3oXh31DKBi6NdiCxzNYL70B4ex0F79bd738dhao15cS/qyCELsDbeCUqql+9ezJQqpZKe5H1krdlsNIviRNXLhsFkYc7qZCf3noY7TOQ6SO7ogfMgfJzA+p85Yp18jQZqi1k41m8OINQQ90Bz8zNk+mtwTpnSOpoTLCs5u/kc/n3KRrLVUC/BWBM5Uuea8DJ4GJukMuHHrqqC+lh/lRzzT1RvVhfE9wKVUoOfX/ZOg1rrjuCIgr1PpRKkzfgBbu7LUYFIW6q7SlBEJEznxMjp+9CBVy8oinYJJNio0gE0GTt7lvuBhjGbHFp7cgHKHMC4+xJV6/hI+Hyavpxp37YmOG7YNDJoAyuGy24fPBaKkRuGC8Hn1WyVr1wcOX2v/96VvCN0FPyfreNTuBmXqnoJnR/W1YLBmK5WA7zXKCAddPRHBSJS8RLd5ytCLh8QHyqC5yU2p7NXkswUvMy6+FYAVfrkzowenOJN4SRHpVQWazSam5/LwVInUqxI9KLcbdkEj2X4EZoB+uj+AYfeGX08TNeeJ/H3Ckf82Xz+BUI3Tgs1iDBen+FW/gpHZcy1thcrpOO24BqGydGozQFWJHQPHyKd5RjVe83KYpVH9sti90AGDDQ==
X-Forefront-Antispam-Report: 
	CIP:164.130.1.59;CTRY:IT;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:smtpO365.st.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(7416014)(376014)(36860700016)(1800799024)(13003099007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	Q5ufA8dPDK+BRt3zc6S8e/X4fCkawRLpRFM3gpf7Ym1BlVpTjwujrlwaLvu5QR1+TshDPb1kThSjzL4H+lGnTnmkWpn6oI/A1L1igMRFDge+hd42f/XGyF99bJTy+sR8buzUIOJlV8GRRxr0ft5MRi63lzjGJU1bqF71Ci5v2dJSoCuamnEWDMRj+zWzAmSWf2FfifN8FPwoIgq55wJY+Br1+P+pjYz5YBMZ71s6RnrCCQpYCg/rBXPl8ZdZL/k5yT1840qfhPlMNqrc0hPbRWhii7lYXQGST1Q07lY9ZP0swm3PVbmD5WN68Zde7p8FWcKZovZs/U2s36GQafKhosXzIK2dFpoll/ufBhHa+sr+Ik5SidxShwMp82PokkDRBg69CrmYQUVGfeMB6aW8+/BYQ6j2rEsbmbasxdnEqfZX+VwM/Z3EXaM2RNn2R1w6
X-OriginatorOrg: foss.st.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Mar 2026 09:42:51.0867
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 10bfdb40-c50a-43bf-f806-08de7b64bbdd
X-MS-Exchange-CrossTenant-Id: 75e027c9-20d5-47d5-b82f-77d7cd041e8f
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=75e027c9-20d5-47d5-b82f-77d7cd041e8f;Ip=[164.130.1.59];Helo=[smtpO365.st.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DU2PEPF0001E9C2.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR10MB9091
X-Spamd-Bar: ----
X-MailFrom: alexandre.torgue@foss.st.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: I2IP3DRBEDQ7Y2ZWPIUCHMRKBEW7Z2U3
X-Message-ID-Hash: I2IP3DRBEDQ7Y2ZWPIUCHMRKBEW7Z2U3
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:02:25 +0000
CC: linux-media@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 00/12] media: stm32: dcmi: stability & performance enhancements
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/I2IP3DRBEDQ7Y2ZWPIUCHMRKBEW7Z2U3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [4.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[foss.st.com:s=selector2];
	DATE_IN_PAST(1.00)[1087];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[foss.st.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[foss.st.com,kernel.org,gmail.com,linaro.org,amd.com];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	GREYLIST(0.00)[pass,meta];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,st.com:email,linaro.org:email,foss.st.com:mid];
	DKIM_TRACE(0.00)[foss.st.com:-];
	HAS_XOIP(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexandre.torgue@foss.st.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[0.883];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 4A97E430AAD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi

On 1/6/26 12:34, Alain Volmat wrote:
> This series improve stability of the capture by fixing the
> handling of the overrun which was leading to captured
> frame corruption.
> Locking within the driver is also simplified and the way
> DMA is handled is reworked allowing to avoid having a
> specific handling for the JPEG data.
> 
> Performances of capture can now be increased via the usage
> of a DMA->MDMA chaining which allows for capture of higher
> resolution / framerate.
> 
> Signed-off-by: Alain Volmat <alain.volmat@foss.st.com>
> ---
> Changes in v2:
> - Fix pm_sleep_ptr -> pm_ptr to avoid unused function warning
> - Fix typo / remove useless comment in binding
> - Link to v1: https://lore.kernel.org/r/20251218-stm32-dcmi-dma-chaining-v1-0-39948ca6cbf6@foss.st.com
> 
> ---
> Alain Volmat (12):
>        media: stm32: dcmi: Switch from __maybe_unused to pm_ptr()
>        media: stm32: dcmi: perform dmaengine_slave_config at probe
>        media: stm32: dcmi: only create dma descriptor once at buf_prepare
>        media: stm32: dcmi: stop the dma transfer on overrun
>        media: stm32: dcmi: rework spin_lock calls
>        media: stm32: dcmi: perform all dma handling within irq_thread
>        media: stm32: dcmi: use dmaengine_terminate_async in irq context
>        media: stm32: dcmi: continuous mode capture in JPEG
>        dt-bindings: media: st: dcmi: add DMA-MDMA chaining properties
>        media: stm32: dcmi: addition of DMA-MDMA chaining support
>        ARM: dts: stm32: add sram node within stm32mp151.dtsi
>        ARM: dts: stm32: enable DCMI DMA-MDMA chaining on stm32mp157c-ev1.dts
> 
>   .../devicetree/bindings/media/st,stm32-dcmi.yaml   |  11 +-
>   arch/arm/boot/dts/st/stm32mp151.dtsi               |   8 +
>   arch/arm/boot/dts/st/stm32mp157c-ev1.dts           |  15 +
>   drivers/media/platform/st/stm32/stm32-dcmi.c       | 475 +++++++++++++--------
>   4 files changed, 341 insertions(+), 168 deletions(-)
> ---
> base-commit: f7231cff1f3ff8259bef02dc4999bc132abf29cf
> change-id: 20251213-stm32-dcmi-dma-chaining-9ea1da83007d
> 
> Best regards,

DT patches applied stm32-next branch.

regards
Alex
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
