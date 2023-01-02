Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E426365BAA2
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  3 Jan 2023 07:31:06 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F12033EF47
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  3 Jan 2023 06:31:05 +0000 (UTC)
Received: from mx0b-0039f301.pphosted.com (mx0b-0039f301.pphosted.com [148.163.137.242])
	by lists.linaro.org (Postfix) with ESMTPS id 2AB9C3E973
	for <linaro-mm-sig@lists.linaro.org>; Mon,  2 Jan 2023 13:42:06 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=epam.com header.s=selector2 header.b=kyQSl3x6;
	spf=pass (lists.linaro.org: domain of "prvs=53661eeefc=oleksii_moisieiev@epam.com" designates 148.163.137.242 as permitted sender) smtp.mailfrom="prvs=53661eeefc=oleksii_moisieiev@epam.com";
	dmarc=pass (policy=quarantine) header.from=epam.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1")
Received: from pps.filterd (m0174682.ppops.net [127.0.0.1])
	by mx0b-0039f301.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 302Bx46F011991;
	Mon, 2 Jan 2023 13:41:53 GMT
Received: from eur04-he1-obe.outbound.protection.outlook.com (mail-he1eur04lp2054.outbound.protection.outlook.com [104.47.13.54])
	by mx0b-0039f301.pphosted.com (PPS) with ESMTPS id 3mtd0uv746-4
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 02 Jan 2023 13:41:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NkZR2Py/TQGVGAtl5cGJv1VL4Uut2A5KCLn+PZA2+PahhoQxhJfFgBzXYobMhmnvwoQDDf1UPAPIAsKYUVz2VtVdIH28gm/63gX/KGa92kpexRt8qfbuTm34A0hcnDAxdR3W6kdBSPBZqNMgPNjRu2WYbg0v7Syvo3liHnR6TW/SE8iib0z9Sw/KFwelpQnen+080mK/wfas635JZy9b9xApywDMGlZkRkTdPYpRlX8Nm/NZaxuqr2yVOV9MmxM5C1mAOKUzmQPZl0TwKMZuWvxauR0Mfuj07U7Cojj0W3nnNCqaogfpxk4gdAMbLrJtjBAekEAGo+k1yWs189e3FA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cpM/GTVcMI8fqBjEBRN4Lty7tXpejC9G2s04LY0mrJs=;
 b=EEzdH3VRQ7JISgO3Pm+5rcqC6ss0N1f4FcqAxW5dcJmGSxaDB859fVc3LQ4f/Bdr/tnhen8I3FfVCcbqmj4jZcqPajiIzCpxry/oXPoEV0z5xjKCX7l14AxanffYJW4YyyyFc5GVBWXjPPe/okzQ13nsZtVgMFZLkT4Vn99ZKoslkVtzmHX4HT2psk9WzwNbrWZ8bsjeX4dXB6/EMstLiL2hL+7+PZPjMKBKcM4ziGsPKYhrIepHW4hk2BS1RHoRBE/4jhbMW8Sg6NyTh3fw6w5QTxvmQd3PBLTEmWgOKkn5syANpoOidPdWqXNii+7QS0dKLeR3Byexzhx0mamHnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=epam.com; dmarc=pass action=none header.from=epam.com;
 dkim=pass header.d=epam.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=epam.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cpM/GTVcMI8fqBjEBRN4Lty7tXpejC9G2s04LY0mrJs=;
 b=kyQSl3x6MrFAKpRga7jcWIrq4nfcd2PTWuhf4JjUdeSs3A7u8UN/ApDCsby083Ir7XLZ+4/4TJk9cCjrP/GxTX5sgqaDOnWgFWTeLQlciVCtrrIU9pCMA23IbTFnhZ1Y9G6bm/KJmVZ3iu+UpdaWL9iFvia+lrRYtvBGAO38poY+SDZbV+O3I2s+FFLzBv7h3mLk/JKYnPqFVfsjwJs3OJO+GPDZ5MHfjwP+PgouVa5bO1H+usu3J8P0l2Bb6bff0Xqpc8ACHazLsRrSugtkfpgMaEueGGmNh0ogmvkswRXcxd3Wgnmg1WTU3ZKQ80uBwG1qlMtPzVYPlhE1D5YRMw==
Received: from PA4PR03MB7136.eurprd03.prod.outlook.com (2603:10a6:102:ea::23)
 by DB9PR03MB9709.eurprd03.prod.outlook.com (2603:10a6:10:459::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Mon, 2 Jan
 2023 13:41:49 +0000
Received: from PA4PR03MB7136.eurprd03.prod.outlook.com
 ([fe80::2da6:6d63:389b:3552]) by PA4PR03MB7136.eurprd03.prod.outlook.com
 ([fe80::2da6:6d63:389b:3552%9]) with mapi id 15.20.5944.019; Mon, 2 Jan 2023
 13:41:49 +0000
From: Oleksii Moisieiev <Oleksii_Moisieiev@epam.com>
To: "jgross@suse.com" <jgross@suse.com>
Thread-Topic: [PATCH v1 3/3] xen/grant-table: add new ioctls to map dmabuf to
 existing fd
Thread-Index: AQHZHq/2ph/BnX8oTk+YEfKPDbopCA==
Date: Mon, 2 Jan 2023 13:41:49 +0000
Message-ID: 
 <157bd897b4dd50b3c724722090b804440914c3cf.1672666311.git.oleksii_moisieiev@epam.com>
References: <cover.1672666311.git.oleksii_moisieiev@epam.com>
In-Reply-To: <cover.1672666311.git.oleksii_moisieiev@epam.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PA4PR03MB7136:EE_|DB9PR03MB9709:EE_
x-ms-office365-filtering-correlation-id: 1c96edab-5a77-4b99-3495-08daecc71979
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 fAYApRAI95RYBFTJ84xgUdQh8nwOqFcHmW6e4jmqZfdGqkMYneO/J61PZb2X53TTM6IsMtxHGOWXEqjpiqfknllLuklpWu8+7hYEAIReTjLzdPBw7upIOsmejItupVabytOWiyZW6TaLvjx1JDH0tZAe0l595aaVxXTGY8oWDpWF+DH94QgzqoscUNVHVEnHUkdz/xhybEd/v71F5nppfdeMgkuRe6djsWI+ApEJeTAymu9ZnmblPV7+JKY1ZdC9v62fsjVBAHoQ9tw04K3Q7JCSvkgA+E412eAh1E6Yo3tIUn6ITiNi5fGjl91fd38YanuTYZodEJ1Kvhvx57fwfs4xKi+zE1BnI6dW8qPPkyRbl5vMWmD/85BH+l7GJYhekfbTvTiGswc6TpVAL8xx8Fo5iLfe0TRK/uSR+a7pDH6cWYrCXvP24qt7DAWQSmC3C5INOs/QB3zuUHWDSIKOvQdq7eSKNzmR9LvWq/HKAZZcVWvJOsEIvb2d+UawzAr8uUrmwfu8XMIANhyFi1wqFwHwBu5FrLbNQ77b7PsiTaulriuKWMHaoX7jsdXu0l8AhhQx65Bb4zacsTMoO3KC9mN9Fb+ibKRsFXsd3AeGw/zDJJivIVsXKdmbti7VDsidzp1Z3st1VJq/VscBwS98eiQkWEC1TGm3Tvps7Fum1qqh9SklgWuLpcCNS31PfOZA5l9XgjNLuRI0xWKQYd1IN+qQEZTvASbhQPgP6eYm4J8Oi3QHsmx37Vp/EGJC+gyD
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR03MB7136.eurprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(396003)(346002)(136003)(376002)(39860400002)(366004)(451199015)(38100700002)(122000001)(86362001)(8676002)(38070700005)(66476007)(76116006)(66946007)(64756008)(66446008)(66556008)(6916009)(91956017)(4326008)(41300700001)(54906003)(316002)(2906002)(5660300002)(8936002)(30864003)(2616005)(83380400001)(6512007)(478600001)(71200400001)(6486002)(6506007)(26005)(55236004)(186003)(36756003)(22166006)(21314003)(579004)(559001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?SiGlTnYNPDw2YpnUzSo6FpTU+eS1V6Hg5OD2RkL6vKuPrNo8IBCWnG0z7S?=
 =?iso-8859-1?Q?WBGx1espg5fyI3QzgfX7olheSlizTxfW5qdDpIqsJimXnwH3rfIvoNXkoy?=
 =?iso-8859-1?Q?XqJtIIiE/3ToUosbcI0LXN+Q5AvOheCg35ov2CL/As8sv/vvSALHr0TFnd?=
 =?iso-8859-1?Q?UlmStJ9KuIBsmPqwOcunDnRWvkBgUcUgZMtVKWqXMFexIhhKwQl4XjTxSE?=
 =?iso-8859-1?Q?r2zwAt7JGRGSx0VhqhFyd+socMt5My6h4oP07SGvxnKj7TSqym8MjXUv/+?=
 =?iso-8859-1?Q?DI4d69HysRmUpP0uFgfrxfVsAdbOcrDkSgSkOsURxE7SiqrFm+PWG9mNxH?=
 =?iso-8859-1?Q?SCPmqQOOaRLDx7sOpZ7+K9B+gvahNYRBndIht8m09aSlOPWueDGUU/4uH9?=
 =?iso-8859-1?Q?+XIP19g8B9ry2b83Zy6bIA3Liun1+RLJLqZ9HrZrq2rOY5E6RSVkimzM+l?=
 =?iso-8859-1?Q?nzHtvxx/F3OfFMbFcWEk0jDZEQcdwqFUQMFISGmU2S+kU37B98UPtBTAVD?=
 =?iso-8859-1?Q?4XdR2IEguZN5MBtVIXdUEpb7hNu0aB6o/9jWtA3em9NdPDionCaIw1z1Il?=
 =?iso-8859-1?Q?oDGQ693RDtgG7v+tsPRC96iYJkaUzqIVxz4hrDgeOcOV+CoV3bOacyrv/y?=
 =?iso-8859-1?Q?ylKYGU7eyVj0bbDqf46aUj2IVlq4wviiGk3fEYuCcnQbuOro+LWP2jJoYi?=
 =?iso-8859-1?Q?+F78DqHY8TKbvvlFTPEi4kaLysLqIMg8KRk2KQBNRGx+v94swe5jw0uebs?=
 =?iso-8859-1?Q?GjNsf3PG0fmBYyjT7rG9+Ya8YCKDUcUB7pm19dcg95Gi4rmiX9Yo8pkdHr?=
 =?iso-8859-1?Q?0sOY7Szifb2rXh5AbbhKG5bETxeamg0F/vGjgCrALjwY7A2ifW9URopXeu?=
 =?iso-8859-1?Q?6sBlEfCl2VwIxGmwmWUXryiZgRlklZ/VFmx9Ww0KqF9ukVWKtOnGcm6vca?=
 =?iso-8859-1?Q?3Xwt8TtNQQxDtWZhiUpJZvFdF4SwkCP48qmGo5DwsDL4EFzGvGvIc9/2iu?=
 =?iso-8859-1?Q?LrEW+9HObIFTZPLEEwX8KSXSsChpxzrKhADvZws56emjs0GieP45wR4sfu?=
 =?iso-8859-1?Q?0Mqr5KdqXaDg9mr9wtjpc194o7WNZqGdKADYa1yvwDGdd2mOV6AG6t3FdG?=
 =?iso-8859-1?Q?OOw2l9KFW4giqjZONbNPCRDdXOlQ+mBI7UyoYc5UkuE+L/1VPBvwLTniNO?=
 =?iso-8859-1?Q?YzJAs4W6Lf+p4zePK7D4v2AVf0Tv5HO/5Fm0hfy7a9Wm6KJ4QaVyyKa9An?=
 =?iso-8859-1?Q?8/mLO5BpQrzdo/9zLsTDjnoF7jZVGaPkzLQ8IBDY+nVN6xmzZFRtyq+R0j?=
 =?iso-8859-1?Q?pcjxgUPYZx/PieIoKhbcg8feNMUG/gk3+VtGsDsH/xXhrlEk/CCPl3+df5?=
 =?iso-8859-1?Q?KuAPCG4bLtvxrdnotVskz37kiofFcIhmpfbdbBjihdv2REoVwJO5CFMbRc?=
 =?iso-8859-1?Q?roAx6vDRp6jZ2PTddgCwlU3Lx/8G/2tibtqfLIXq5y7LDLPBeYrXEC4W13?=
 =?iso-8859-1?Q?qqjZ9aQhOQdlU/vGbjsjuW4PsPHIPng7Syi4Hpl92p/1P4a/RxQKSuY56M?=
 =?iso-8859-1?Q?UZmIBd2cDqkhqUQWFXWqcFLR2n32uaQvyG7q60eb5CEdymGDbPlYbPw3FA?=
 =?iso-8859-1?Q?2+SDqBbY+WHRph7Lg7/ZyTLn04nfk2kZ0IGbKXItgLvqXWr9osn9ygoA?=
 =?iso-8859-1?Q?=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: epam.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PA4PR03MB7136.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c96edab-5a77-4b99-3495-08daecc71979
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jan 2023 13:41:49.5742
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b41b72d0-4e9f-4c26-8a69-f949f367c91d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kgZ/vtfEM6LlGzuqzZbCumY3cAdnlx9y0l19k7z+nFTx/NM3mYE1FHEWj5HVsRXv4EsKbXXLQ6aU7sRFK9pQuJq363AyXdHlrfgtaAbpv0w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR03MB9709
X-Proofpoint-GUID: zqExVzAwob7QUgCeIbSNQg5wp2GNIpKB
X-Proofpoint-ORIG-GUID: zqExVzAwob7QUgCeIbSNQg5wp2GNIpKB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.923,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2023-01-02_08,2022-12-30_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999 phishscore=0
 lowpriorityscore=0 bulkscore=0 impostorscore=0 spamscore=0
 priorityscore=1501 adultscore=0 suspectscore=0 mlxscore=0 malwarescore=0
 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2301020124
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[epam.com,quarantine];
	R_DKIM_ALLOW(-0.20)[epam.com:s=selector2];
	R_SPF_ALLOW(-0.20)[+ip4:148.163.137.242:c];
	MIME_GOOD(-0.10)[text/plain];
	DBL_BLOCKED_OPENRESOLVER(0.00)[epam.com:email,epam.com:dkim,args.dev:url];
	ASN(0.00)[asn:22843, ipnet:148.163.137.0/24, country:US];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FORGED_SENDER_VERP_SRS(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	DKIM_TRACE(0.00)[epam.com:+];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-0.993];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[Oleksii_Moisieiev@epam.com,prvs=53661eeefc=oleksii_moisieiev@epam.com]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 2AB9C3E973
X-Spamd-Bar: ----
X-MailFrom: prvs=53661eeefc=oleksii_moisieiev@epam.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: QC6LWVRTY6IPNRH5Q6CNPJGNOG5OF6ZT
X-Message-ID-Hash: QC6LWVRTY6IPNRH5Q6CNPJGNOG5OF6ZT
X-Mailman-Approved-At: Tue, 03 Jan 2023 06:30:29 +0000
CC: Oleksii Moisieiev <Oleksii_Moisieiev@epam.com>, Stefano Stabellini <sstabellini@kernel.org>, Oleksandr Tyshchenko <Oleksandr_Tyshchenko@epam.com>, "xen-devel@lists.xenproject.org" <xen-devel@lists.xenproject.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?iso-8859-1?Q?Christian_K=F6nig?= <christian.koenig@amd.com>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v1 3/3] xen/grant-table: add new ioctls to map dmabuf to existing fd
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FU3YQ5PSZHLIK7IJNMSYJSOWIVRZCPQI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Add new ioctls to allow gntdev to map scatter-gather table on
top of the existing dmabuf, referenced by file descriptor.

When using dma-buf exporter to create dma-buf with backing storage and
map it to the grant refs, provided from the domain, we've met a problem,
that several HW (i.MX8 gpu in our case) do not support external buffer
and requires backing storage to be created using it's native tools.
That's why new ioctls were added to be able to pass existing dma-buffer
fd as input parameter and use it as backing storage to export to refs.

Following calls were added:
IOCTL_GNTDEV_DMABUF_MAP_REFS_TO_BUF - map existing buffer as the backing
storage and export it to the provided grant refs;
IOCTL_GNTDEV_DMABUF_MAP_RELEASE - detach buffer from the grant table and
set notification to unmap grant refs before releasing the external
buffer. After this call the external buffer should be detroyed.
IOCTL_GNTDEV_DMABUF_MAP_WAIT_RELEASED - wait for timeout until buffer is
completely destroyed and gnt refs unmapped so domain could free grant
pages.

Signed-off-by: Oleksii Moisieiev <oleksii_moisieiev@epam.com>
---
 drivers/xen/gntdev-common.h |   8 +-
 drivers/xen/gntdev-dmabuf.c | 416 +++++++++++++++++++++++++++++++++++-
 drivers/xen/gntdev-dmabuf.h |   7 +
 drivers/xen/gntdev.c        | 101 ++++++++-
 drivers/xen/grant-table.c   |  57 +++--
 include/uapi/xen/gntdev.h   |  62 ++++++
 include/xen/grant_table.h   |   5 +
 7 files changed, 626 insertions(+), 30 deletions(-)

diff --git a/drivers/xen/gntdev-common.h b/drivers/xen/gntdev-common.h
index 9c286b2a1900..3b6980df3f9d 100644
--- a/drivers/xen/gntdev-common.h
+++ b/drivers/xen/gntdev-common.h
@@ -61,6 +61,10 @@ struct gntdev_grant_map {
 	bool *being_removed;
 	struct page **pages;
 	unsigned long pages_vm_start;
+	unsigned int preserve_pages;
+
+	/* Needed to avoid allocation in gnttab_dma_free_pages(). */
+	xen_pfn_t *frames;
 
 #ifdef CONFIG_XEN_GRANT_DMA_ALLOC
 	/*
@@ -73,8 +77,6 @@ struct gntdev_grant_map {
 	int dma_flags;
 	void *dma_vaddr;
 	dma_addr_t dma_bus_addr;
-	/* Needed to avoid allocation in gnttab_dma_free_pages(). */
-	xen_pfn_t *frames;
 #endif
 
 	/* Number of live grants */
@@ -85,6 +87,8 @@ struct gntdev_grant_map {
 
 struct gntdev_grant_map *gntdev_alloc_map(struct gntdev_priv *priv, int count,
 					  int dma_flags);
+struct gntdev_grant_map *gntdev_get_alloc_from_fd(struct gntdev_priv *priv,
+					  struct sg_table *sgt, int count, int dma_flags);
 
 void gntdev_add_map(struct gntdev_priv *priv, struct gntdev_grant_map *add);
 
diff --git a/drivers/xen/gntdev-dmabuf.c b/drivers/xen/gntdev-dmabuf.c
index 940e5e9e8a54..71d3bfee72aa 100644
--- a/drivers/xen/gntdev-dmabuf.c
+++ b/drivers/xen/gntdev-dmabuf.c
@@ -10,14 +10,18 @@
 
 #include <linux/kernel.h>
 #include <linux/errno.h>
+#include <linux/delay.h>
 #include <linux/dma-buf.h>
+#include <linux/dma-resv.h>
 #include <linux/slab.h>
 #include <linux/types.h>
 #include <linux/uaccess.h>
 #include <linux/module.h>
+#include <linux/notifier.h>
 
 #include <xen/xen.h>
 #include <xen/grant_table.h>
+#include <xen/mem-reservation.h>
 
 #include "gntdev-common.h"
 #include "gntdev-dmabuf.h"
@@ -46,6 +50,18 @@ struct gntdev_dmabuf {
 			/* dma-buf attachment of the imported buffer. */
 			struct dma_buf_attachment *attach;
 		} imp;
+		struct {
+			/* Scatter-gather table of the mapped buffer. */
+			struct sg_table *sgt;
+			/* dma-buf attachment of the mapped buffer. */
+			struct dma_buf_attachment *attach;
+			/* map table */
+			struct gntdev_grant_map *map;
+			/* frames table for memory reservation */
+			xen_pfn_t *frames;
+
+			struct gntdev_priv *priv;
+		} map;
 	} u;
 
 	/* Number of pages this buffer has. */
@@ -57,6 +73,7 @@ struct gntdev_dmabuf {
 struct gntdev_dmabuf_wait_obj {
 	struct list_head next;
 	struct gntdev_dmabuf *gntdev_dmabuf;
+	int fd;
 	struct completion completion;
 };
 
@@ -72,6 +89,10 @@ struct gntdev_dmabuf_priv {
 	struct list_head exp_wait_list;
 	/* List of imported DMA buffers. */
 	struct list_head imp_list;
+	/* List of mapped DMA buffers. */
+	struct list_head map_list;
+	/* List of wait objects. */
+	struct list_head map_wait_list;
 	/* This is the lock which protects dma_buf_xxx lists. */
 	struct mutex lock;
 	/*
@@ -88,6 +109,64 @@ struct gntdev_dmabuf_priv {
 
 static void dmabuf_exp_release(struct kref *kref);
 
+static struct gntdev_dmabuf_wait_obj *
+dmabuf_map_wait_obj_find(struct gntdev_dmabuf_priv *priv, int fd)
+{
+	struct gntdev_dmabuf_wait_obj *obj, *ret = ERR_PTR(-ENOENT);
+
+	mutex_lock(&priv->lock);
+	list_for_each_entry(obj, &priv->map_wait_list, next)
+		if (obj->fd == fd) {
+			pr_debug("Found gntdev_dmabuf in the wait list\n");
+			ret = obj;
+			break;
+		}
+	mutex_unlock(&priv->lock);
+
+	return ret;
+}
+
+static void dmabuf_exp_wait_obj_free(struct gntdev_dmabuf_priv *priv,
+			struct gntdev_dmabuf_wait_obj *obj);
+
+static int
+dmabuf_map_wait_obj_set(struct gntdev_dmabuf_priv *priv,
+			struct gntdev_dmabuf *gntdev_dmabuf, int fd)
+{
+	struct gntdev_dmabuf_wait_obj *obj;
+
+	obj = dmabuf_map_wait_obj_find(gntdev_dmabuf->priv, fd);
+	if ((!obj) || (PTR_ERR(obj) == -ENOENT)) {
+		obj = kzalloc(sizeof(*obj), GFP_KERNEL);
+		if (!obj)
+			return -ENOMEM;
+	}
+
+	init_completion(&obj->completion);
+	obj->gntdev_dmabuf = gntdev_dmabuf;
+	obj->fd = fd;
+	mutex_lock(&priv->lock);
+	list_add(&obj->next, &priv->map_wait_list);
+	mutex_unlock(&priv->lock);
+	return 0;
+}
+
+static void dmabuf_map_wait_obj_signal(struct gntdev_dmabuf_priv *priv,
+				       struct gntdev_dmabuf *gntdev_dmabuf)
+{
+	struct gntdev_dmabuf_wait_obj *obj;
+
+	mutex_lock(&priv->lock);
+	list_for_each_entry(obj, &priv->map_wait_list, next)
+		if (obj->gntdev_dmabuf == gntdev_dmabuf) {
+			pr_debug("Found gntdev_dmabuf in the wait list, wake\n");
+			complete_all(&obj->completion);
+			break;
+		}
+
+	mutex_unlock(&priv->lock);
+}
+
 static struct gntdev_dmabuf_wait_obj *
 dmabuf_exp_wait_obj_new(struct gntdev_dmabuf_priv *priv,
 			struct gntdev_dmabuf *gntdev_dmabuf)
@@ -410,6 +489,18 @@ static int dmabuf_exp_from_pages(struct gntdev_dmabuf_export_args *args)
 	return ret;
 }
 
+static void dmabuf_map_free_gntdev_dmabuf(struct gntdev_dmabuf *gntdev_dmabuf)
+{
+	if (!gntdev_dmabuf)
+		return;
+
+	kfree(gntdev_dmabuf->pages);
+
+	kvfree(gntdev_dmabuf->u.map.frames);
+	kfree(gntdev_dmabuf);
+	gntdev_dmabuf = NULL;
+}
+
 static struct gntdev_grant_map *
 dmabuf_exp_alloc_backing_storage(struct gntdev_priv *priv, int dmabuf_flags,
 				 int count)
@@ -432,6 +523,113 @@ dmabuf_exp_alloc_backing_storage(struct gntdev_priv *priv, int dmabuf_flags,
 	return map;
 }
 
+static void dmabuf_map_remove(struct gntdev_priv *priv,
+		  struct gntdev_dmabuf *gntdev_dmabuf)
+{
+	dmabuf_exp_remove_map(priv, gntdev_dmabuf->u.map.map);
+	dmabuf_map_free_gntdev_dmabuf(gntdev_dmabuf);
+}
+
+static struct gntdev_dmabuf *
+dmabuf_alloc_gntdev_from_buf(struct gntdev_priv *priv, int fd, int dmabuf_flags,
+						 int count, unsigned int data_ofs)
+{
+	struct gntdev_dmabuf *gntdev_dmabuf;
+	struct dma_buf_attachment *attach;
+	struct dma_buf *dma_buf;
+	struct sg_table *sgt;
+	int ret = 0;
+
+	gntdev_dmabuf = kzalloc(sizeof(*gntdev_dmabuf), GFP_KERNEL);
+	if (!gntdev_dmabuf)
+		return ERR_PTR(-ENOMEM);
+
+	gntdev_dmabuf->pages = kcalloc(count,
+		sizeof(gntdev_dmabuf->pages[0]), GFP_KERNEL);
+
+	if (!gntdev_dmabuf->pages) {
+		ret = -ENOMEM;
+		goto free;
+	}
+
+	gntdev_dmabuf->u.map.frames = kvcalloc(count,
+		sizeof(gntdev_dmabuf->u.map.frames[0]), GFP_KERNEL);
+	if (!gntdev_dmabuf->u.map.frames) {
+		ret = -ENOMEM;
+		goto free;
+	}
+
+	if (gntdev_test_page_count(count)) {
+		ret = -EINVAL;
+		goto free;
+	}
+
+	dma_buf = dma_buf_get(fd);
+	if (IS_ERR_OR_NULL(dma_buf)) {
+		pr_debug("Unable to get dmabuf from fd\n");
+		ret = PTR_ERR(dma_buf);
+		goto free;
+	}
+
+	attach = dma_buf_attach(dma_buf, priv->dma_dev);
+	if (IS_ERR_OR_NULL(attach)) {
+		ret = PTR_ERR(attach);
+		goto fail_put;
+	}
+
+	sgt = dma_buf_map_attachment(attach, DMA_BIDIRECTIONAL);
+	if (IS_ERR_OR_NULL(sgt)) {
+		ret = PTR_ERR(sgt);
+		goto fail_detach;
+	}
+
+	if (sgt->sgl->offset != data_ofs) {
+		pr_debug("DMA buffer offset %d, user-space expects %d\n",
+			 sgt->sgl->offset, data_ofs);
+		ret = -EINVAL;
+		goto fail_unmap;
+	}
+
+	/* Check number of pages that imported buffer has. */
+	if (attach->dmabuf->size < count << PAGE_SHIFT) {
+		pr_debug("DMA buffer has %zu pages, user-space expects %d\n",
+			 attach->dmabuf->size, count << PAGE_SHIFT);
+		ret = -EINVAL;
+		goto fail_unmap;
+	}
+
+	gntdev_dmabuf->u.map.map = gntdev_get_alloc_from_fd(priv, sgt, count,
+									dmabuf_flags);
+	if (IS_ERR_OR_NULL(gntdev_dmabuf->u.map.map)) {
+		ret = -ENOMEM;
+		goto fail_unmap;
+	};
+
+	gntdev_dmabuf->priv = priv->dmabuf_priv;
+	gntdev_dmabuf->fd = fd;
+	gntdev_dmabuf->u.map.attach = attach;
+	gntdev_dmabuf->u.map.sgt = sgt;
+	gntdev_dmabuf->dmabuf = dma_buf;
+	gntdev_dmabuf->nr_pages = count;
+	gntdev_dmabuf->u.map.priv = priv;
+
+	memcpy(gntdev_dmabuf->pages, gntdev_dmabuf->u.map.map->pages, count *
+			sizeof(gntdev_dmabuf->u.map.map->pages[0]));
+	memcpy(gntdev_dmabuf->u.map.frames, gntdev_dmabuf->u.map.map->frames, count *
+			sizeof(gntdev_dmabuf->u.map.map->frames[0]));
+
+	return gntdev_dmabuf;
+fail_unmap:
+	dma_buf_unmap_attachment(attach, sgt, DMA_BIDIRECTIONAL);
+fail_detach:
+	dma_buf_detach(dma_buf, attach);
+fail_put:
+	dma_buf_put(dma_buf);
+free:
+	dmabuf_map_free_gntdev_dmabuf(gntdev_dmabuf);
+	return ERR_PTR(ret);
+}
+
 static int dmabuf_exp_from_refs(struct gntdev_priv *priv, int flags,
 				int count, u32 domid, u32 *refs, u32 *fd)
 {
@@ -481,6 +679,117 @@ static int dmabuf_exp_from_refs(struct gntdev_priv *priv, int flags,
 	return ret;
 }
 
+static void dmabuf_release_notifier_cb(struct dma_buf *dmabuf, void *priv)
+{
+	struct gntdev_dmabuf *gntdev_dmabuf = priv;
+
+	if (!gntdev_dmabuf)
+		return;
+
+	dmabuf_map_remove(gntdev_dmabuf->u.map.priv, gntdev_dmabuf);
+	dmabuf_map_wait_obj_signal(gntdev_dmabuf->priv, gntdev_dmabuf);
+}
+
+static int dmabuf_detach_map(struct gntdev_dmabuf *gntdev_dmabuf)
+{
+	struct dma_buf *dma_buf = gntdev_dmabuf->dmabuf;
+	long lret;
+
+	/* Wait on any implicit fences */
+	lret = dma_resv_wait_timeout(dma_buf->resv,
+					dma_resv_usage_rw(true), true,
+					MAX_SCHEDULE_TIMEOUT);
+	if (lret == 0)
+		return -ETIME;
+	else if (lret < 0)
+		return lret;
+
+	if (gntdev_dmabuf->u.map.sgt) {
+		dma_buf_unmap_attachment(gntdev_dmabuf->u.map.attach,
+				gntdev_dmabuf->u.map.sgt, DMA_BIDIRECTIONAL);
+	}
+
+	dma_buf_detach(dma_buf, gntdev_dmabuf->u.map.attach);
+	dma_buf_put(dma_buf);
+
+	return 0;
+}
+
+static int dmabuf_map_release(struct gntdev_dmabuf *gntdev_dmabuf, bool sync)
+{
+	int ret;
+
+	if (!sync) {
+		ret = dmabuf_map_wait_obj_set(gntdev_dmabuf->priv, gntdev_dmabuf,
+					gntdev_dmabuf->fd);
+		if (ret)
+			return ret;
+	}
+
+	ret = dmabuf_detach_map(gntdev_dmabuf);
+	if (ret)
+		return ret;
+
+	if (!sync) {
+		ret = dma_buf_register_release_notifier(gntdev_dmabuf->dmabuf,
+						  &dmabuf_release_notifier_cb, gntdev_dmabuf);
+		if (ret)
+			return ret;
+	} else {
+		dmabuf_map_remove(gntdev_dmabuf->u.map.priv, gntdev_dmabuf);
+	}
+
+	return 0;
+}
+
+static int dmabuf_map_refs_to_fd(struct gntdev_priv *priv, int flags,
+			int count, u32 domid, u32 *refs, u32 fd,
+				unsigned int data_ofs)
+{
+	struct gntdev_dmabuf *gntdev_dmabuf;
+	int i, ret;
+
+	gntdev_dmabuf = dmabuf_alloc_gntdev_from_buf(priv, fd, flags, count,
+						data_ofs);
+
+	if (IS_ERR_OR_NULL(gntdev_dmabuf)) {
+		ret = PTR_ERR(gntdev_dmabuf);
+		goto fail_gntdev;
+	}
+
+	for (i = 0; i < count; i++) {
+		gntdev_dmabuf->u.map.map->grants[i].domid = domid;
+		gntdev_dmabuf->u.map.map->grants[i].ref = refs[i];
+	}
+
+	mutex_lock(&priv->lock);
+	gntdev_add_map(priv, gntdev_dmabuf->u.map.map);
+	mutex_unlock(&priv->lock);
+
+	gntdev_dmabuf->u.map.map->flags |= GNTMAP_host_map;
+#if defined(CONFIG_X86)
+	gntdev_dmabuf->u.map.map->flags |= GNTMAP_device_map;
+#endif
+
+	ret = gntdev_map_grant_pages(gntdev_dmabuf->u.map.map);
+	if (ret < 0)
+		goto fail;
+
+	mutex_lock(&priv->lock);
+	list_add(&gntdev_dmabuf->next, &priv->dmabuf_priv->map_list);
+	mutex_unlock(&priv->lock);
+
+	return 0;
+fail:
+	mutex_lock(&priv->lock);
+	list_del(&gntdev_dmabuf->u.map.map->next);
+	mutex_unlock(&priv->lock);
+	dmabuf_detach_map(gntdev_dmabuf);
+	dmabuf_map_free_gntdev_dmabuf(gntdev_dmabuf);
+fail_gntdev:
+	return ret;
+}
+
 /* DMA buffer import support. */
 
 static int
@@ -673,14 +982,15 @@ dmabuf_imp_to_refs(struct gntdev_dmabuf_priv *priv, struct device *dev,
  * it from the buffer's list.
  */
 static struct gntdev_dmabuf *
-dmabuf_imp_find_unlink(struct gntdev_dmabuf_priv *priv, int fd)
+dmabuf_list_find_unlink(struct gntdev_dmabuf_priv *priv, struct list_head *list,
+		int fd)
 {
 	struct gntdev_dmabuf *q, *gntdev_dmabuf, *ret = ERR_PTR(-ENOENT);
 
 	mutex_lock(&priv->lock);
-	list_for_each_entry_safe(gntdev_dmabuf, q, &priv->imp_list, next) {
+	list_for_each_entry_safe(gntdev_dmabuf, q, list, next) {
 		if (gntdev_dmabuf->fd == fd) {
-			pr_debug("Found gntdev_dmabuf in the import list\n");
+			pr_debug("Found gntdev_dmabuf in the list\n");
 			ret = gntdev_dmabuf;
 			list_del(&gntdev_dmabuf->next);
 			break;
@@ -696,7 +1006,7 @@ static int dmabuf_imp_release(struct gntdev_dmabuf_priv *priv, u32 fd)
 	struct dma_buf_attachment *attach;
 	struct dma_buf *dma_buf;
 
-	gntdev_dmabuf = dmabuf_imp_find_unlink(priv, fd);
+	gntdev_dmabuf = dmabuf_list_find_unlink(priv, &priv->imp_list, fd);
 	if (IS_ERR(gntdev_dmabuf))
 		return PTR_ERR(gntdev_dmabuf);
 
@@ -726,6 +1036,21 @@ static void dmabuf_imp_release_all(struct gntdev_dmabuf_priv *priv)
 		dmabuf_imp_release(priv, gntdev_dmabuf->fd);
 }
 
+static void dmabuf_map_release_all(struct gntdev_dmabuf_priv *priv)
+{
+	struct gntdev_dmabuf *q, *gntdev_dmabuf;
+	struct gntdev_dmabuf_wait_obj *o, *obj;
+
+	list_for_each_entry_safe(obj, o, &priv->map_wait_list, next) {
+		dmabuf_exp_wait_obj_free(priv, obj);
+	}
+
+	list_for_each_entry_safe(gntdev_dmabuf, q, &priv->map_list, next) {
+		dmabuf_map_release(gntdev_dmabuf, true);
+	}
+
+}
+
 /* DMA buffer IOCTL support. */
 
 long gntdev_ioctl_dmabuf_exp_from_refs(struct gntdev_priv *priv, int use_ptemod,
@@ -769,6 +1094,47 @@ long gntdev_ioctl_dmabuf_exp_from_refs(struct gntdev_priv *priv, int use_ptemod,
 	return ret;
 }
 
+long gntdev_ioctl_dmabuf_map_refs_to_buf(struct gntdev_priv *priv, int use_ptemod,
+					  struct ioctl_gntdev_dmabuf_map_refs_to_buf __user *u)
+{
+	struct ioctl_gntdev_dmabuf_map_refs_to_buf op;
+	u32 *refs;
+	long ret;
+
+	if (use_ptemod) {
+		pr_debug("Cannot provide dma-buf: use_ptemode %d\n",
+			 use_ptemod);
+		return -EINVAL;
+	}
+
+	if (copy_from_user(&op, u, sizeof(op)) != 0)
+		return -EFAULT;
+
+	if (op.count <= 0)
+		return -EINVAL;
+
+	refs = kcalloc(op.count, sizeof(*refs), GFP_KERNEL);
+	if (!refs)
+		return -ENOMEM;
+
+	if (copy_from_user(refs, u->refs, sizeof(*refs) * op.count) != 0) {
+		ret = -EFAULT;
+		goto out;
+	}
+
+	ret = dmabuf_map_refs_to_fd(priv, op.flags, op.count,
+				   op.domid, refs, op.fd, op.data_ofs);
+	if (ret)
+		goto out;
+
+	if (copy_to_user(u, &op, sizeof(op)) != 0)
+		ret = -EFAULT;
+
+out:
+	kfree(refs);
+	return ret;
+}
+
 long gntdev_ioctl_dmabuf_exp_wait_released(struct gntdev_priv *priv,
 					   struct ioctl_gntdev_dmabuf_exp_wait_released __user *u)
 {
@@ -823,6 +1189,45 @@ long gntdev_ioctl_dmabuf_imp_release(struct gntdev_priv *priv,
 	return dmabuf_imp_release(priv->dmabuf_priv, op.fd);
 }
 
+long gntdev_ioctl_dmabuf_map_release(struct gntdev_priv *priv,
+				     struct ioctl_gntdev_dmabuf_map_release __user *u)
+{
+	struct ioctl_gntdev_dmabuf_map_release op;
+	struct gntdev_dmabuf *gntdev_dmabuf;
+
+	if (copy_from_user(&op, u, sizeof(op)) != 0)
+		return -EFAULT;
+
+	gntdev_dmabuf = dmabuf_list_find_unlink(priv->dmabuf_priv,
+			&priv->dmabuf_priv->map_list, op.fd);
+	if (IS_ERR(gntdev_dmabuf))
+		return PTR_ERR(gntdev_dmabuf);
+
+	return dmabuf_map_release(gntdev_dmabuf, false);
+}
+
+long gntdev_ioctl_dmabuf_map_wait_released(struct gntdev_priv *priv,
+				     struct ioctl_gntdev_dmabuf_map_wait_released __user *u)
+{
+	struct ioctl_gntdev_dmabuf_map_wait_released op;
+	struct gntdev_dmabuf_wait_obj *obj;
+	int ret = 0;
+
+	if (copy_from_user(&op, u, sizeof(op)) != 0)
+		return -EFAULT;
+
+	obj = dmabuf_map_wait_obj_find(priv->dmabuf_priv, op.fd);
+	if (IS_ERR_OR_NULL(obj))
+		return (PTR_ERR(obj) == -ENOENT) ? 0 : PTR_ERR(obj);
+
+	if (!completion_done(&obj->completion))
+		ret = dmabuf_exp_wait_obj_wait(obj, op.wait_to_ms);
+
+	if (!ret && ret != -ETIMEDOUT)
+		dmabuf_exp_wait_obj_free(priv->dmabuf_priv, obj);
+	return ret;
+}
+
 struct gntdev_dmabuf_priv *gntdev_dmabuf_init(struct file *filp)
 {
 	struct gntdev_dmabuf_priv *priv;
@@ -835,6 +1240,8 @@ struct gntdev_dmabuf_priv *gntdev_dmabuf_init(struct file *filp)
 	INIT_LIST_HEAD(&priv->exp_list);
 	INIT_LIST_HEAD(&priv->exp_wait_list);
 	INIT_LIST_HEAD(&priv->imp_list);
+	INIT_LIST_HEAD(&priv->map_list);
+	INIT_LIST_HEAD(&priv->map_wait_list);
 
 	priv->filp = filp;
 
@@ -844,5 +1251,6 @@ struct gntdev_dmabuf_priv *gntdev_dmabuf_init(struct file *filp)
 void gntdev_dmabuf_fini(struct gntdev_dmabuf_priv *priv)
 {
 	dmabuf_imp_release_all(priv);
+	dmabuf_map_release_all(priv);
 	kfree(priv);
 }
diff --git a/drivers/xen/gntdev-dmabuf.h b/drivers/xen/gntdev-dmabuf.h
index 3d9b9cf9d5a1..07301f12ac52 100644
--- a/drivers/xen/gntdev-dmabuf.h
+++ b/drivers/xen/gntdev-dmabuf.h
@@ -21,6 +21,9 @@ void gntdev_dmabuf_fini(struct gntdev_dmabuf_priv *priv);
 long gntdev_ioctl_dmabuf_exp_from_refs(struct gntdev_priv *priv, int use_ptemod,
 				       struct ioctl_gntdev_dmabuf_exp_from_refs __user *u);
 
+long gntdev_ioctl_dmabuf_map_refs_to_buf(struct gntdev_priv *priv, int use_ptemod,
+					   struct ioctl_gntdev_dmabuf_map_refs_to_buf __user *u);
+
 long gntdev_ioctl_dmabuf_exp_wait_released(struct gntdev_priv *priv,
 					   struct ioctl_gntdev_dmabuf_exp_wait_released __user *u);
 
@@ -30,4 +33,8 @@ long gntdev_ioctl_dmabuf_imp_to_refs(struct gntdev_priv *priv,
 long gntdev_ioctl_dmabuf_imp_release(struct gntdev_priv *priv,
 				     struct ioctl_gntdev_dmabuf_imp_release __user *u);
 
+long gntdev_ioctl_dmabuf_map_release(struct gntdev_priv *priv,
+				     struct ioctl_gntdev_dmabuf_map_release __user *u);
+long gntdev_ioctl_dmabuf_map_wait_released(struct gntdev_priv *priv,
+				     struct ioctl_gntdev_dmabuf_map_wait_released __user *u);
 #endif
diff --git a/drivers/xen/gntdev.c b/drivers/xen/gntdev.c
index 4d9a3050de6a..677a51244bb2 100644
--- a/drivers/xen/gntdev.c
+++ b/drivers/xen/gntdev.c
@@ -22,6 +22,7 @@
 
 #define pr_fmt(fmt) "xen:" KBUILD_MODNAME ": " fmt
 
+#include <linux/dma-buf.h>
 #include <linux/dma-mapping.h>
 #include <linux/module.h>
 #include <linux/kernel.h>
@@ -43,6 +44,7 @@
 #include <xen/gntdev.h>
 #include <xen/events.h>
 #include <xen/page.h>
+#include <xen/mem-reservation.h>
 #include <asm/xen/hypervisor.h>
 #include <asm/xen/hypercall.h>
 
@@ -96,7 +98,11 @@ static void gntdev_free_map(struct gntdev_grant_map *map)
 		return;
 
 #ifdef CONFIG_XEN_GRANT_DMA_ALLOC
-	if (map->dma_vaddr) {
+	if (map->pages && map->preserve_pages) {
+		gnttab_dma_clean_page_reservation(map->count, map->pages,
+				map->frames);
+
+	} else if (map->dma_vaddr) {
 		struct gnttab_dma_alloc_args args;
 
 		args.dev = map->dma_dev;
@@ -216,6 +222,82 @@ struct gntdev_grant_map *gntdev_alloc_map(struct gntdev_priv *priv, int count,
 	return NULL;
 }
 
+struct gntdev_grant_map *gntdev_get_alloc_from_fd(struct gntdev_priv *priv,
+					  struct sg_table *sgt, int count, int dma_flags)
+{
+	struct gntdev_grant_map *add;
+	int i = 0;
+	struct sg_page_iter sg_iter;
+
+	add = kzalloc(sizeof(*add), GFP_KERNEL);
+	if (!add)
+		return NULL;
+
+	add->grants    = kvcalloc(count, sizeof(add->grants[0]), GFP_KERNEL);
+	add->map_ops   = kvcalloc(count, sizeof(add->map_ops[0]), GFP_KERNEL);
+	add->unmap_ops = kvcalloc(count, sizeof(add->unmap_ops[0]), GFP_KERNEL);
+	add->pages     = kvcalloc(count, sizeof(add->pages[0]), GFP_KERNEL);
+	add->frames    = kvcalloc(count, sizeof(add->frames[0]),
+			       GFP_KERNEL);
+	add->being_removed =
+		kvcalloc(count, sizeof(add->being_removed[0]), GFP_KERNEL);
+	add->preserve_pages = 1;
+
+	if (add->grants == NULL    ||
+		add->map_ops == NULL   ||
+		add->unmap_ops == NULL ||
+		add->pages == NULL     ||
+		add->frames == NULL    ||
+		add->being_removed == NULL)
+		goto err;
+
+	if (use_ptemod) {
+		add->kmap_ops   = kvmalloc_array(count, sizeof(add->kmap_ops[0]),
+						 GFP_KERNEL);
+		add->kunmap_ops = kvmalloc_array(count, sizeof(add->kunmap_ops[0]),
+						 GFP_KERNEL);
+		if (NULL == add->kmap_ops || NULL == add->kunmap_ops)
+			goto err;
+	}
+
+	for_each_sgtable_page(sgt, &sg_iter, 0) {
+		struct page *page = sg_page_iter_page(&sg_iter);
+
+		add->pages[i] = page;
+		add->frames[i] = xen_page_to_gfn(page);
+		i++;
+		if (i >= count)
+			break;
+	}
+
+	if (i < count) {
+		pr_debug("Provided buffer is too small");
+		goto err;
+	}
+
+	if (gnttab_dma_reserve_pages(count, add->pages, add->frames))
+		goto err;
+
+	for (i = 0; i < count; i++) {
+		add->map_ops[i].handle = -1;
+		add->unmap_ops[i].handle = -1;
+		if (use_ptemod) {
+			add->kmap_ops[i].handle = -1;
+			add->kunmap_ops[i].handle = -1;
+		}
+	}
+
+	add->index = 0;
+	add->count = count;
+	refcount_set(&add->users, 1);
+
+	return add;
+
+err:
+	gntdev_free_map(add);
+	return NULL;
+}
+
 void gntdev_add_map(struct gntdev_priv *priv, struct gntdev_grant_map *add)
 {
 	struct gntdev_grant_map *map;
@@ -610,6 +692,9 @@ static int gntdev_release(struct inode *inode, struct file *flip)
 	struct gntdev_grant_map *map;
 
 	pr_debug("priv %p\n", priv);
+#ifdef CONFIG_XEN_GNTDEV_DMABUF
+	gntdev_dmabuf_fini(priv->dmabuf_priv);
+#endif
 
 	mutex_lock(&priv->lock);
 	while (!list_empty(&priv->maps)) {
@@ -620,10 +705,6 @@ static int gntdev_release(struct inode *inode, struct file *flip)
 	}
 	mutex_unlock(&priv->lock);
 
-#ifdef CONFIG_XEN_GNTDEV_DMABUF
-	gntdev_dmabuf_fini(priv->dmabuf_priv);
-#endif
-
 	kfree(priv);
 	return 0;
 }
@@ -1020,6 +1101,16 @@ static long gntdev_ioctl(struct file *flip,
 
 	case IOCTL_GNTDEV_DMABUF_IMP_RELEASE:
 		return gntdev_ioctl_dmabuf_imp_release(priv, ptr);
+
+	case IOCTL_GNTDEV_DMABUF_MAP_REFS_TO_BUF:
+		return gntdev_ioctl_dmabuf_map_refs_to_buf(priv, use_ptemod, ptr);
+
+	case IOCTL_GNTDEV_DMABUF_MAP_RELEASE:
+		return gntdev_ioctl_dmabuf_map_release(priv, ptr);
+
+	case IOCTL_GNTDEV_DMABUF_MAP_WAIT_RELEASED:
+		return gntdev_ioctl_dmabuf_map_wait_released(priv, ptr);
+
 #endif
 
 	default:
diff --git a/drivers/xen/grant-table.c b/drivers/xen/grant-table.c
index d6576c8b6f0f..257e335bc65b 100644
--- a/drivers/xen/grant-table.c
+++ b/drivers/xen/grant-table.c
@@ -1036,6 +1036,40 @@ void gnttab_free_pages(int nr_pages, struct page **pages)
 }
 EXPORT_SYMBOL_GPL(gnttab_free_pages);
 
+int gnttab_dma_reserve_pages(int nr_pages, struct page **pages,
+		    xen_pfn_t *frames)
+{
+	int ret, i;
+
+	for (i = 0; i < nr_pages; i++)
+		xenmem_reservation_scrub_page(pages[i]);
+
+	xenmem_reservation_va_mapping_reset(nr_pages, pages);
+
+	ret = xenmem_reservation_decrease(nr_pages, frames);
+	if (ret != nr_pages)
+		return ret;
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(gnttab_dma_reserve_pages);
+
+int gnttab_dma_clean_page_reservation(int nr_pages, struct page **pages,
+		    xen_pfn_t *frames)
+{
+	int ret;
+
+	ret = xenmem_reservation_increase(nr_pages, frames);
+	if (ret != nr_pages) {
+		pr_debug("Failed to increase reservation for DMA buffer\n");
+		return -EFAULT;
+	}
+
+	xenmem_reservation_va_mapping_update(nr_pages, pages, frames);
+	return 0;
+}
+EXPORT_SYMBOL_GPL(gnttab_dma_clean_page_reservation);
+
 #ifdef CONFIG_XEN_GRANT_DMA_ALLOC
 /**
  * gnttab_dma_alloc_pages - alloc DMAable pages suitable for grant mapping into
@@ -1071,17 +1105,11 @@ int gnttab_dma_alloc_pages(struct gnttab_dma_alloc_args *args)
 
 		args->pages[i] = page;
 		args->frames[i] = xen_page_to_gfn(page);
-		xenmem_reservation_scrub_page(page);
 	}
 
-	xenmem_reservation_va_mapping_reset(args->nr_pages, args->pages);
-
-	ret = xenmem_reservation_decrease(args->nr_pages, args->frames);
-	if (ret != args->nr_pages) {
-		pr_debug("Failed to decrease reservation for DMA buffer\n");
-		ret = -EFAULT;
+	ret = gnttab_dma_reserve_pages(args->nr_pages, args->pages, args->frames);
+	if (ret)
 		goto fail;
-	}
 
 	ret = gnttab_pages_set_private(args->nr_pages, args->pages);
 	if (ret < 0)
@@ -1109,17 +1137,8 @@ int gnttab_dma_free_pages(struct gnttab_dma_alloc_args *args)
 	for (i = 0; i < args->nr_pages; i++)
 		args->frames[i] = page_to_xen_pfn(args->pages[i]);
 
-	ret = xenmem_reservation_increase(args->nr_pages, args->frames);
-	if (ret != args->nr_pages) {
-		pr_debug("Failed to increase reservation for DMA buffer\n");
-		ret = -EFAULT;
-	} else {
-		ret = 0;
-	}
-
-	xenmem_reservation_va_mapping_update(args->nr_pages, args->pages,
-					     args->frames);
-
+	ret = gnttab_dma_clean_page_reservation(args->nr_pages, args->pages,
+			  args->frames);
 	size = args->nr_pages << PAGE_SHIFT;
 	if (args->coherent)
 		dma_free_coherent(args->dev, size,
diff --git a/include/uapi/xen/gntdev.h b/include/uapi/xen/gntdev.h
index 7a7145395c09..cadc7fd9bc9c 100644
--- a/include/uapi/xen/gntdev.h
+++ b/include/uapi/xen/gntdev.h
@@ -312,4 +312,66 @@ struct ioctl_gntdev_dmabuf_imp_release {
 	__u32 reserved;
 };
 
+/*
+ * Fd mapping ioctls allows to map @fd to @refs.
+ *
+ * Allows gntdev to map scatter-gather table to the existing dma-buf
+ * file destriptor. It provides the same functionality as
+ * DMABUF_EXP_FROM_REFS_V2 ioctls,
+ * but maps sc table on top of the existing buffer memory, instead of
+ * allocting memory. This is useful when exporter should work with external
+ * buffer.
+ */
+
+#define IOCTL_GNTDEV_DMABUF_MAP_REFS_TO_BUF \
+	_IOC(_IOC_NONE, 'G', 15, \
+	  sizeof(struct ioctl_gntdev_dmabuf_map_refs_to_buf))
+struct ioctl_gntdev_dmabuf_map_refs_to_buf {
+	/* IN parameters. */
+	/* Specific options for this dma-buf: see GNTDEV_DMA_FLAG_XXX. */
+	__u32 flags;
+	/* Number of grant references in @refs array. */
+	__u32 count;
+	/* Offset of the data in the dma-buf. */
+	__u32 data_ofs;
+	/* File descriptor of the dma-buf. */
+	__u32 fd;
+	/* The domain ID of the grant references to be mapped. */
+	__u32 domid;
+	/* Variable IN parameter. */
+	/* Array of grant references of size @count. */
+	__u32 refs[1];
+};
+
+/*
+ * This will release gntdev attachment to the provided buffer with file
+ * descriptor @fd, so it can be released by the owner. This is only valid
+ * for buffers created with IOCTL_GNTDEV_DMABUF_EXP_REFS_TO_BUF.
+ * Returns 0 on success, -ETIME when waiting dma_buffer fences to clean
+ * reached timeout. In this case release call should be repeated after
+ * releasing dma_buffer fences.
+ */
+#define IOCTL_GNTDEV_DMABUF_MAP_RELEASE \
+	_IOC(_IOC_NONE, 'G', 16, \
+	     sizeof(struct ioctl_gntdev_dmabuf_map_release))
+struct ioctl_gntdev_dmabuf_map_release {
+	/* IN parameters */
+	__u32 fd;
+	__u32 reserved;
+};
+
+/*
+ * This will wait until gntdev release procedure is finished and buffer was
+ * released completely. This is only valid for buffers created with
+ * IOCTL_GNTDEV_DMABUF_EXP_REFS_TO_BUF.
+ */
+#define IOCTL_GNTDEV_DMABUF_MAP_WAIT_RELEASED \
+	_IOC(_IOC_NONE, 'G', 17, \
+	     sizeof(struct ioctl_gntdev_dmabuf_map_wait_released))
+struct ioctl_gntdev_dmabuf_map_wait_released {
+	/* IN parameters */
+	__u32 fd;
+	__u32 wait_to_ms;
+};
+
 #endif /* __LINUX_PUBLIC_GNTDEV_H__ */
diff --git a/include/xen/grant_table.h b/include/xen/grant_table.h
index 8e220edf44ab..73b473474ac9 100644
--- a/include/xen/grant_table.h
+++ b/include/xen/grant_table.h
@@ -250,6 +250,11 @@ int gnttab_dma_alloc_pages(struct gnttab_dma_alloc_args *args);
 int gnttab_dma_free_pages(struct gnttab_dma_alloc_args *args);
 #endif
 
+int gnttab_dma_reserve_pages(int nr_pages, struct page **pages,
+		    xen_pfn_t *frames);
+int gnttab_dma_clean_page_reservation(int nr_pages, struct page **pages,
+		    xen_pfn_t *frames);
+
 int gnttab_pages_set_private(int nr_pages, struct page **pages);
 void gnttab_pages_clear_private(int nr_pages, struct page **pages);
 
-- 
2.25.1
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
