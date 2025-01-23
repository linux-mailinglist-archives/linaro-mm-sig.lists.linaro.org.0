Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C3356A1A4B0
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 Jan 2025 14:09:21 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 236C244A43
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 Jan 2025 13:09:19 +0000 (UTC)
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (mail-mw2nam12on2081.outbound.protection.outlook.com [40.107.244.81])
	by lists.linaro.org (Postfix) with ESMTPS id 840EC3F57D
	for <linaro-mm-sig@lists.linaro.org>; Thu, 23 Jan 2025 13:09:03 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=Nvidia.com header.s=selector2 header.b=Xvd7NbiE;
	dmarc=pass (policy=reject) header.from=nvidia.com;
	spf=pass (lists.linaro.org: domain of jgg@nvidia.com designates 40.107.244.81 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=g7V5uD72m4wTws06H7PbZAqYXHl+lhvgGCLG2Aec/QZV3kMc4u14qmJykyZv98eb+coAU64pOLk6Nzkyx2HS5HV8OISHUJKkmO8ElSieHhfy0xkDMmhuWNrH29qLevMCWDyb2RhqsMoX0k0TbYEvNJK/lxHQ9JfW1qpzP0mS1tdwnYPfWVJuQsGWFd+pf4n73QivNDYWEp1Yd61JstufWgrxoVOXbXzAagNmbTcB/y7x8rLzsdb9TsUrASli45eusGL/dSaJP+FM9f48+WRq3C2/I9Q8FchS1bdPSelksbUBgRPTMMGnvkBJDVlJENH9RBDlXO+Eb4Vs/hbLB5IYnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SBvrlX2AU9GQsS5BkXHw9pZ5wjK2Zf70qkysT7YmKHQ=;
 b=onobT6w/7XxYn5X7gWBUu4Nv7c+F8OckNqRMJUL56lSyPMYbdShvoVK1a65iOFAv6dWmF9k/mQCD9teTZgQIUP7zsAOuVIVi2LtsXj220P4XYdw1H19fmVJkkZN5/kXk4fa88hWZsN1CYNWvRHgDB4FhAo20J2VPexbvF1zlh84DzW6DU789/Q2XqKJW1VdMFrjDsJ1SllfFfskrsinvHqj3Cv93wL5FOaLK95Tli/rXW6DCMkx2cLw1mIo/RyW4udcIGQF58FVy05h2S1IK1u0+u8hoH7z8vwftgrh53YUex7aMkx38FmWHu0SFSIoG2JuVI3H8oyBgzUtK+zGYFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SBvrlX2AU9GQsS5BkXHw9pZ5wjK2Zf70qkysT7YmKHQ=;
 b=Xvd7NbiE+OfU1pMsPQY5In8uJcPvebq7Oyxm6yc9pK0ZTKpvRKjBP4ozlhEp+E686UX52hrEkcqcQgSfFfBbsAdFRzd48KPU9vZHCXqBQ9QqvVvoAIk69Jkj/uUM5UW4QM+W5YpF4pst/qCDVcX66xlbqK0WAWJ8TYzGCDddzZhIAcikUnS//2ytbKTKetSA1/lp70mKi+XfK0Br1YZcdPo1XeMQuTdDKYkqhUeBRt5uftqdMpDNQ61Nrj/IG8liYBnmxk7DNvYAxnH5k0krI24yJa+QdB37jso6JR/kFzYrZm5UcKbEqQ+MQTc49I6uI/m+VukHTCOddijg2KBX9g==
Received: from CH3PR12MB8659.namprd12.prod.outlook.com (2603:10b6:610:17c::13)
 by MN0PR12MB5716.namprd12.prod.outlook.com (2603:10b6:208:373::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.21; Thu, 23 Jan
 2025 13:09:00 +0000
Received: from CH3PR12MB8659.namprd12.prod.outlook.com
 ([fe80::6eb6:7d37:7b4b:1732]) by CH3PR12MB8659.namprd12.prod.outlook.com
 ([fe80::6eb6:7d37:7b4b:1732%5]) with mapi id 15.20.8356.010; Thu, 23 Jan 2025
 13:09:00 +0000
Date: Thu, 23 Jan 2025 09:08:58 -0400
From: Jason Gunthorpe <jgg@nvidia.com>
To: Xu Yilun <yilun.xu@linux.intel.com>
Message-ID: <20250123130858.GI5556@nvidia.com>
References: <20250115130102.GM5556@nvidia.com>
 <f1ac048f-64b1-4343-ab86-ad98c24a44f5@linux.intel.com>
 <20250117132523.GA5556@nvidia.com>
 <Znh+uTMe/wX2RIJm@yilunxu-OptiPlex-7050>
 <20250120132525.GH5556@nvidia.com>
 <ZnnhKtA2n4s1CLyf@yilunxu-OptiPlex-7050>
 <20250121174303.GV5556@nvidia.com>
 <Z5B0+OcLWsiHLRIA@yilunxu-OptiPlex-7050>
 <20250122125512.GD5556@nvidia.com>
 <Z5HyxlaiXqp2/KOA@yilunxu-OptiPlex-7050>
Content-Disposition: inline
In-Reply-To: <Z5HyxlaiXqp2/KOA@yilunxu-OptiPlex-7050>
X-ClientProxiedBy: MN2PR08CA0011.namprd08.prod.outlook.com
 (2603:10b6:208:239::16) To CH3PR12MB8659.namprd12.prod.outlook.com
 (2603:10b6:610:17c::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR12MB8659:EE_|MN0PR12MB5716:EE_
X-MS-Office365-Filtering-Correlation-Id: 67e490f5-f084-435a-e378-08dd3baf1a1d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|7416014|366016;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?f7d0AGKMDSCvH6nRkKjuxwIMyIGQIWOUBS8V5LcudAMZnwP64VDO8bdNZ27O?=
 =?us-ascii?Q?2il6F4+9bFPt1WmbrDqDuNyb68ii3jr/ZItL00vUPsbBYAPiRhvhGVORHksH?=
 =?us-ascii?Q?B+1DRfN9cOk/pLD30G8BruBmYV44sq24fMFVNppWt+4amUvZvBJbo0vIhzTE?=
 =?us-ascii?Q?ATIlQSkb4lzLXkrTFP/YYcyhCWHx8CmZIO3gT/34yxou2pDjCD9sDT1PeK2X?=
 =?us-ascii?Q?CaseH5eWC1ekIsp0bjkj+ly3Tn6mpaLAK2pGe7H0/R0vqFYjvKb4zT9naxfF?=
 =?us-ascii?Q?jky/yNu23U47XUR40H+aqurPUoIQbu0SyvhfcfwI217OYNdasNi8R7cZ7F4s?=
 =?us-ascii?Q?kZRpygSbSYsOaBmcEoVkTHQYMwpGG8szR/fhVH5itNQxHdw00b1AM4J66pO6?=
 =?us-ascii?Q?7huIHYc7kw3z0mhTIBR9hF3jZpSjKlRCJVBqJ7xnRu4KzF9+tH2xUmfGXi8T?=
 =?us-ascii?Q?tTtWhXgP6efWgvY2sCQRWU7qX/IwT5XI13y2sv7B+L5qPKqUAk4mmlSTCs26?=
 =?us-ascii?Q?rHyGJqqL3fPDkVOhhUshvfopS0vqLmhAol/fcmc74HoXQ0WG952x1XTGijrx?=
 =?us-ascii?Q?X6NrncITqZtQHuV0zb36UhzSZNkLOnaq8hnU0KvNI3PZ2s7b3d2hVnwDvMsz?=
 =?us-ascii?Q?+/fDur4WbIk7gkurMbWmstKqn8WBlOrI1wYB8uYln/5aBIR3yLF19FXZ+3m6?=
 =?us-ascii?Q?s30ic83SBlN4aJZkzGKnEaYGKQsaow5se8OvK3PoCA0f3StYQx9VoII4PiOC?=
 =?us-ascii?Q?KhsOZj4NCPpUSC9BUY/Qov5ClB0sOTQy/ngklpb+qxZBY4sxrlHI2flx4Gjp?=
 =?us-ascii?Q?1F6cz0mxkKWhLsjKzrp59E7EQCa8qruX4Nwd2yOEKd3RoI8cn6xjZM86l5vH?=
 =?us-ascii?Q?I+6scwy/28+LKr/8Du+Eg7gcawBxgm+9rzfthDfxGSvGamqBxL99jlpJ6moj?=
 =?us-ascii?Q?WdZMFzCDc4IQhaobQ46RB0DN1giz0IQ+BzaI6iLygkdV1Z1HwkzTAGYBjuIV?=
 =?us-ascii?Q?le1mP8PFuvj0IzF1R+lX6zUDQSqOrGno/LwNeGgDZl7gbXrNR44uVUqdmcsB?=
 =?us-ascii?Q?vAingMcuUGeypGuPgIT461Q+VVMD2JdMtPTbCcUadojDAKaBm0XTAuw/jLs6?=
 =?us-ascii?Q?pdfnxQ8bX8ZDqDnoMi1eWm48m1tXXxhyvMRygElcO2eCwmmzePqOY3NtdIOk?=
 =?us-ascii?Q?rHvnoHmL0/BN8baQqrc7mTUwW0hd477NHi2z0PG5k8NBTWMjaHr9Cx01dJOm?=
 =?us-ascii?Q?aARkj12B/UI1P8YMhPjhGLxZX5eAcsF5Ke/fIB33r9LpiT6kAVanWDwuLt+Z?=
 =?us-ascii?Q?8KQUo86PVbc7B/G/G0rrhO0s3d6wJC4AlQheVAVTO2v0k4sxl16EcPVQDU95?=
 =?us-ascii?Q?Gpie5Jg=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR12MB8659.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(7416014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?F+WVboAOYjmDwinVO9XE8lBofXCKGuH8gdBziAK1YLXYCiAAyGZKOUwdfpVT?=
 =?us-ascii?Q?rOkXurOPJdMqOZeat/6ElpbPuuBFhVqbuAmtjLxZdl9JTkY0S9vXg8svzGAj?=
 =?us-ascii?Q?r3cKGl+zLQfDQ+iVVU1VKBaXHTWosStcYW+4oaPQDnyWjiw/u9zw45i4gbN3?=
 =?us-ascii?Q?J96jSLBkm9E/q545amoUFrvXY2OYqwdTZ/w0fU4duJISUSy6DfH0WRLz+O6g?=
 =?us-ascii?Q?c7YVqCppn8o+WiSH+KjtRKFDP1UsYTAb5/j1nPhi4VpqizRp6hUWtZCBAVr0?=
 =?us-ascii?Q?nrQ6CrBbzVdiqV2D/Xxmgf7xEU9vtqVAguEiv+gIX74lMKd5L5sF895ugvFl?=
 =?us-ascii?Q?FCP/+6btFt7pKXkWze+h/GqGmbS8NFAiE1xR29ic3vNE88ftcX4H5m4+qZ+r?=
 =?us-ascii?Q?h08hel7/egJnjTho/sxmA7jDFd7Dp3rrwDCdetFCHf3xz+irBXKKjTw3Adnm?=
 =?us-ascii?Q?YIVjEvlFemasdIGWlSml0cYpDafsjiVGspU4Drxsj4xTk5rnhbRDsgX+1Ceq?=
 =?us-ascii?Q?aPuTg0THH5rP24YVMXJB5nBTOnB3TQIHsyfv4x1z68Ou5KheU9p41dtB09xE?=
 =?us-ascii?Q?1LoBWYfHbw/QAJGzSxYHGEVWUTV+4t9iq/sHKLWCTxE4lOjEW5vkTt/cCyxS?=
 =?us-ascii?Q?DNfNz8LbwC8E9fd6OytowqA8eo4+FbqM6solQmhChiqA/ZGJDxza0KwXoo2B?=
 =?us-ascii?Q?S9uEp44hD/yFXoIEwLrrQvzw1kZI4MAvrAB8wxXo55Wz9GROh9hhzK8ejZX3?=
 =?us-ascii?Q?OWIhvWxVEzyP5wrinKtr4sdxn3GHJEN/Wu7FFEy3P85YEle/rVCDDQFdVvpx?=
 =?us-ascii?Q?Y9nZhU2CnzoI38KpjY/lwnz05RnglSgPL1BAVhd+X9OE+HdDwZDz/+EJJc51?=
 =?us-ascii?Q?hqbf4Vv7UQwO/tRxf0IPJUAeh+yKV/vjYj1xZnXNRxniG7Bkvc5hmDqyzbP8?=
 =?us-ascii?Q?D7YMaEqLG80OvoqNQ6LSip+f4G4CK1+BYPjYRHGg4Y2VYKcElVCD1J/Lke89?=
 =?us-ascii?Q?nFiMIRYwWKItViAGvIxzr+otmT2eAs2IeHRDwKeZ1YlocHYEQvsv82zyrYOa?=
 =?us-ascii?Q?SdjN8mohxeOneOruT791fK/8R/jtit1CJgKAlOiE1KTlqarkQBUTHRPzAgrm?=
 =?us-ascii?Q?3ImOTDAhLLz4DUG8vSvu1PvkdyDURPGqIgBSuXwk2+V8ukpAjq6I5o3RpCuq?=
 =?us-ascii?Q?CjHN/7W2E0965toXUTqFI/4CfrzLCfYvvGI5D3gUF2xq0ZjL5KLVg0oojxBT?=
 =?us-ascii?Q?Xxl8u1AhJX6sl/zET67/1V/XkleVtHz2xYCzKJi7n2Atua7kU+Bs4R+spco9?=
 =?us-ascii?Q?qQDBubC/SR3QBbOhNjRKEhV2LKEnFuV9fTdaGiuw0eo+UvS+S/isezSvORIm?=
 =?us-ascii?Q?2HIyDPU3mF+vEErQpxLYoux2IQCDJ8iSfhtscetRnW7quaqxtL59yOAFcbcx?=
 =?us-ascii?Q?qXM5NZjkZnPtyj+s2uWUDEVvhqHkwnp5QJwlqWov8ENvdg4/EosFZzC0O/S3?=
 =?us-ascii?Q?LhQjmOAQ2J7hh596eXi8CY+uYrm5BTVwnF83h4YcZm+Zta/N4Y5b3E34IzaY?=
 =?us-ascii?Q?TOVcgo8Va3O2R2BZ5pk=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 67e490f5-f084-435a-e378-08dd3baf1a1d
X-MS-Exchange-CrossTenant-AuthSource: CH3PR12MB8659.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2025 13:09:00.1380
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: G1+8LO9rfUjkdnUy1FtTmf7BeBmNq62vGwbUYZ8tyJRtqKpdEbhmjDaymjzsAo+b
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR12MB5716
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 840EC3F57D
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.99 / 15.00];
	BAYES_HAM(-2.99)[99.94%];
	RBL_SENDERSCORE_REPUT_9(-1.00)[40.107.244.81:from];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[nvidia.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[Nvidia.com:s=selector2];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.244.81:from];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	RCPT_COUNT_TWELVE(0.00)[23];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[Nvidia.com:+]
Message-ID-Hash: TRD4ZW7BSMFCRZF5YZ6BROUSLOLTULGW
X-Message-ID-Hash: TRD4ZW7BSMFCRZF5YZ6BROUSLOLTULGW
X-MailFrom: jgg@nvidia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Baolu Lu <baolu.lu@linux.intel.com>, Alexey Kardashevskiy <aik@amd.com>, kvm@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, sumit.semwal@linaro.org, christian.koenig@amd.com, pbonzini@redhat.com, seanjc@google.com, alex.williamson@redhat.com, vivek.kasireddy@intel.com, dan.j.williams@intel.com, yilun.xu@intel.com, linux-coco@lists.linux.dev, linux-kernel@vger.kernel.org, lukas@wunner.de, yan.y.zhao@intel.com, leon@kernel.org, zhenzhong.duan@intel.com, tao1.su@intel.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 08/12] vfio/pci: Create host unaccessible dma-buf for private device
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TRD4ZW7BSMFCRZF5YZ6BROUSLOLTULGW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Jan 23, 2025 at 03:41:58PM +0800, Xu Yilun wrote:

> I don't have a complete idea yet. But the goal is not to make any
> existing driver seamlessly work with secure device. It is to provide a
> generic way for bind/attestation/accept, and may save driver's effort
> if they don't care about this startup process. There are plenty of
> operations that a driver can't do to a secure device, FLR is one of
> them. The TDISP SPEC has described some general rules but some are even
> device specific.

You can FLR a secure device, it just has to be re-secured and
re-attested after. Otherwise no VFIO for you.

> So I think a driver (including VFIO) expects change to support trusted
> device, but may not have to cover bind/attestation/accept flow.

I expect changes, but not fundamental ones. VFIO will still have to
FLR devices as part of it's security architecture.

The entire flow needs to have options for drivers to be involved in
the flow, somehow.

Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
