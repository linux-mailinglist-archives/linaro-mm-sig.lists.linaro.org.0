Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 42D3960C358
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 25 Oct 2022 07:37:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4D5653EA23
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 25 Oct 2022 05:37:23 +0000 (UTC)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2059.outbound.protection.outlook.com [40.107.93.59])
	by lists.linaro.org (Postfix) with ESMTPS id 9D7E53EF14
	for <linaro-mm-sig@lists.linaro.org>; Fri, 30 Sep 2022 08:49:20 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EVEfsjqoOPzU3owzbYHFF8blvT7ZSy6QyJULLFLuE5Aeulw9ho9AEpMTf+OhfnVHqlVilfTF/Dp9NLrHbJSntu708Pr4+EIii/3o7sFsJ/OrSazrDLbXJpWS56B+hbp1cQkR+R9NU6J0bBl71HvfikmsNFfjijjnFG0AVmeNk3KtXO57S/wkDTXXsNQpPHxZVxX37/uQJ93mwMLi+ln8l7zA3RGyko4Ac4wWbnAL2j9rnihFiNy+rPFoO2HichJFm16uGjjojS0fWz6f0ziGpkoYEXm20oG101X1gJB9p5gZQMqUX/UUlBIqyAa4NnlIhbv8CKSSjaox7hpUojkhBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yB9BvnlLKxUMSN4iXjoR20WwGrLOdTsJXiF4BiMNHRc=;
 b=AzAM7T5ccItzHC3X0oIhTuhHlhATGyGQxqPacPnoyTleUYUIaWy9E6p7ZBsbE5769EJvL+0MjWvNtIw2yL7/Z7iA+HJkNbFoVSod+Ksw8MXB37c9iLzZt57ABcdZpi9gQWaR6hhySThIAXx9QgajhoRJEs6EO7P4aSywDBDPLaEa8HYX9WdpN6CCtr/LFxnkj7vPspnm2vZooAFJbv+7RzwuxJHtUEIV3HNbtelpxu9QU8W2lKZ+N9Yve56xh+BDwMveyszv6FUzpOiRB2CKv9JIq1uLggWsDmYjEhfsfEoYRKW+dXxBYP+IbLoqoW3lr8mytxgo+Gln7AnJY0H8Qw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=linaro.org smtp.mailfrom=amd.com; dmarc=pass
 (p=quarantine sp=quarantine pct=100) action=none header.from=amd.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yB9BvnlLKxUMSN4iXjoR20WwGrLOdTsJXiF4BiMNHRc=;
 b=alWsUWfArYG1TZXIgpPUNxT5RYoY4myUJ3NuA7JXgkOX8xtXQ+q9c2IcbHnTMBOOcmKGPS5/kjZ+yhE1T0HoGCz9chXT9BhiDKYlk+au7MUkqV1E8eM94qzzurSHeoCfeW2HXdgzhyQGgJM9W6mwXk4UVfsVDjskrkQtZWBzAXw=
Received: from MW2PR2101CA0027.namprd21.prod.outlook.com (2603:10b6:302:1::40)
 by SJ1PR12MB6217.namprd12.prod.outlook.com (2603:10b6:a03:458::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.17; Fri, 30 Sep
 2022 08:49:18 +0000
Received: from CO1NAM11FT081.eop-nam11.prod.protection.outlook.com
 (2603:10b6:302:1:cafe::82) by MW2PR2101CA0027.outlook.office365.com
 (2603:10b6:302:1::40) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5709.0 via Frontend
 Transport; Fri, 30 Sep 2022 08:49:18 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=SATLEXMB04.amd.com; pr=C
Received: from SATLEXMB04.amd.com (165.204.84.17) by
 CO1NAM11FT081.mail.protection.outlook.com (10.13.174.80) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.5676.17 via Frontend Transport; Fri, 30 Sep 2022 08:49:17 +0000
Received: from amd.amd.com (10.180.168.240) by SATLEXMB04.amd.com
 (10.181.40.145) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Fri, 30 Sep
 2022 03:49:12 -0500
From: Arvind Yadav <Arvind.Yadav@amd.com>
To: <Christian.Koenig@amd.com>, <andrey.grodzovsky@amd.com>,
	<shashank.sharma@amd.com>, <amaranath.somalapuram@amd.com>,
	<Arunpravin.PaneerSelvam@amd.com>, <sumit.semwal@linaro.org>,
	<gustavo@padovan.org>, <airlied@linux.ie>, <daniel@ffwll.ch>,
	<linux-media@vger.kernel.org>, <dri-devel@lists.freedesktop.org>,
	<linaro-mm-sig@lists.linaro.org>, <linux-kernel@vger.kernel.org>,
	<steven.price@arm.com>
Date: Fri, 30 Sep 2022 14:18:10 +0530
Message-ID: <20220930084810.4639-1-Arvind.Yadav@amd.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Originating-IP: [10.180.168.240]
X-ClientProxiedBy: SATLEXMB04.amd.com (10.181.40.145) To SATLEXMB04.amd.com
 (10.181.40.145)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1NAM11FT081:EE_|SJ1PR12MB6217:EE_
X-MS-Office365-Filtering-Correlation-Id: dde1680a-5008-4adf-f94b-08daa2c0a91b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	fsBjAtrLjLvdaQndsx++oPHV9DUzllXkBnp+w5vVszyzKCADwAOomP5OVaRbjs6YJz6h97NV56Q9Qe3/3YWbgMX7bZVuF0Fw5xqrNCIOiLR+fpwh8EeERj9BEymO112VGYU2nSMcypFqkOHhzxi4xNaTQ5tMvF1ixJE2dDYbF+j6Rv9jiyUr/fgHTmy48V73zJ4TRhHE/ub8Y8sB0CSwzRhRulakLrOXUWasRqeKQQavVhV3YL16xOf71MclLPqPOyannIT3ISbyEZ8rEhFMHzW7GA8gpHcr7bIIgIw7+FwAkoLjvh2JKGxjfhK5YbVRhwCxJNYY6VS51oeo5/nAwE6ZZIOAYbzXB91OINIJPFzbmaZl0xFUqNFmQvc76rqo/lFJsUDrdeVoPcZuOBbdt+MGlawuWGHiPJZx5BpfzlhZBr1hLUgj5jz6kbhVHha4uWLw6ru02wvc0FQtdmZTDyR7AkpcGcvQO+l6goX3QFKBrDVz6nozSt3b3xfhiv38P31Tpmrnbfn+opHf9V+18ZiNgQLP1WmABxUwW7pup290ECdNgV9zBJ87+VpgEVzCa3QquByw/y+rZVbUzxLtdhZwhsBEwYqbg2CwH6QQi3kH4JEAvUH73gP2425aJp1q9Dr4omhz5Pe6fcmplfAbaqmofTzoczJmEvg/s6IBXMINmGr21WiVskiCBmdCFSAbHGAKraLLJ52dBg43lTDSrUa0PrLuW4i3d9NRGdVseA7LUo26vfo5J/Vj+vgbV/tUZ2IrC3Y7jkUusz6t8Fig2b/EZx/uzkCKqiIVe8jTE5tmZlC+Hw/zDpdNuUc8DcTl3blqR6z5uP0IgUoupQXcfNs1XISwOW4zeqcJ1oB/TlM=
X-Forefront-Antispam-Report: 
	CIP:165.204.84.17;CTRY:US;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:SATLEXMB04.amd.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230022)(4636009)(136003)(376002)(346002)(396003)(39860400002)(451199015)(36840700001)(40470700004)(46966006)(16526019)(7696005)(316002)(478600001)(83380400001)(40460700003)(2906002)(82310400005)(336012)(47076005)(426003)(186003)(1076003)(8936002)(40480700001)(70206006)(2616005)(41300700001)(8676002)(70586007)(110136005)(26005)(4326008)(5660300002)(356005)(921005)(86362001)(82740400003)(36860700001)(36756003)(81166007)(83996005)(2101003)(36900700001);DIR:OUT;SFP:1101;
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Sep 2022 08:49:17.9074
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: dde1680a-5008-4adf-f94b-08daa2c0a91b
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d;Ip=[165.204.84.17];Helo=[SATLEXMB04.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	CO1NAM11FT081.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR12MB6217
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: ------
X-Rspamd-Queue-Id: 9D7E53EF14
X-Spamd-Result: default: False [-6.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	RCVD_IN_DNSWL_HI(-1.50)[2603:10b6:302:1:cafe::82:received,40.107.93.59:from,2603:10b6:302:1::40:received];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.93.59:from];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_EQ_ENVFROM(0.00)[];
	URIBL_BLOCKED(0.00)[amd.com:email,amd.com:dkim];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.989];
	HAS_XOIP(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	DKIM_TRACE(0.00)[amd.com:+]
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=alWsUWfA;
	spf=pass (lists.linaro.org: domain of Arvind.Yadav@amd.com designates 40.107.93.59 as permitted sender) smtp.mailfrom=Arvind.Yadav@amd.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1");
	dmarc=pass (policy=quarantine) header.from=amd.com
X-MailFrom: Arvind.Yadav@amd.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 6SFYYUJK7L3S4EF2LSO34AC7BMJF6D35
X-Message-ID-Hash: 6SFYYUJK7L3S4EF2LSO34AC7BMJF6D35
X-Mailman-Approved-At: Tue, 25 Oct 2022 05:32:24 +0000
CC: Arvind Yadav <Arvind.Yadav@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] drm/sched: Fix kernel NULL pointer dereference error
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6SFYYUJK7L3S4EF2LSO34AC7BMJF6D35/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

BUG: kernel NULL pointer dereference, address: 0000000000000088
 #PF: supervisor read access in kernel mode
 #PF: error_code(0x0000) - not-present page
 PGD 0 P4D 0
 Oops: 0000 [#1] PREEMPT SMP NOPTI
 CPU: 2 PID: 0 Comm: swapper/2 Not tainted 6.0.0-rc2-custom #1
 Arvind : [dma_fence_default_wait _START] timeout = -1
 Hardware name: AMD Dibbler/Dibbler, BIOS RDB1107CC 09/26/2018
 RIP: 0010:drm_sched_job_done.isra.0+0x11/0x140 [gpu_sched]
 Code: 8b fe ff ff be 03 00 00 00 e8 7b da b7 e3 e9 d4 fe ff ff 66 0f 1f 44 00 00 0f 1f 44 00 00 55 48 89 e5 41 55 41 54 49 89 fc 53 <48> 8b 9f 88 00 00 00 f0 ff 8b f0 00 00 00 48 8b 83 80 01 00 00 f0
 RSP: 0018:ffffb1b1801d4d38 EFLAGS: 00010087
 RAX: ffffffffc0aa48b0 RBX: ffffb1b1801d4d70 RCX: 0000000000000018
 RDX: 000036c70afb7c1d RSI: ffff8a45ca413c60 RDI: 0000000000000000
 RBP: ffffb1b1801d4d50 R08: 00000000000000b5 R09: 0000000000000000
 R10: 0000000000000000 R11: 0000000000000000 R12: 0000000000000000
 R13: ffffb1b1801d4d70 R14: ffff8a45c4160000 R15: ffff8a45c416a708
 FS:  0000000000000000(0000) GS:ffff8a48a0a80000(0000) knlGS:0000000000000000
 CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
 CR2: 0000000000000088 CR3: 000000014ad50000 CR4: 00000000003506e0
 Call Trace:
  <IRQ>
  drm_sched_job_done_cb+0x12/0x20 [gpu_sched]
  dma_fence_signal_timestamp_locked+0x7e/0x110
  dma_fence_signal+0x31/0x60
  amdgpu_fence_process+0xc4/0x140 [amdgpu]
  gfx_v9_0_eop_irq+0x9d/0xd0 [amdgpu]
  amdgpu_irq_dispatch+0xb7/0x210 [amdgpu]
  amdgpu_ih_process+0x86/0x100 [amdgpu]
  amdgpu_irq_handler+0x24/0x60 [amdgpu]
  __handle_irq_event_percpu+0x4b/0x190
  handle_irq_event_percpu+0x15/0x50
  handle_irq_event+0x39/0x60
  handle_edge_irq+0xaf/0x210
  __common_interrupt+0x6e/0x110
  common_interrupt+0xc1/0xe0
  </IRQ>
  <TASK>

Signed-off-by: Arvind Yadav <Arvind.Yadav@amd.com>
---
 drivers/gpu/drm/scheduler/sched_main.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/scheduler/sched_main.c b/drivers/gpu/drm/scheduler/sched_main.c
index 6684d88463b4..390272f6b126 100644
--- a/drivers/gpu/drm/scheduler/sched_main.c
+++ b/drivers/gpu/drm/scheduler/sched_main.c
@@ -172,7 +172,12 @@ drm_sched_rq_select_entity(struct drm_sched_rq *rq)
 static void drm_sched_job_done(struct drm_sched_job *s_job)
 {
 	struct drm_sched_fence *s_fence = s_job->s_fence;
-	struct drm_gpu_scheduler *sched = s_fence->sched;
+	struct drm_gpu_scheduler *sched;
+
+	if (!s_fence)
+		return;
+
+	sched = s_fence->sched;
 
 	atomic_dec(&sched->hw_rq_count);
 	atomic_dec(sched->score);
-- 
2.25.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
