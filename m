Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CGbvJFkS4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:46:17 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 40F84411F15
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:46:17 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 54549443EF
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:46:16 +0000 (UTC)
Received: from AS8PR04CU009.outbound.protection.outlook.com (mail-westeuropeazon11011054.outbound.protection.outlook.com [52.101.70.54])
	by lists.linaro.org (Postfix) with ESMTPS id 9F7133F7EC
	for <linaro-mm-sig@lists.linaro.org>; Mon, 16 Feb 2026 20:22:40 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=nxp.com header.s=selector1 header.b=Se8dKZEt;
	spf=pass (lists.linaro.org: domain of frank.li@nxp.com designates 52.101.70.54 as permitted sender) smtp.mailfrom=frank.li@nxp.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=none) header.from=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MOL+14PTXgtgCKDuPU0Q7/b6Xt6/Npi9djgrtqv7xnbqv+Ue/cY6WQbe9Y6FPNJ5phdspceoAKE48GCcA/OjYG+KItiFlLjZA6JE6GO+bBkjmCblRdoWjgOlzVEzbNFjVG2O+2hJVTyKKRgrgDVeU5HeTBGTxO3QuX4liK7OlrPs9m1NX+G9Xdlq8iw0IFtwYAPhXtzRpYfMAMYbJl0tEV77xJi1U9S5w053vDbWEbf1U/fZup3iShx5mcIQPPrB1rBoEYVDAeLjpvlOhQtfYXsaM5Yn9O+LAInjtUcJLpDJKVyLtRp6zUN6vt0/vSBLiraZtnJOAcG13t8KaUH4lQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Wqs7gvB0H/Kb1SOSrr2atgC5c3NkwlOAbP14h6GUMFc=;
 b=AYOnsVG64SbtW33hq0KKNJsQxfzyJ09keFz4SbTYdtxKgc3QRxp/hobN4uMbAKJpux0mxQdAqkziqKeojsB+8892z0FO0yYBwmkK53J6Zep4hBwvJtrlI+DrSttaJUy16nZFQJDIJAtPrCBzv7L4c/V4Vhw706gRIDImHNWUqK7KHYf6r1QiwuHeZ3kMUOeBNQwHhiS8aqVnZX/n7LbRA0YeGpDNjcqesiPbqZorBht/TFJs69RQkrW0//0tFtNJbktGXTAdg1StMk7gkFnLrESKaawWsYksaxsU2NDTqk5sMM6irdRwPFW40dLa9G730rgSjBJ5EnfXgRNgayLYPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Wqs7gvB0H/Kb1SOSrr2atgC5c3NkwlOAbP14h6GUMFc=;
 b=Se8dKZEt94Aro7NjLuMO1YbErzEuLNX3HRGaJ3RFLed3WfpyEwiV3/KdQzne7RbXGtrucPv4GOnohV5SKD8AM/3/a7eHhvfecdhOmxoBz0rreznvTU8JkVi52EPopPRAJlDzxcZ/rkoWuiE9SKfgYipsSs3lSvlWkiTDYSZdVaHyaIJsqACd1XJwyYG6IwkPD3Xrq0OiYi/0CQDdnh1WBTdRjCdzvxBHFkhr0v1kKrTZF5zGrcq8S+aqoC1xHSbdbB+NPP1aQMHhxCwFK8m3/YUfrOb9kglrkJaNfweU0Oe7JxJyESMcrmNBgZUuS1QXfJ5QDeUgahtj3k/S1rTV0g==
Received: from PA4PR04MB9366.eurprd04.prod.outlook.com (2603:10a6:102:2a9::8)
 by AM8PR04MB7810.eurprd04.prod.outlook.com (2603:10a6:20b:237::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.16; Mon, 16 Feb
 2026 20:22:37 +0000
Received: from PA4PR04MB9366.eurprd04.prod.outlook.com
 ([fe80::75e4:8143:ddbc:6588]) by PA4PR04MB9366.eurprd04.prod.outlook.com
 ([fe80::75e4:8143:ddbc:6588%6]) with mapi id 15.20.9611.013; Mon, 16 Feb 2026
 20:22:37 +0000
Date: Mon, 16 Feb 2026 15:22:28 -0500
From: Frank Li <Frank.li@nxp.com>
To: Larisa Grigore <larisa.grigore@oss.nxp.com>
Message-ID: <aZN8hKJSsnnYhy1m@lizhi-Precision-Tower-5810>
References: <20260216150205.212318-1-larisa.grigore@oss.nxp.com>
 <20260216150205.212318-3-larisa.grigore@oss.nxp.com>
Content-Disposition: inline
In-Reply-To: <20260216150205.212318-3-larisa.grigore@oss.nxp.com>
X-ClientProxiedBy: PH8P220CA0032.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:510:348::10) To PA4PR04MB9366.eurprd04.prod.outlook.com
 (2603:10a6:102:2a9::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PA4PR04MB9366:EE_|AM8PR04MB7810:EE_
X-MS-Office365-Filtering-Correlation-Id: cb9abc81-a88a-4b8f-ee7e-08de6d991fff
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|19092799006|1800799024|52116014|376014|366016|7416014|38350700014;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?+SiK2OClYapmfVk0RUw7Vq2OcV4gZ9E6KTotRxw0EzRPrghvR79iKfOJiRO/?=
 =?us-ascii?Q?BpcJ5pqFGOdDegKIbigihIKw9Xw+S1qY7/bcbis+YK8D2jIdJO00hGxOZDCz?=
 =?us-ascii?Q?479SsfJBRCwGcvnrNajP+o887vwGZgaQqkEYIhXdzdUaaWI0DymBSLDt2qNv?=
 =?us-ascii?Q?ePmi/UevzfK2lKrWH/vDddHF2B6npCft61VVcSIvhLFKVciCFksArw/GrP2n?=
 =?us-ascii?Q?ho7sfMJcu0aKTbXxvqcF7nhb+w8gto2ZeE+x2H6DjfCjBR5mhoDyarHxFafy?=
 =?us-ascii?Q?lSEdReFb01Y9IhAWCIAjWzQFUbJil6cwsVz7YTQdd1cSXnWHAOUY4M+WkqCX?=
 =?us-ascii?Q?VEtefAurPCcpsBCERSUUVtxG/SPo9J+QjxO+XjsGvOJZIbMrboz3JZrfQwHb?=
 =?us-ascii?Q?xO1qupHILguHfsCOydo6BpmZKM+KMcdfZh+jhFWw9vwd3Syxwa6ZJs2i5mUe?=
 =?us-ascii?Q?J8BO8+HMbOYnJ6jdHjXD1Me7KubuAMhNfOXQrcO34dz8aq7U/u0KyZLjbfl2?=
 =?us-ascii?Q?Hg4nWpX95Z3q+kHgZylgOa/eZ0n12VBUUe9lwlC3aaxCKK5EDYi82l1Hyzuh?=
 =?us-ascii?Q?0ePf0BydBEobiW2PRzB1UiB4sQPRnvj9lHaF6qImu025ODF1JBXaJw9jh2ur?=
 =?us-ascii?Q?ZSXOXrv8D4tEFWmN2L/QhTWJXBPvmvAMhcC1czyWFWP7JkuXLqxJ9OoP3YRH?=
 =?us-ascii?Q?luR5UyvaqBLIXBEN7/T+TpC9r8Y4C7CGiaoWKSAm60nx8GAzo1WfIcjh9XJV?=
 =?us-ascii?Q?g0pE7eb9xQoosfeq4jgvD514wreEFTtEAbK2+c0FMNK6zA6Vew0g6E5kGEME?=
 =?us-ascii?Q?LNpQ877z8nM/PMALcNa6NP3kCfe8n/NKzCj5w+vIMZoTp8EVStvKU27Y7ESo?=
 =?us-ascii?Q?wuZCWJMyDWPfxMiOypCjD0z4EMshQS8+rKX/bh5VltFXROWZqBUmgw0lviK+?=
 =?us-ascii?Q?Q4+kXL2seOZcYzHEBzbYfzfy2T3kaWrdIpK4OzpdLUhdCJgMvQ43ccewpUva?=
 =?us-ascii?Q?8BfByJTyfUsScR+4E4NO2YpNuy2esUAo/AvVt6CklyCnlPJRVVkW9NSqwTTo?=
 =?us-ascii?Q?7GOwoEKg6RE4G7ULeplv09h4X36hTNG7ZJsEbUZfc75dLYE/n+DYrSzV0yX2?=
 =?us-ascii?Q?2ePW99XK21Fl9VQJm8Gx1/w4vOpOaHkG+97sn5FBMtyw1nQ5SmpN9S+JHGTS?=
 =?us-ascii?Q?mWULxFRNjvgnYkLVOdAl+qFwdDgAfrllfSJuUhPrhVQOc7jDji/li15OqD7m?=
 =?us-ascii?Q?oecVgK9xqjdgF6ChaW3LNjrn/WfNln2VJuq0vbElI2PahpnaBykeNRLzzJbJ?=
 =?us-ascii?Q?JagzZoLKGgC8GH/CuMBcj7K/EsWJhvvvENIF3ecWBWqTUFRGQPomQW4XYKSP?=
 =?us-ascii?Q?3QAWWLxHm1E+jDtmXHZBWKlNjFmgblEoBL8f+ShoKkJ+gnHUVogxdhSo7KF9?=
 =?us-ascii?Q?7vJwzLyBRD18l6apUHJRH+nOS639oteTAtDF4Uab+WPu+DnRlkqHPJUZLNKE?=
 =?us-ascii?Q?YOAIQxLTZRVwOHzhy6LUOBdKjpzQnQHY6r6VHtDDcpECGSn95nTCL1WBaJkE?=
 =?us-ascii?Q?IAKUeb/VM4KC9c6AGT0F19TIFCxkuFA1Os0s/tKZyLAMhPjy9IfldPHd7n1B?=
 =?us-ascii?Q?AgCd9nkgGWXHEFL6dMOVbFM=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9366.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(19092799006)(1800799024)(52116014)(376014)(366016)(7416014)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?76U+bEQJvfChgePqbzV530aCmwVYOCGBpEY0gHf5CwvtX1dTP7ldvbr4r180?=
 =?us-ascii?Q?qAjN2P2mFMRvxM+0fvq8IUo34XRUra0xGpKRFy0qhWqubS/N1+K5gU65qt/d?=
 =?us-ascii?Q?qWlMAPSggyZI1ASYLICSinYNGS6R3d9c7GXF4zZiLWdNw4yaFeGlg23+cMUh?=
 =?us-ascii?Q?+0RofKNAAGcbgCbkvz9v+xrearcV20pxT+H+cTmI5DyPQAkPY+m968iOlgq4?=
 =?us-ascii?Q?ucgX20rFZtDutP2EhMO9UQlJYyoOTgaJS/u2nY6bj0WaX7UCwuayQGkG+2Dt?=
 =?us-ascii?Q?x4aWIWW6+5f1rXe0soLlh6tFuynU7Ot03kSwLTCGNT9u3ratO6q6ERbo3Y+i?=
 =?us-ascii?Q?ZxPW32WVO+k63cF+mJZ9lQshU6B/pQ3j0iUk8veLcIQnyTv5K+HG3c138tGr?=
 =?us-ascii?Q?y7nfPuEgV1iCiMAyKva2pGuNHi+1UMznYaYRKluq7/BZUQfEmbd8pWiMxi5O?=
 =?us-ascii?Q?AEwb/p1qnlgkdRkGWWd8kG8driRVFX40pnuMMSBLm+sq57INCgYa7HJMZ3Lg?=
 =?us-ascii?Q?d1lIU8cite/rdtUhbe30rOPbu6wielG0VgNkRN/QJGu356fSS1960GS9iF6x?=
 =?us-ascii?Q?1cQ4fMm777RKlotCwo2X6lDZZVaQZ3b34ddIQMF40ig59yeAKi/VoCpYdIBV?=
 =?us-ascii?Q?0jL6x6ZzUpphp7UaxN0krqWqoTK+O3gEjueSXPc4BQtTbdzOhgjy8k7DqWrh?=
 =?us-ascii?Q?xDP1WnpxtB3AuMjqPjZt8uQi4hwzmSR8FbJJDueBsutjRvqyidcDYUWWeWyp?=
 =?us-ascii?Q?eCt5OWr1ghA5sPmQpZIpmYnsltdmZYNePxL1nG8615PsC5Nt7pa8gMLawn91?=
 =?us-ascii?Q?lffP74cXPWajcRTHHeWPoLJlZACKqAPbgqLFM31ZZ16s/6KT+eF0CE/te2mL?=
 =?us-ascii?Q?pd3unjvmPa8xomhJgr4V4WV7ixFlOnMM0AVzCwu5pA5mrh9FlyyJvEijpW5g?=
 =?us-ascii?Q?nRCA7ygNM/LBu+a9xKTfh1+v81JYbJR154+6rOvLnFvXtbgXGit7b7XPHnCd?=
 =?us-ascii?Q?2SolikgM3lMj3kf5AOJCX5TkF+kxO8hthIhS80/8nCXnurgETEYF2J5JGI2/?=
 =?us-ascii?Q?aNfhA3Nblq9hlqfUbx08hnc0Mh7oYtYW85h9Lx6zxdR0nuUMNNPHgODUAKll?=
 =?us-ascii?Q?TKihZhs1zn1+Dmv/hTSJ23H4+S+OGjK+TKPoS+pBoqPSaQsvvxQtm2RflprH?=
 =?us-ascii?Q?H4LeXbqud9otQbRTZnRRL18wpkDMpTioLHEtl/A4+VVQ3UeIKHuc5W6pldL2?=
 =?us-ascii?Q?IVqSR9eyZ8R43vGScfiWQMDe8Yuty791OA18ZZh9jkuK109H+MPuuj4g0s7Q?=
 =?us-ascii?Q?70tRLwU4Foe7444BTjuRV9KjpFknKjxuYIqvw6zM/0HV+Ifdff4l1bp/RPrz?=
 =?us-ascii?Q?qFyZMUrn86gjyue7h4z9O4vrMggjRlnmjDXJmOBGE6vVg9wmk0OomrI411VE?=
 =?us-ascii?Q?7oAkVMQSWVUHBdWAql9/7M93hlQyw7nEZ5Ilv6FYQ7H92D281E65Xee713B6?=
 =?us-ascii?Q?1v0Ozwx8BqQLZJTBiisiWTEzajOXjjsugYTghc97rOBZzA/Xbip5uz2gO4Iz?=
 =?us-ascii?Q?PJocKlt1E7muP/vBz9KZt3Db6ftXbcaDXOTreFNSMe8TgUQcClswjrdQozFC?=
 =?us-ascii?Q?eKnggcR7rXlaSlRpk4ms39m9+aK313ukpOToBtE1JPHWzIW+s2Ss6RVsMjnX?=
 =?us-ascii?Q?+uvJhRnuFTlbWP2gIrhu6R4eQ5arc35Xg2u3d2oX6KxpI0k+?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cb9abc81-a88a-4b8f-ee7e-08de6d991fff
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9366.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Feb 2026 20:22:36.9548
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gbTXoTP9Ox3xcmm0EI3b0aUyRb8/Gl2c9ArMuhcrK6sgBn48CBWSTxbe6Pdze7C2q/paYGQH57Y84w/+bIAX/A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR04MB7810
X-Spamd-Bar: ----
X-MailFrom: frank.li@nxp.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: LAQOTIJQCLLFBOOYVDLQDBUG5I7USTNN
X-Message-ID-Hash: LAQOTIJQCLLFBOOYVDLQDBUG5I7USTNN
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:40:25 +0000
CC: gregkh@linuxfoundation.org, jirislaby@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, sumit.semwal@linaro.org, christian.koenig@amd.com, chester62515@gmail.com, cosmin.stoica@nxp.com, adrian.nitu@freescale.com, stefan-gabriel.mirea@nxp.com, Mihaela.Martinas@freescale.com, linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org, devicetree@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, s32@nxp.com, imx@lists.linux.dev, clizzi@redhat.com, aruizrui@redhat.com, eballetb@redhat.com, echanude@redhat.com, jkangas@redhat.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 02/13] serial: linflexuart: Clean SLEEP bit in LINCR1 after suspend
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LAQOTIJQCLLFBOOYVDLQDBUG5I7USTNN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [4.59 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[1412];
	R_DKIM_REJECT(1.00)[nxp.com:s=selector1];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[nxp.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[26];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FREEMAIL_CC(0.00)[linuxfoundation.org,kernel.org,linaro.org,amd.com,gmail.com,nxp.com,freescale.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev,redhat.com];
	DKIM_TRACE(0.00)[nxp.com:-];
	NEURAL_HAM(-0.00)[-0.977];
	FROM_NEQ_ENVFROM(0.00)[Frank.li@nxp.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,nxp.com:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 40F84411F15
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Feb 16, 2026 at 04:01:54PM +0100, Larisa Grigore wrote:
> When coming back from reset, we need to re-initialize LINCR1 register.
> SLEEP bit should be cleared, otherwise we can't enter INITM mode.

serial: linflexuart: Clean SLEEP bit in LINCR1 at linflex_set_termios()

Re-initialize LINCR1 register (Clear the SLEEP bit) at
linflex_set_termios(), otherwise the controller cannot enter INITM mode
after suspend/resume.

Frank
>
> Fixes: 09864c1cdf5c ("tty: serial: Add linflexuart driver for S32V234")
> Signed-off-by: Larisa Grigore <larisa.grigore@oss.nxp.com>
> ---
>  drivers/tty/serial/fsl_linflexuart.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/tty/serial/fsl_linflexuart.c b/drivers/tty/serial/fsl_linflexuart.c
> index 5a410e2d56ac..016011fd8760 100644
> --- a/drivers/tty/serial/fsl_linflexuart.c
> +++ b/drivers/tty/serial/fsl_linflexuart.c
> @@ -413,8 +413,7 @@ linflex_set_termios(struct uart_port *port, struct ktermios *termios,
>  	old_cr = cr;
>
>  	/* Enter initialization mode by setting INIT bit */
> -	cr1 = readl(port->membase + LINCR1);
> -	cr1 |= LINFLEXD_LINCR1_INIT;
> +	cr1 = LINFLEXD_LINCR1_INIT | LINFLEXD_LINCR1_MME;
>  	writel(cr1, port->membase + LINCR1);
>
>  	/* wait for init mode entry */
> --
> 2.47.0
>
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
