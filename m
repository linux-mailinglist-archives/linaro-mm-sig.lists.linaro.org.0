Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C3885C0FE2A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Oct 2025 19:19:11 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 79E493F758
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Oct 2025 18:19:10 +0000 (UTC)
Received: from SA9PR02CU001.outbound.protection.outlook.com (mail-southcentralusazon11013059.outbound.protection.outlook.com [40.93.196.59])
	by lists.linaro.org (Postfix) with ESMTPS id 3DA863F758
	for <linaro-mm-sig@lists.linaro.org>; Mon, 27 Oct 2025 18:18:58 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=Nvidia.com header.s=selector2 header.b="ayc6GHG/";
	dmarc=pass (policy=reject) header.from=nvidia.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of jgg@nvidia.com designates 40.93.196.59 as permitted sender) smtp.mailfrom=jgg@nvidia.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dDsyPYIuDn1P1Z5Z14DxGiLF/Plyomwn8BaS9I5JADrBewFPchMMgU25mBtC02TpeZbE2bIjSo3KTyXj8id3+KLcI9OqzDn1t1yRwxzpQKP4GYji28NH/T20fJVqat9wN9jGehyFysY6BqhNPyBtiV6lBAbLGOq5+2o7rxkeYdbw7PLgvCMmtlPfEF7Z4aqjbLt6EcATAygDrsKlpCymFFtSSnU8IwXEGERsD5z+Uw7QwWPjJvL5gq3Z/R2EJBlHltwxtC8WeY8IQ5/Gjtb9rGrGXvdJaqO1qPxUEOfEKlLvF4/VEnl6DX7OCuOb14rce++j+y1DMlbstmD/bRShDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aFHLXd70nrsPY7yLuXcOd5FDpUnhB05Tgf8r8+jcd+I=;
 b=frmZL/WgLzu81X5kVniUZP0hEZJUZy5qNb9xRaQziERSE2oSuVRshyYvVthsS8HShttPnpAEcrtijUV8ZQq4QcE3u/qDToYvxlCZwKsVw6A/tDVxghxJe/RE2RCOZU4K5NoqY208YmYIc1zQaQMDiKw7vQvCMX+yUAjmbJCBy2ejcJk/ChNkOA/V6bjOaMPxhKBYam7N/Z5Ta082/TCYozpUHST70L7WyVWSiyqNQvZcB8dqlkZuveXPKhJgezrqkMwDoepPGJvez7/PuCI52/BZI2HA+MKZxV3UHmN8xCeFMFU4qr7oH31nHK40rjvj3RtXNXf+spINpxUPGJVXng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aFHLXd70nrsPY7yLuXcOd5FDpUnhB05Tgf8r8+jcd+I=;
 b=ayc6GHG/5rfhzUWfj9500hU0+5lgvHxsQtq2VzziM06npwfqw2tGoB9cz+LZws1mefuZP157pvKk+L6n5ZJMrj08hhL4/81isGSBpIQ/UPkahslBtckSn8R95zNmXX4Jz+uBU3jlVVxo26fzFS3+o69v7lXAIH8fMTZl3P4Lyi+ZQxompXphYnfPKi6hg7PAvwsvzA/b1jkesYNdmPGDFWwGUWw2qpDGJM06eEqj7IFBAv2vR7b31YOE43Kpyyuh1rmvkzPWpokxQeUrOMop+fcOBQ0FTjfHE9GpnndeXqOdwbQiY+O+Ok7z9K40umNYO2z8uTPzoEchUNvvWXFtgg==
Received: from MN2PR12MB3613.namprd12.prod.outlook.com (2603:10b6:208:c1::17)
 by SA3PR12MB7879.namprd12.prod.outlook.com (2603:10b6:806:306::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.12; Mon, 27 Oct
 2025 18:18:54 +0000
Received: from MN2PR12MB3613.namprd12.prod.outlook.com
 ([fe80::1b3b:64f5:9211:608b]) by MN2PR12MB3613.namprd12.prod.outlook.com
 ([fe80::1b3b:64f5:9211:608b%4]) with mapi id 15.20.9253.017; Mon, 27 Oct 2025
 18:18:54 +0000
Date: Mon, 27 Oct 2025 15:18:53 -0300
From: Jason Gunthorpe <jgg@nvidia.com>
To: Vivek Kasireddy <vivek.kasireddy@intel.com>
Message-ID: <20251027181853.GC1018328@nvidia.com>
References: <20251027044712.1676175-1-vivek.kasireddy@intel.com>
 <20251027044712.1676175-3-vivek.kasireddy@intel.com>
Content-Disposition: inline
In-Reply-To: <20251027044712.1676175-3-vivek.kasireddy@intel.com>
X-ClientProxiedBy: MN2PR03CA0015.namprd03.prod.outlook.com
 (2603:10b6:208:23a::20) To MN2PR12MB3613.namprd12.prod.outlook.com
 (2603:10b6:208:c1::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN2PR12MB3613:EE_|SA3PR12MB7879:EE_
X-MS-Office365-Filtering-Correlation-Id: c4272521-07ca-415f-f16c-08de15854993
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?e8a3OdzoCH7chq+Jwr9Yb7SfLWmHLldIZQGiYZx9e/ZY2okCQkiUGXFmNuvO?=
 =?us-ascii?Q?UJah56Us87L8vHnebP+NKj4SpAteHdcZYFnQHaLyUVv3UwdcjzA9OoEDRXRw?=
 =?us-ascii?Q?xI55qlaqI6ZwLPDHEHhiAB0roKIF7ihgauxMAL0SkOanSGF3ENu63IdOaC1n?=
 =?us-ascii?Q?2V0E844pVvTJAxI2IbcEYNc7meDLn9rI6x3sY/hMPYW4P9HMzoxdQeIC/oPz?=
 =?us-ascii?Q?VoTrZYH6u92sisQ/FxMtvVvh7XVBCxxXhoGwdTWdxFWxwsnRY+6CbpNHT8Cp?=
 =?us-ascii?Q?edOW1JXW5ZL7iE7KLlIt7zYZQrLM3xYy093A5t5yP4jR0zm2un7dAE6ioTN7?=
 =?us-ascii?Q?ZoYxAiMca4pN4NFoHGh0dUYKERDzDHu16/a+6lIPkTKiok58rETOJhJrkKEh?=
 =?us-ascii?Q?tilzp+Nj8o2vsnVHbFj3EnD44MQfY5b3c3h+h85/QN4EyQqKRdv6xpxXIVGS?=
 =?us-ascii?Q?4pVWUS9Ikk9w8S8jKSfWgRE1cQB1r0oa36shmfBGJMuGFrdpCcOOfLZ6dYkh?=
 =?us-ascii?Q?IzKwuNq6qEWAqSRlrRzdfjKmHEe/Jk3/wQUl4nysaKU3bdKgFmOWt7U2gk1+?=
 =?us-ascii?Q?rkOcsSDI098DLsoFJ3VIlVxE5WE9grAQClA6+hBRFxyA0opAGMWqjxq9oWa4?=
 =?us-ascii?Q?undfSGkZq6vDas33maMxnMrWZy1jnncEimSXE9ECoeuFuZfepeR1roDvkaIY?=
 =?us-ascii?Q?+CB+hykokt8NNzR0zlbYdCCEuZCLNYnyOhKoo0qWNiG5LIYVuTNFoDt59GSC?=
 =?us-ascii?Q?2GA624dQWWL3lIiI8cGiNh3uWO+OlgX7QrFYXYbXmgMYVK3oKfALG88opn5M?=
 =?us-ascii?Q?DmAI92CRp8yj1i3FHx5T5MGn/AHRNj61OKWGSt0uBWz22YIm8G3J2RHpVZEJ?=
 =?us-ascii?Q?dfMbSo/d4HbD0t0m8Va16+LZ2jyrOT2TAYlIcWhneVAqTPRKgIx++jdWONq2?=
 =?us-ascii?Q?KezfJo6n9fgOQl4huC53iDzCoOFwo2Npd572XyIrkMnCtef9Mw9OV7N6Di6G?=
 =?us-ascii?Q?J3XzqRvRB7C9H7I7l2WKtB/xMBu7co2QzLniHGFb3G+xiNT5VwbmUt+F1hZR?=
 =?us-ascii?Q?zYWF77BiZDeQXlVRCHgE2/qJY+iIKsarG2Y8l7XZJRbs4DsNfKEI/e24qgO2?=
 =?us-ascii?Q?ZoE7lPo3xrBHjTsk566uaphBFcYzD2LECpL4svuWAdp9GzAROMcNfykzl99t?=
 =?us-ascii?Q?LIgDKv+9rowwU5PXKn4Av+l3OW0cM9DgBtzgZ1bMcVd12xr7Dahe+Xh9VX4a?=
 =?us-ascii?Q?RVFQls/IwHo2lVfKco4iNU6N5mJ8GWt2FAKYtDAg5xJLY5gpTJix5JoIo8Ob?=
 =?us-ascii?Q?QsMWxYsL2SQaNAv+2zj8SUFCkD0H+8S3vl1+7nVa+sDjP4SKB+PUbeVDp97a?=
 =?us-ascii?Q?hDcNU2rTm8I7X4e8MPdMY6TL0QaW6JgDgJWzAeeWU+q6SUiEY/dhsrSK0xJv?=
 =?us-ascii?Q?gr83rkNNyitHCXEAiw+ZNFR6NoUzCqqq?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR12MB3613.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?FWWeiO4RFa3XIRODRWEqF9ckVukAhuvZlTt5aCTj2cJ/AXE7jkSHZXHk1Uvi?=
 =?us-ascii?Q?nt+lB27qLrbmfNLYv5YXfjMOcmFh7EUffgZg/7b1okRoz5PdEm0d5qgISR54?=
 =?us-ascii?Q?GSOH3ZMtvQKn9DEB7Mdj54gD/rF1Qr7t3D5Uq57kGQ4dG8nqcnbhnYeSu7zl?=
 =?us-ascii?Q?6TU5rC+a45Xto41Xca0VLD2wnLOZsu6ZLpnOag7isCjZWiVu24Iy+XWZ5o5N?=
 =?us-ascii?Q?IuNNMqguBnh3HLizXAdgINr6nJiHJ3PTPcGQH/K1KrCHqYVC7kAG1tmaXRO9?=
 =?us-ascii?Q?5yOHLXFNjYeeL1xkklS2EuEetIBS7WlGjeivfwTGqVrNadwZ+SRiYelmp/dz?=
 =?us-ascii?Q?jB7Bpt5Lge5qpNSSXcxlXZVufR9k4T8v5iJhv6rGouWGXs+WNWVw5JRkYuCC?=
 =?us-ascii?Q?lZ6hVCJni/VeIsbpbdwm12AgcFeyrtzfrxeT39DQxqupskLzKtf7pKoE2SVe?=
 =?us-ascii?Q?66MvOmloXSy2NSoqewzj+bx4KcD2kEa4XQ4Tmfkzti+k1e3+IJUgTvMQgpYn?=
 =?us-ascii?Q?tvx2gtCm+abTy800kBMsxWmx5TUSTeuBJqhcfbJOYfm+uAFLPgQ0Yhxtl8HD?=
 =?us-ascii?Q?5wDllX7hXH3TnqdvaRxnc+rPU0KsFf8/PS9rOPA7sdx5hNnpCyTYDb1hVkn0?=
 =?us-ascii?Q?R+dEc+UJFhF/G7Dubz3IwDYP6FgVZ9uJC4Bx5YcZge3wBZT7JMy2jrm2MKJd?=
 =?us-ascii?Q?WT9APaUBBWbujP3WTLh6N4E7tXvCii7hUeY3Q2qtmq4eiXdoYXzNEsOFFEmX?=
 =?us-ascii?Q?COx2fTcE8SdWSn5LYvuG0Y4r3ebftDUFhdMR0wjjbC4IK6Q7APok36Jbb/KI?=
 =?us-ascii?Q?4081kQthjdq6r2gSkYZR/eRNgqX2W7bOzW5O3Ekog6SIA+ImSS7R/1+hy9v/?=
 =?us-ascii?Q?3cUZUkYAp1FiDz90KoQ/6Vnv70M5C3jnvj2V+Ql1YD6KU3mVSbRyvQVItN+J?=
 =?us-ascii?Q?C3G1ebzQ1TkxdLe+QKa856Yc5Q95AYBn64Usz8I2/qfEESsl00SDxU51w2m6?=
 =?us-ascii?Q?ACoto2bGq4EWIoTQua3qA7fn8P/ABQ54fJgVtWlrHB1ZTvlgnlzI+i7K73Ey?=
 =?us-ascii?Q?gX8Y1exuu+UxiLQGscnlM/qcVASiC53YbwrUSbRCeZJWUgEqLD0SMjEG+jMY?=
 =?us-ascii?Q?6XcbHFHErCbcb1oHucx8IH2lJTqjwx1XNUJpTCwZQsD3B8zS3rKv6PglZx7q?=
 =?us-ascii?Q?TpOcgGwdGCctwqt3GDzcF4WnAweMQU13q2kFF9tUYGMqoQwaYIl4JA4R0ncD?=
 =?us-ascii?Q?lPOS+j9QDYYHQKwNq8jJims9XTMFrTQBz/9dsGAvlRQOY8SgYNYf807D1yEW?=
 =?us-ascii?Q?Pug4R7EGBY66marTDuIQ4ZmrvUwJe3z4AxI7BDQ4N+zMDWXd7YtCVtbX3DaP?=
 =?us-ascii?Q?lQOyndrLph9CLHJlyfVi1lfTQEkd3iC598IdnUd7KtDr2j1DCWMI3PN4/zWt?=
 =?us-ascii?Q?oD0tiacFWcFxML5sA3deSseq70keX1rGsQSrXUvx2Hm6+bJ8nYWsDA8tx4BH?=
 =?us-ascii?Q?4LKkXdTsAEqmD56X5rmmkM8+RrcePc8nN7IlTkV5VKKgdBpNaUD1zjsOxssr?=
 =?us-ascii?Q?J+3lyiRqrUX4D2cfL8U=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c4272521-07ca-415f-f16c-08de15854993
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3613.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Oct 2025 18:18:54.3521
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ntfDBWE/VOEmxO0yX5aBuHzqK6PEdX6BEk7hYzoFuve8mSxfPtrRBFvmLM/c5Olk
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR12MB7879
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 3DA863F758
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[nvidia.com,reject];
	R_DKIM_ALLOW(-0.20)[Nvidia.com:s=selector2];
	R_SPF_ALLOW(-0.20)[+ip4:40.92.0.0/15];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.93.196.59:from];
	ASN(0.00)[asn:8075, ipnet:40.80.0.0/12, country:US];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[40.93.196.59:from,2603:10b6:208:c1::17:received];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[Nvidia.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: LPNLII7WJUCXHK2RJ43KT4OZO5AMOACP
X-Message-ID-Hash: LPNLII7WJUCXHK2RJ43KT4OZO5AMOACP
X-MailFrom: jgg@nvidia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, intel-xe@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Christian Koenig <christian.koenig@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Simona Vetter <simona.vetter@ffwll.ch>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v2 2/8] dma-buf: Add a helper to match interconnects between exporter/importer
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LPNLII7WJUCXHK2RJ43KT4OZO5AMOACP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Sun, Oct 26, 2025 at 09:44:14PM -0700, Vivek Kasireddy wrote:
> +/**
> + * dma_buf_match_interconnects - determine if there is a specific interconnect
> + * that is supported by both exporter and importer.
> + * @attach:	[in]	attachment to populate ic_match field
> + * @exp:	[in]	array of interconnects supported by exporter
> + * @exp_ics:	[in]	number of interconnects supported by exporter
> + * @imp:	[in]	array of interconnects supported by importer
> + * @imp_ics:	[in]	number of interconnects supported by importer
> + *
> + * This helper function iterates through the list interconnects supported by
> + * both exporter and importer to find a match. A successful match means that
> + * a common interconnect type is supported by both parties and the exporter's
> + * match_interconnect() callback also confirms that the importer is compatible
> + * with the exporter for that interconnect type.

Document which of the exporter/importer is supposed to call this

> + *
> + * If a match is found, the attach->ic_match field is populated with a copy
> + * of the exporter's match data.

> + * Return: true if a match is found, false otherwise.
> + */
> +bool dma_buf_match_interconnects(struct dma_buf_attachment *attach,
> +				 const struct dma_buf_interconnect_match *exp,
> +				 unsigned int exp_ics,
> +				 const struct dma_buf_interconnect_match *imp,
> +				 unsigned int imp_ics)
> +{
> +	const struct dma_buf_interconnect_ops *ic_ops;
> +	struct dma_buf_interconnect_match *ic_match;
> +	struct dma_buf *dmabuf = attach->dmabuf;
> +	unsigned int i, j;
> +
> +	if (!exp || !imp)
> +		return false;
> +
> +	if (!attach->allow_ic)
> +		return false;

Seems redundant with this check for ic_ops == NULL:

> +	ic_ops = dmabuf->ops->interconnect_ops;
> +	if (!ic_ops || !ic_ops->match_interconnect)
> +		return false;

This seems like too much of a maze to me..

I think you should structure it like this. First declare an interconnect:

struct dma_buf_interconnect iov_interconnect {
   .name = "IOV interconnect",
   .match =..
}

Then the exporters "subclass"

struct dma_buf_interconnect_ops vfio_iov_interconnect {
    .interconnect = &iov_interconnect,
    .map = vfio_map,
}

I guess no container_of technique..

Then in VFIO's attach trigger the new code:

   const struct dma_buf_interconnect_match vfio_exp_ics[] = {
        {&vfio_iov_interconnect},
    };

   dma_buf_match_interconnects(attach, &vfio_exp_ics))

Which will callback to the importer:

static const struct dma_buf_attach_ops xe_dma_buf_attach_ops = {
   .get_importer_interconnects
}

dma_buf_match_interconnects() would call
aops->get_importer_interconnects
and matchs first on .interconnect, then call the interconnect->match
function with exp/inpt match structs if not NULL.

> +struct dma_buf_interconnect_match {
> +	const struct dma_buf_interconnect *type;
> +	struct device *dev;
> +	unsigned int bar;
> +};

This should be more general, dev and bar are unique to the iov
importer. Maybe just simple:

struct dma_buf_interconnect_match {
    struct dma_buf_interconnect *ic; // no need for type
    const struct dma_buf_interconnct_ops *exporter_ic_ops;
    u64 match_data[2]; // dev and bar are IOV specific, generalize
};

Then some helper

       const struct dma_buf_interconnect_match supports_ics[] = {
          IOV_INTERCONNECT(&vfio_iov_interconnect, dev, bar),
       }

And it would be nice if interconnect aware drivers could more easially
interwork with non-interconnect importers.

So I'd add a exporter type of 'p2p dma mapped scatterlist' that just
matches the legacy importer.

Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
